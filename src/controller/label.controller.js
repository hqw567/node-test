const labelService = require('../service/label.service')

class LabelController {
  async create(ctx, next) {
    const { name } = ctx.request.body
    const result = await labelService.create({ name })
    ctx.body = {
      code: 0,
      message: '新增标签成功',
      data: result,
    }
  }
  async list(ctx, next) {
    const { offset = 0, size = 10 } = ctx.query
    console.log(offset, size)
    const result = await labelService.queryList({ offset, size })
    ctx.body = {
      code: 0,
      message: '获取标签列表成功',
      data: result,
    }
  }
}

module.exports = new LabelController()
