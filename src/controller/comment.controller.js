const commentService = require('../service/comment.service')

class CommentController {
  async create(ctx, next) {
    const { content, momentId } = ctx.request.body
    const { id: userId } = ctx.user
    try {
      const result = await commentService.create({ content, momentId, userId })
      ctx.body = {
        code: 0,
        message: '评论成功',
        data: result,
      }
    } catch (error) {
      console.log(error)
    }
  }
  async reply(ctx, next) {
    const { content, momentId, commentId } = ctx.request.body
    const { id: userId } = ctx.user
    try {
      const result = await commentService.reply({
        content,
        momentId,
        userId,
        commentId,
      })
      ctx.body = {
        code: 0,
        message: '回复评论成功',
        data: result,
      }
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new CommentController()
