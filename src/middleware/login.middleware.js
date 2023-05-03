const {
  NAME_IS_NOT_EXISTS,
  NAME_OR_PASSWORD_IS_REQUIRED,
  PASSWORD_IS_INCORRECT,
  UN_AUTHORIZATION,
} = require('../config/error-constants')
const { public_key } = require('../config/secret')
const userService = require('../service/user.service')
const { bcryptCompare } = require('../utils/bcrypt-password')
const jwt = require('jsonwebtoken')
const verifyLogin = async (ctx, next) => {
  const { name, password } = ctx.request.body
  console.log(name, password)
  if (!name || !password) {
    return ctx.app.emit('error', NAME_OR_PASSWORD_IS_REQUIRED, ctx)
  }
  const users = await userService.findUserByName(name)
  const user = users[0]
  if (!user) {
    return ctx.app.emit('error', NAME_IS_NOT_EXISTS, ctx)
  }
  if (user) {
    const bcryptPassword = user.password
    const isMatch = bcryptCompare(password, bcryptPassword)
    if (!isMatch) {
      return ctx.app.emit('error', PASSWORD_IS_INCORRECT, ctx)
    }
  }

  ctx.user = {
    name: user.name,
    id: user.id,
  }
  await next()
}

const verifyAuth = async (ctx, next) => {
  const authorization = ctx.headers?.authorization
  const token = authorization?.replace('Bearer ', '')
  if (!token) {
    return ctx.app.emit('error', UN_AUTHORIZATION, ctx)
  }
  try {
    const result = jwt.verify(token, public_key, { algorithms: ['RS256'] })
    ctx.user = result
    await next()
  } catch (error) {
    console.log(error)
    ctx.app.emit('error', UN_AUTHORIZATION, ctx)
  }
  // await next()
}

module.exports = { verifyLogin, verifyAuth }
