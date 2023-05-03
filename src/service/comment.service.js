const connection = require('../app/database')

class CommentService {
  async create({ content, momentId, userId }) {
    console.log(content, momentId, userId)

    try {
      const statement =
        'INSERT INTO `comment` (content,moment_id,user_id) VALUES (?,?,?)'
      const [result] = await connection.execute(statement, [
        content,
        momentId,
        userId,
      ])
      return result
    } catch (error) {
      console.log(error)
    }
  }
  async reply({ content, momentId, userId, commentId }) {
    try {
      const statement =
        'INSERT INTO `comment` (content,moment_id,user_id,comment_id) VALUES (?,?,?,?)'
      const [result] = await connection.execute(statement, [
        content,
        momentId,
        userId,
        commentId,
      ])
      return result
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new CommentService()
