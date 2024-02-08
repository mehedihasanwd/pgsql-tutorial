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
  ('farhan', 'farhan@gmail.com');

-- Section 01: Querying Data --
SELECT _id FROM users;

-- Using column alias
SELECT _id AS user_id FROM users;

-- Using PGSQL SELECT statement without a FROM clause (FROM clause is optional)
SELECT NOW();
