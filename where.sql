-- Intertion before query
CREATE TABLE users(
  _id SERIAL PRIMARY KEY,
  username VARCHAR (70) UNIQUE NOT NULL,
  email VARCHAR (255) UNIQUE NOT NULL,
  createdAt TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  isActive BOOLEAN DEFAULT TRUE
);

INSERT INTO 
  users(username, email)
VALUES
  ('mehedi', 'mehedi@gmail.com'),
  ('farhanpro', 'farhan@gmail.com');
  ('farhanpro', 'farhan@gmail.com');

/* Section 02: Filtering Data -> WHERE */
SELECT _id FROM users;

SELECT * FROM users WHERE _id = 1 AND username = 'mehedi' ORDER BY _id;

-- TODO: Using WHERE clause with the equal (=) operator --
SELECT * FROM users WHERE _id = 1 ORDER BY _id;

-- TODO: Using WHERE clause with the AND operator example --
SELECT * FROM users WHERE _id = 1 AND username = 'mehedi' ORDER BY _id;

-- TODO: Using WHERE clause with the OR operator --
SELECT * FROM users WHERE _id = 1 OR username = 'mehedi' ORDER BY _id;

-- TODO: Using WHERE clause with the IN operator --
SELECT * FROM users WHERE username IN('mehedi') ORDER BY _id;

-- TODO: Using WHERE clause with the NOT IN operator --
SELECT * FROM users WHERE username NOT IN('mehedi') ORDER BY _id;

-- TODO: Using WHERE clause with the LIKE operator
SELECT * FROM users WHERE username LIKE 'far%' ORDER BY _id;

-- TODO: Using WHERE clause with the BETWEEN operator
SELECT * FROM users WHERE _id BETWEEN 1 AND 3 ORDER BY _id;

SELECT username, LENGTH(username) AS len FROM users WHERE username LIKE 'far%' AND LENGTH(username) BETWEEN 1 AND 50 ORDER BY _id;

-- TODO: Using WHERE clause with the NOT EQUAL Operator
SELECT * FROM users WHERE username != 'mehedi' ORDER BY _id;