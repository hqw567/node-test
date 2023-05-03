const fileService = require('../service/file.service')
const userService = require('../service/user.service')
const userController = require('./user.controller')

class FileController {
  async avatar(ctx) {
    console.log(ctx.request.file)
    const { filename, mimetype, size, originalname } = ctx.request.file
    const { id: userId } = ctx.user
    console.log(filename)
    const result = await fileService.avatar({
      filename,
      mimetype,
      size,
      userId,
    })
    const avatarUrl = `/users/avatar/${userId}`
    const result2 = await userService.updateUserAvatar({ avatarUrl, userId })
    ctx.body = {
      code: 0,
      message: `${originalname} 头像上传成功`,
      data: result,
    }
  }
}

module.exports = new FileController()
