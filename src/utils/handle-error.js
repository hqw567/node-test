const app = require('../app')
const {
  NAME_IS_ALREADY_EXISTS,
  NAME_OR_PASSWORD_IS_REQUIRED,
  NAME_IS_NOT_EXISTS,
  PASSWORD_IS_INCORRECT,
  UN_AUTHORIZATION,
  OPERATION_IS_NOT_ALLOWED,
} = require('../config/error-constants')

app.on('error', (error, ctx) => {
  let code = 0
  let message = ''
  switch (error) {
    case NAME_OR_PASSWORD_IS_REQUIRED:
      code = -1001
      message = '用户名或者密码不能为空'
      break
    case NAME_IS_ALREADY_EXISTS:
      code = -1002
      message = '用户名已存在'
      break
    case NAME_IS_NOT_EXISTS:
      code = -1003
      message = '用户名错误'
      break
    case PASSWORD_IS_INCORRECT:
      code = -1004
      message = '密码错误'
      break
    case UN_AUTHORIZATION:
      code = -1005
      message = '无效的token或者token已经过期'
      break
    case OPERATION_IS_NOT_ALLOWED:
      code = -2001
      message = '没有操作权限'
      break
    default:
      code = -9999
      message = '错误的请求'
  }

  ctx.body = {
    code,
    message,
  }
})
