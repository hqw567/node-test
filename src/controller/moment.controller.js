const momentService = require('../service/moment.service')
const { SERVER_HOST, SERVER_PORT } = require('../config/server')
class MomentController {
  async create(ctx, next) {
    const { content } = ctx.request.body
    const { id } = ctx.user
    // const id = 3

    // console.log(content, id)
    const result = await momentService.create({ content, id })
    // const result = await userService.findUserByName('herway')
    // console.log(result)
    ctx.body = {
      code: 0,
      message: '新增动态成功',
      data: result,
    }

    // console.log(result)
  }
  async list(ctx, next) {
    const { offset = 0, size = 10 } = ctx.query

    try {
      const result = await momentService.queryList({ offset, size })
      result.map((item) => {
        if (item.user.avatar_url) {
          item.user.avatar_url = `${SERVER_HOST}:${SERVER_PORT}${item.user.avatar_url}`
        }
      })
      ctx.body = {
        code: 0,
        message: '查询动态成功',
        data: result,
      }
    } catch (error) {
      console.log(error)
    }
  }
  async detail(ctx, next) {
    const { momentId } = ctx.params
    try {
      const result = await momentService.queryById({ momentId })

      if (result[0].user.avatar_url) {
        result[0].user.avatar_url = `${SERVER_HOST}:${SERVER_PORT}${result[0].user?.avatar_url}`
      }
      result[0].comments.map((item) => {
        if (item.user.avatar_url) {
          item.user.avatar_url = `${SERVER_HOST}:${SERVER_PORT}${item.user.avatar_url}`
        }
      })

      ctx.body = {
        code: 0,
        message: '查询动态详情成功',
        data: result[0],
      }
    } catch (error) {
      console.log(error)
    }
  }
  async update(ctx, next) {
    const { momentId } = ctx.params
    const { content } = ctx.request.body
    try {
      const result = await momentService.update({ momentId, content })
      ctx.body = {
        code: 0,
        message: '修改动态成功',
        data: result,
      }
    } catch (error) {
      console.log(error)
    }
  }
  async remove(ctx, next) {
    const { momentId } = ctx.params
    try {
      const result = await momentService.remove({ momentId })
      ctx.body = {
        code: 0,
        message: '删除动态成功',
        data: result,
      }
    } catch (error) {
      console.log(error)
    }
  }
  async addLabels(ctx, next) {
    const { momentId } = ctx.params
    const { labels } = ctx
    console.log(labels)
    const results = []
    try {
      for (const label of labels) {
        const isExists = await momentService.hasLabel({
          momentId,
          labelId: label.id,
        })
        if (!isExists) {
          const result = await momentService.addLabel({
            momentId,
            labelId: label.id,
          })
          results.push(result)
        }
      }
      // const result = await momentService.remove({ momentId })
      ctx.body = {
        code: 0,
        message: '动态标签添加成功',
        data: results,
      }
    } catch (error) {
      console.log(error)
      ctx.body = {
        code: -3001,
        message: '动态标签添加失败',
        data: error,
      }
    }
  }
}

module.exports = new MomentController()
