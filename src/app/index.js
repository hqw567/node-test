const Koa = require('koa')
const bodyParser = require('koa-bodyparser')
// const loginRouter = require('../router/login.router.js')
// const userRouter = require('../router/user.router.js')
const registerRouters = require('../router/index')
const app = new Koa()
app.use(bodyParser())
registerRouters(app)
// app.use(userRouter.routes())
// app.use(userRouter.allowedMethods())

// app.use(loginRouter.routes())
// app.use(loginRouter.allowedMethods())

module.exports = app
