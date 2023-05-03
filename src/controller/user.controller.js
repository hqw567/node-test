const fileService = require('../service/file.service')
const userService = require('../service/user.service')
const { bcryptHash } = require('../utils/bcrypt-password')
const fs = require('fs')
const { UPLOAD_PATH } = require('../config/path')
class UserController {
  async create(ctx, next) {
    const { name, password } = ctx.request.body
    const result = await userService.create({
      name,
      password: bcryptHash(password),
    })
    ctx.body = {
      code: 0,
      message: '创建用户成功~',
      data: {
        name,
        result,
      },
    }
  }
  async showAvatarImage(ctx, next) {
    const { userId } = ctx.params
    try {
      const avatarInfo = await fileService.queryAvatarWithUserId({ userId })
      const { filename, mimetype } = avatarInfo
      console.log(filename, mimetype)
      ctx.type = mimetype
      ctx.body = fs.createReadStream(`${UPLOAD_PATH}/${filename}`)
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new UserController()
