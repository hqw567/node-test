const connection = require('../app/database')

class LoginService {
  async login(user) {
    try {
      const statement = 'SELECT * FROM `user` WHERE name = ? AND password = ?'
      const [result] = await connection.execute(statement, [
        user.name,
        user.password,
      ])
      return result
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new LoginService()
