const app = require('./app')

const { SERVER_PORT } = require('./config/server.js')

require('./utils/handle-error')
app.listen(SERVER_PORT, () => {
  console.log(`服务已启动，端口为${SERVER_PORT} :>> `)
})
