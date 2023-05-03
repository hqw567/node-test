const connection = require('../app/database')

class MomentService {
  async create({ content, id }) {
    try {
      const statement = 'INSERT INTO `moment` (content,user_id) VALUES (?,?)'
      const [result] = await connection.execute(statement, [content, id])
      return result
    } catch (error) {
      console.log(error)
    }
  }
  async queryList({ offset, size }) {
    try {
      const statement = `SELECT
      m.id id,
      m.content content,
      m.created_at created_at,
      m.updated_at updated_at,
      JSON_OBJECT( 'id', u.id, 'name', u.name, 'avatar_url',u.avatar_url ) user,
      (SELECT COUNT(*) FROM comment WHERE moment_id = m.id) comment_count,
      (SELECT COUNT(*) FROM moment_label WHERE moment_id = m.id) moment_count
    FROM
      moment m
      LEFT JOIN user u ON m.user_id = u.id
      LIMIT ?,
      ?
    `
      const [result] = await connection.execute(statement, [offset, size])
      return result
    } catch (error) {
      console.log(error)
    }
  }
  async queryById({ momentId }) {
    try {
      const statement = `SELECT
      m.id id,
      m.content content,
      m.created_at created_at,
      m.updated_at updated_at,
      JSON_OBJECT( 'id', u.id, 'name', u.name,'avatar_url',u.avatar_url ) user,
      (
      SELECT
        JSON_ARRAYAGG(
          JSON_OBJECT(
            'id',
            c.id,
            'content',
            c.content,
            'comment_id',
            c.comment_id,
            'user',
          JSON_OBJECT( 'id', cu.id, 'name', cu.name,'avatar_url',cu.avatar_url)))
      FROM
        comment c
        LEFT JOIN user cu ON c.user_id = cu.id
      WHERE
        c.moment_id = m.id
      ) comments,
      JSON_ARRAYAGG(
      JSON_OBJECT( 'id', l.id, 'name', l.name )) labels
    FROM
      moment m
      LEFT JOIN user u ON m.user_id = u.id
      LEFT JOIN moment_label ml ON ml.moment_id = m.id
      LEFT JOIN label l ON ml.label_id = l.id
    WHERE
      m.id = ?
    GROUP BY
      m.id
    `
      const [result] = await connection.execute(statement, [momentId])
      return result
    } catch (error) {
      console.log(error)
    }
  }

  async update({ momentId, content }) {
    try {
      const statement = `UPDATE moment SET content = ? WHERE id = ?`
      const [result] = await connection.execute(statement, [content, momentId])
      return result
    } catch (error) {
      console.log(error)
    }
  }
  async remove({ momentId }) {
    try {
      const statement = `DELETE FROM moment WHERE id = ?`
      const [result] = await connection.execute(statement, [momentId])
      return result
    } catch (error) {
      console.log(error)
    }
  }
  async hasLabel({ momentId, labelId }) {
    try {
      const statement = `SELECT * FROM moment_label WHERE moment_id = ? AND label_id = ?`
      const [result] = await connection.execute(statement, [momentId, labelId])
      return !!result.length
    } catch (error) {
      console.log(error)
    }
  }
  async addLabel({ momentId, labelId }) {
    try {
      const statement = `INSERT INTO moment_label (moment_id,label_id) VALUES (?,?) `
      const [result] = await connection.execute(statement, [momentId, labelId])
      return result
    } catch (error) {
      console.log(error)
    }
  }
}

module.exports = new MomentService()
