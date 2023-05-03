const connection = require('../app/database')

class PermissionService {
  async checkMoment({ momentId, userId }) {
    try {
      const statement = 'SELECT * FROM  moment WHERE id = ? AND user_id = ?'
      const [result] = await connection.execute(statement, [momentId, userId])
      return !!result.length
    } catch (error) {
      console.log(error)
    }
  }
  async checkResource({ resourceName, resourceId, userId }) {
    try {
      const statement = `SELECT * FROM  ${resourceName} WHERE id = ? AND user_id = ?`
      const [result] = await connection.execute(statement, [resourceId, userId])
      return !!result.length
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new PermissionService()
