const {
  NAME_OR_PASSWORD_IS_REQUIRED,
  NAME_IS_ALREADY_EXISTS,
} = require('../config/error-constants')
const userService = require('../service/user.service')

const verifyUser = async (ctx, next) => {
  const { name, password } = ctx.request.body
  if (!name || !password) {
    // ctx.body = {
    //   code: -1001,
    //   message: '用户名或者密码不能为空',
    // }
    return ctx.app.emit('error', NAME_OR_PASSWORD_IS_REQUIRED, ctx)
  }

  const users = await userService.findUserByName(name)
  if (users.length) {
    // ctx.body = {
    //   code: -1002,
    //   message: '用户名已存在',
    // }
    return ctx.app.emit('error', NAME_IS_ALREADY_EXISTS, ctx)
  }
  await next()
}

module.exports = { verifyUser }
