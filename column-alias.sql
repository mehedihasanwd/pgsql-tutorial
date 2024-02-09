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

/* Section 01: Querying Data */
SELECT _id FROM users;

-- TODO: Using column alias
SELECT _id AS user_id FROM users;

-- Using PGSQL SELECT statement without a FROM clause (FROM clause is optional)
SELECT NOW();

-- Column alias that contain spaces
SELECT username AS "User Name" FROM users;

-- TODO: SELECT and ORDER BY
SElECT username FROM users ORDER BY _id DESC;
SElECT username FROM users ORDER BY _id ASC; 

SElECT username FROM users ORDER BY _id DESC, email DESC;

-- Using LENGTH() with ORDER BY
SELECT username, LENGTH(username) AS len 
FROM users ORDER BY len DESC;

-- Using ORDER BY clause and Null
SELECT 
  num 
FROM 
  sort_demo 
ORDER BY 
  num NULLS FIRST;

-- TODO: DISTINCT --
CREATE TABLE distinctTable(
  _id SERIAL PRIMARY KEY NOT NULL,
  colorA VARCHAR,
  colorB VARCHAR
);

INSERT INTO
  distinctTable(colorA, colorB)
VALUES
  ('red', 'red'),
  ('red', 'red'),
  ('red', NULL),
  (NULL, 'red'),
  ('red', 'green'),
  ('red', 'blue'),
  ('green', 'red'),
  ('green', 'blue'),
  ('green', 'green'),
  ('blue', 'red'),
  ('blue', 'green'),
  ('blue', 'blue');

SELECT DISTINCT colorA 
FROM distinctTable 
ORDER BY colorA DESC NULLS LAST;

SELECT DISTINCT colorA, colorB 
FROM distinctTable 
ORDER BY colorA, colorB DESC NULLS LAST;

SELECT DISTINCT colorA, colorB 
FROM distinctTable 
ORDER BY colorA, colorB;

/* 
DISTINCT NOTE:
If we combine multiple column like colorA and colorB columns in the SELECT DISTINCT clause, the statement will combine the values in both colorA and colorB columns to evaluate the uniqueness of the rows.

Ideally, DISTINCT removes duplicate rows from a result set of a query.
*/