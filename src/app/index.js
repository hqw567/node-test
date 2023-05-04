const Koa = require('koa')
const bodyParser = require('koa-bodyparser')
const session = require('koa-session')
const registerRouters = require('../router/index')
const app = new Koa()

app.keys = ['some secret hurr']
app.use(
  session(
    {
      key: 'captcha', // cookie 密钥
      maxAge: 60000, // cookie 过期时间
      renew: true, // 在过期前自动更新 session
    },
    app
  )
)

app.use(bodyParser())
registerRouters(app)
// app.use(userRouter.routes())
// app.use(userRouter.allowedMethods())

// app.use(loginRouter.routes())
// app.use(loginRouter.allowedMethods())

module.exports = app
