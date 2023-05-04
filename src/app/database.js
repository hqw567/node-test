const mysql = require('mysql2')

const connectionPool = mysql.createPool({
  host: 'localhost',
  port: 3306,
  database: 'hubcode',
  user: 'root',
  password: 'root',
  connectionLimit: 5,
})

connectionPool.getConnection((err, connection) => {
  if (err) throw ('数据库连接失败:', err)
  console.log('数据库连接成功')

  connection.connect((err) => {
    if (err) throw ('数据库交互失败', err)
    console.log('数据库交互成功')
  })
})

const connection = connectionPool.promise()
module.exports = connection
