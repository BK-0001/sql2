-- Goal
-- We are going to create two tables
-- one users
-- articles

DROP TABLE IF EXISTS articles CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(50)
);

CREATE TABLE articles (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(100),
  description TEXT,
  create_at TIMESTAMP
);

INSERT INTO users (email) 
VALUES
  ('a@gmail.com'),
  ('b@gmail.com'),
  ('c@gmail.com'),
  ('d@gmail.com');

INSERT INTO articles (user_id, title) 
VALUES
  (1, 'first'),
  (1, 'second'),
  (2, 'third'),
  (3, 'fourth');
