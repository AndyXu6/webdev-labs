-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3

SELECT id, first_name, last_name 
FROM users ORDER BY last_name;

-- Exercise 4


SELECT id, image_url, user_id
FROM posts WHERE user_id = 26;

-- Exercise 5


SELECT id, image_url, user_id
FROM posts WHERE user_id = 12 OR user_id = 26;

-- Exercise 6


SELECT COUNT(id)
FROM posts;


-- Exercise 7


SELECT user_id, COUNT(post_id)
FROM comments GROUP BY user_id ORDER BY COUNT(post_id) DESC;

-- Exercise 8


SELECT posts.id, posts.image_url, user_id, username, first_name, last_name
FROM posts, users WHERE (user_id = 12 OR user_id = 26) AND users.id = posts.user_id;

-- Exercise 9

SELECT posts.id, pub_date, following_id
FROM posts, following WHERE (following.user_id = 26) AND following.following_id = posts.user_id;


-- Exercise 10




-- Exercise 11

INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 219);

INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 220);

INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 221);


-- Exercise 12


DELETE FROM bookmarks
WHERE post_id = 219 OR post_id = 220 OR post_id = 221;

-- Exercise 13

UPDATE users
SET email = 'cyoung2022@gmail.com' 
WHERE first_name = 'Cody';


-- Exercise 14
