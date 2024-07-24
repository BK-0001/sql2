
-- SELECT
--   articles.id AS id,
--   articles.title,
--   users.email
-- FROM
--   articles
-- INNER JOIN users 
-- ON articles.user_id = users.id;


-- SELECT * FROM users
-- RIGHT JOIN articles
-- ON users.id = articles.user_id;
-- -- WHERE articles.user_id IS NOT NULL;


SELECT * FROM articles
FULL OUTER JOIN users
ON articles.user_id = users.id;