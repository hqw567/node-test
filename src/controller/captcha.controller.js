class CaptchaController {
  async nextGenerateCode(ctx, next) {
    const { data } = ctx.captcha
    ctx.type = 'image/svg+xml'
    ctx.body = data
  }
  async next(ctx, next) {
    // 验证通过
    ctx.body = '验证通过'
  }
}

module.exports = new CaptchaController()
