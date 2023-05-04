const svgCaptcha = require('svg-captcha-fixed')

// const Koa = require('koa')
// const app = new Koa()

// app.keys = ['some secret hurr']
// app.use(
//   session(
//     {
//       key: 'captcha1', // cookie 密钥
//       maxAge: 60000, // cookie 过期时间
//       renew: true, // 在过期前自动更新 session
//     },
//     app
//   )
// )

const verifyCaptchaCode = async (ctx, next) => {
  const captcha = ctx.request.body.captcha // 获取用户提交的验证码
  const savedCaptcha = ctx.session.captcha // 获取保存在 session 中的验证码
  if (
    captcha &&
    savedCaptcha &&
    captcha.toLowerCase() === savedCaptcha.toLowerCase()
  ) {
    // 验证通过
    await next()
  } else {
    // 验证失败
    ctx.body = '验证失败'
  }
}
const generateCaptchaCode = async (ctx, next) => {
  const captcha = svgCaptcha.create({
    size: 5,
    ignoreChars: '0o1i',
    noise: 3,
    color: true,
  })
  ctx.session.captcha = captcha.text // 将验证码保存到 session
  ctx.captcha = captcha
  await next()
  console.log(captcha.text)
}

module.exports = {
  verifyCaptchaCode,
  generateCaptchaCode,
}
