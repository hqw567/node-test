const bcrypt = require('bcrypt')

const salt = bcrypt.genSaltSync(10)

const bcryptHash = (password) => {
  return bcrypt.hashSync(password, salt)
}

const bcryptCompare = (password, hash) => {
  return bcrypt.compareSync(password, hash)
}

module.exports = {
  bcryptHash,
  bcryptCompare,
}
