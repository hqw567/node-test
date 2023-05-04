const fs = require('fs')
const path = require('path')

const private_key = fs.readFileSync(
  path.join(__dirname, '../../keys/private_key.pem')
)
const public_key = fs.readFileSync(
  path.join(__dirname, '../../keys/public_key.pem')
)

module.exports = {
  private_key,
  public_key,
}
