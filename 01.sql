CREATE TABLE
IF
	NOT EXISTS `user` (
		id INT PRIMARY KEY AUTO_INCREMENT,
		name VARCHAR ( 20 ) NOT NULL UNIQUE,
		password VARCHAR ( 60 ) NOT NULL,
		created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
	)
	
	

INSERT INTO `user` (name,password) VALUES (?,?)


SELECT * FROM `user` WHERE name = '?'


CREATE TABLE IF NOT EXISTS `moment` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	content VARCHAR(1000) NOT NULL,
	user_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY(user_id) REFERENCES user(id)
);


INSERT INTO `moment` (content,user_id) VALUES (?,?)


SELECT * FROM `moment` LIMIT ?,?


SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user 
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id 
	LIMIT 0,
	10
	
	
	
SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user 
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id 
WHERE
	m.id = ?


UPDATE moment SET content = ? WHERE id = ?

SELECT * FROM moment WHERE id = 1 AND user_id = 33

DELETE FROM moment WHERE id = ?




CREATE TABLE IF NOT EXISTS `comment` (
  id INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(1000) NOT NULL,
  moment_id INT NOT NULL,
  user_id INT NOT NULL,
  comment_id INT DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  FOREIGN KEY (moment_id) REFERENCES moment(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (comment_id) REFERENCES comment(id) ON DELETE CASCADE ON UPDATE CASCADE
)


INSERT INTO `comment` (content,moment_id,user_id) VALUES (?,?,?)

INSERT INTO `comment` (content,moment_id,user_id,comment_id) VALUES (?,?,?,?)



SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user,
	(SELECT COUNT(*) FROM `comment` WHERE moment_id = m.id) comment_count
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id 
	LIMIT 0,
	10
	
	


SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user,
	(
		JSON_ARRAYAGG(
		JSON_OBJECT( 'id', c.id, 'content', c.content, 'created_at', c.created_at ))) comments 
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id
	LEFT JOIN `comment` c ON c.moment_id = m.id 
WHERE
	m.id = 2
GROUP BY m.id


SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user,
	(
		JSON_ARRAYAGG(
		JSON_OBJECT( 'id', c.id, 'content', c.content, 'created_at', c.created_at ,'user',JSON_OBJECT('id',cu.id,'name',cu.name)))) comments 
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id
	LEFT JOIN `comment` c ON c.moment_id = m.id
	LEFT JOIN user cu on cu.id = c.user_id
	
WHERE
	m.id = 2
GROUP BY m.id



CREATE TABLE IF NOT EXISTS label (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL UNIQUE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)

INSERT INTO label (name) VALUES (?)

SELECT * FROM label LIMIT ?,?


CREATE TABLE IF NOT EXISTS moment_label (
	moment_id INT NOT NULL,
	label_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(moment_id,label_id),
	FOREIGN KEY (moment_id) REFERENCES moment(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE CASCADE ON UPDATE CASCADE
)

INSERT INTO moment_label (moment_id,label_id) VALUES (?,?) 

SELECT * FROM label WHERE name = ?


SELECT * FROM moment_label WHERE moment_id = ? AND label_id = ?





SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name ) user,
	(SELECT COUNT(*) FROM `comment` WHERE moment_id = m.id) comment_count,
	(SELECT COUNT(*) FROM `moment_label` WHERE moment_id = m.id) moment_count
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id 
	LIMIT 0,
	10
	
	
	
	
SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.NAME ) USER,
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
			JSON_OBJECT( 'id', cu.id, 'name', cu.NAME ))) 
	FROM
		`comment` c
		LEFT JOIN USER cu ON c.user_id = cu.id 
	WHERE
		c.moment_id = m.id 
	) comments,
	JSON_ARRAYAGG(
	JSON_OBJECT( 'id', l.id, 'name', l.NAME )) labels 
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id
	LEFT JOIN moment_label ml ON ml.moment_id = m.id
	LEFT JOIN label l ON ml.label_id = l.id 
WHERE
	m.id = 8 
GROUP BY
	m.id
	
	
	

CREATE TABLE IF NOT EXISTS avatar (
	id INT PRIMARY KEY AUTO_INCREMENT,
	filename VARCHAR(255) NOT NULL UNIQUE,
	mimetype VARCHAR(30),
	size INT,
	user_id INT,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE
)


INSERT INTO avatar (filename,mimetype,size,user_id) VALUES (?,?,?,?)


SELECT * FROM avatar WHERE user_id = ?


ALTER TABLE user ADD avatar_url VARCHAR(200)

UPDATE user SET avatar_url = ? WHERE id = ?

SELECT
	m.id id,
	m.content content,
	m.created_at created_at,
	m.updated_at updated_at,
	JSON_OBJECT( 'id', u.id, 'name', u.name , 'avatar' , a.) user,
	(SELECT COUNT(*) FROM `comment` WHERE moment_id = m.id) comment_count,
	(SELECT COUNT(*) FROM `moment_label` WHERE moment_id = m.id) moment_count
FROM
	moment m
	LEFT JOIN `user` u ON m.user_id = u.id 
	LEFT JOIN avatar a ON a.user_id = u.id
	LIMIT 0,
	10
	