-- create users table
CREATE TABLE IF NOT EXISTS users (
  id serial PRIMARY KEY,
  username varchar(90),
  first_name varchar(90),
  last_name varchar(90),
  created_at timestamp with time zone SET DEFAULT now(),
  updated_at timestamp with time zone SET DEFAULT now()
)

-- create posts table
CREATE TABLE IF NOT EXISTS posts (
  id serial PRIMARY KEY,
  users_id INTEGER REFERENCES users(id),
  title varchar(180),
  url varchar(510),
  content text,
  created_at timestamp with time zone SET DEFAULT now(),
  updated_at timestamp with time zone SET DEFAULT now()
)

-- create comments table
CREATE TABLE IF NOT EXISTS comments (
  id serial PRIMARY KEY,
  users_id INTEGER REFERENCES users(id),
  posts_id INTEGER REFERENCES posts(id),
  body varchar(510),
  created_at timestamp with time zone SET DEFAULT now(),
  updated_at timestamp with time zone SET DEFAULT now()
)

