const { OPERATION_IS_NOT_ALLOWED } = require('../config/error-constants')
const permissionService = require('../service/permission.service')

const verifyMomentPermission = async (ctx, next) => {
  const { momentId } = ctx.params
  const { id: userId } = ctx.user
  const result = await permissionService.checkMoment({ momentId, userId })
  console.log(result)
  if (result) {
    await next()
  } else {
    return ctx.app.emit('error', OPERATION_IS_NOT_ALLOWED, ctx)
  }
}

const verifyPermission = async (ctx, next) => {
  // const { momentId } = ctx.params
  const { id: userId } = ctx.user
  const keyName = Object.keys(ctx.params)[0]
  // console.log(keyName, ctx.params)
  const resourceId = ctx.params[keyName]
  const resourceName = keyName.replace('Id', '')
  const result = await permissionService.checkResource({
    resourceName,
    resourceId,
    userId,
  })
  console.log(result)
  if (result) {
    await next()
  } else {
    return ctx.app.emit('error', OPERATION_IS_NOT_ALLOWED, ctx)
  }
}

module.exports = {
  verifyMomentPermission,
  verifyPermission,
}
