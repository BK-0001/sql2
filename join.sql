SELECT
  articles.id AS id,
  articles.title,
  users.email
FROM
  articles
INNER JOIN users 
ON articles.user_id = users.id;