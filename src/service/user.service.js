const connection = require('../app/database')

class UserService {
  async create(user) {
    console.log(user)
    try {
      const statement = '	INSERT INTO `user` (name,password) VALUES (?,?) '
      const [result] = await connection.execute(statement, [
        user.name,
        user.password,
      ])
      return result
    } catch (error) {
      console.log(error)
    }
  }

  async findUserByName(name) {
    const statement = 'SELECT * FROM `user` WHERE name = ?'
    const [values] = await connection.execute(statement, [name])
    return values
  }

  async updateUserAvatar({ avatarUrl, userId }) {
    const statement = 'UPDATE user SET avatar_url = ? WHERE id = ?'
    const [values] = await connection.execute(statement, [avatarUrl, userId])
    return values
  }
}

module.exports = new UserService()
