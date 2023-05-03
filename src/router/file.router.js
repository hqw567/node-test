const KoaRouter = require('@koa/router')
const fileController = require('../controller/file.controller')
const { handleAvatar } = require('../middleware/file.middleware')

const { verifyAuth } = require('../middleware/login.middleware')

const fileRouter = new KoaRouter({ prefix: '/file' })

fileRouter.get('/')
fileRouter.post('/avatar', verifyAuth, handleAvatar, fileController.avatar)

module.exports = fileRouter
