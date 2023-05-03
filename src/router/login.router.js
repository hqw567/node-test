const KoaRouter = require('@koa/router')
const LoginController = require('../controller/login.controller')
const { verifyLogin, verifyAuth } = require('../middleware/login.middleware')

const loginRouter = new KoaRouter({ prefix: '/login' })

loginRouter.post('/', verifyLogin, LoginController.sign)
loginRouter.get('/', verifyAuth, (ctx) => {
  const {
    user: { name, id },
  } = ctx
  ctx.body = {
    code: 0,
    message: '验证通过',
    data: {
      name,
      id,
    },
  }
})

module.exports = loginRouter
