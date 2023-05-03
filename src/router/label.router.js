const KoaRouter = require('@koa/router')
const labelController = require('../controller/label.controller')
const { verifyAuth } = require('../middleware/login.middleware')

const labelRouter = new KoaRouter({ prefix: '/label' })

labelRouter.get('/', verifyAuth, labelController.list)
labelRouter.post('/', verifyAuth, labelController.create)

module.exports = labelRouter
