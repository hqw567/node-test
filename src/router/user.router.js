const KoaRouter = require('@koa/router')
const UserController = require('../controller/user.controller')
const { verifyAuth } = require('../middleware/login.middleware')
const { verifyUser } = require('../middleware/user.middleware')

const userRouter = new KoaRouter({ prefix: '/users' })
userRouter.post('/', verifyUser, UserController.create)

userRouter.get('/avatar/:userId', UserController.showAvatarImage)

module.exports = userRouter
