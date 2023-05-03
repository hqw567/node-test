const jwt = require('jsonwebtoken')
const { UN_AUTHORIZATION } = require('../config/error-constants')
const { private_key, public_key } = require('../config/secret')

class LoginController {
  async sign(ctx, next) {
    const { name, id } = ctx.user

    const token = jwt.sign({ id, name }, private_key, {
      expiresIn: '1d',
      algorithm: 'RS256',
    })
    ctx.body = {
      code: 0,
      message: '登录成功',
      data: {
        token,
        name,
        id,
      },
    }
  }
  async text(ctx, next) {
    const authorization = ctx.headers?.authorization
    const token = authorization?.replace('Bearer ', '')
    if (!token) {
      return ctx.app.emit('error', UN_AUTHORIZATION, ctx)
    }
    jwt.verify(
      token,
      public_key,
      { algorithms: ['RS256'] },
      async (err, decoded) => {
        if (err) {
          console.error('JWT 验证失败:', err)
          return ctx.app.emit('error', UN_AUTHORIZATION, ctx)
        } else {
          console.log('JWT 验证通过:', decoded)
          // ctx.body = {
          //   code: 0,
          //   message: '验证通过',
          //   data: {
          //     name: decoded.name,
          //     id: decoded.id,
          //   },
          // }
          await next()
        }
      }
    )
  }
}

module.exports = new LoginController()
