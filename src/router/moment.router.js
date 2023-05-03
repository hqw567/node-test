const KoaRouter = require('@koa/router')
const { addLabels } = require('../controller/moment.controller')
const MomentController = require('../controller/moment.controller')
const { verifyLabelExists } = require('../middleware/label.middleware')
const { verifyAuth } = require('../middleware/login.middleware')
const { verifyPermission } = require('../middleware/permission.middleware')

const momentRouter = new KoaRouter({ prefix: '/moment' })

momentRouter.post('/', verifyAuth, MomentController.create)
momentRouter.get('/', MomentController.list)
momentRouter.get('/:momentId', MomentController.detail)
momentRouter.patch(
  '/:momentId',
  verifyAuth,
  verifyPermission,
  MomentController.update
)
momentRouter.delete(
  '/:momentId',
  verifyAuth,
  verifyPermission,
  MomentController.remove
)
momentRouter.post(
  '/:momentId/labels',
  verifyAuth,
  verifyPermission,
  verifyLabelExists,
  addLabels
)

module.exports = momentRouter
