const dotenv = require('dotenv')

dotenv.config()
// console.log(process.env.SERVER_PORT)

module.exports = { SERVER_PORT, SERVER_HOST, DB_NAME, DB_PASSWORD, DB_USER } =
  process.env
