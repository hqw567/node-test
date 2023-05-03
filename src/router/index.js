const fs = require('fs')

const registerRouters = (app) => {
  const files = fs.readdirSync(__dirname)
  // console.log('🚀 ~ file: index.js:5 ~ registerRouters ~ files:', files)

  for (const file of files) {
    if (!file.endsWith('.router.js')) continue
    const router = require(`./${file}`)
    app.use(router.routes())
    app.use(router.allowedMethods())
  }
}

module.exports = registerRouters
