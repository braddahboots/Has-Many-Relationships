-- Write querys for database

-- 1. query to get all fields from the users table
-- SELECT *
-- FROM users;

-- 2. query to get all fields from the posts table based on col value
-- SELECT posts.*
-- FROM posts
--   INNER JOIN users ON (posts.users_id = users.id)
--     WHERE users_id = 100;

-- 3 query to get all fields based on col value
-- SELECT posts.*, users.first_name, users.last_name
-- FROM posts
--   INNER JOIN users ON (posts.users_id = users.id)
--     WHERE users_id = 200;

-- 4 query to get all posts fields and fields from users based on column value
-- SELECT posts.*, users.username
-- FROM posts
--   INNER JOIN users ON (posts.users_id = users.id)
--     WHERE first_name = 'Norene' and last_name = 'Schmitt';

-- 5 query to get username from users based on col value
-- SELECT DISTINCT users.username
-- FROM posts
--   INNER JOIN users ON (posts.users_id = users.id)
--     WHERE posts.created_at > '2015-01-01';

-- 6 Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015
-- SELECT posts.title, posts.content, users.username
-- FROM posts
--   INNER JOIN users ON (posts.users_id = users.id)
--     WHERE users.created_at < '2015-01-01';

-- 7 Create a query to get the all rows in the `comments` table, showing post title (aliased as 'Post Title'), and the all the comment's fields
-- SELECT comments.*, posts.title as "Post Title"
-- FROM comments
--   INNER JOIN posts ON (comments.posts_id = posts.id)

-- 8 Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015
-- SELECT comments.id, comments.body as comments_body, posts.title as post_title, posts.url as post_url
-- FROM comments
--   INNER JOIN posts ON (comments.posts_id = posts.id)
--     WHERE posts.created_at < '2015-01-01';

-- 9 Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015
SELECT comments.id, comments.body as comments_body, posts.title as post_title, posts.url as post_url
FROM comments
  INNER JOIN posts ON (comments.posts_id = posts.id)
    WHERE posts.created_at > '2015-01-01';

-- 10 Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'

-- 11 Create a query to get the post title (aliased as post_title), first name of the author of the post, last name of the author of the post, and comment body (aliased to comment_body), where the comment body contains the word 'matrix' ( should have 855 results )

-- 12 Create a query to get the first name of the author of the comment, last name of the author of the comment, and comment body (aliased to comment_body), where the comment body contains the word 'SSL' and the post content contains the word 'dolorum' ( should have 102 results )

-- 13 Create a query to get the first name of the author of the post (aliased to post_author_first_name), last name of the author of the post (aliased to post_author_last_name), the post title (aliased to post_title), username of the author of the comment (aliased to comment_author_username), and comment body (aliased to comment_body), where the comment body contains the word 'SSL' or 'firewall' and the post content contains the word 'nemo' ( should have 197 results )