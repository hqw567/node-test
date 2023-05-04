const KoaRouter = require('@koa/router')
const captchaController = require('../controller/captcha.controller')
const {
  verifyCaptchaCode,
  generateCaptchaCode,
} = require('../middleware/captcha.middleware')

const captchaRouter = new KoaRouter({ prefix: '/captcha' })

captchaRouter.get('/', generateCaptchaCode, captchaController.nextGenerateCode)
captchaRouter.post('/', verifyCaptchaCode, captchaController.next)

module.exports = captchaRouter
