DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id SERIAL PRIMARY KEY NOT NULL,
    lastname VARCHAR(100),
    firstname VARCHAR(100),
    email VARCHAR(255),
    username VARCHAR(100),
    password VARCHAR(64),
    validated BOOLEAN DEFAULT FALSE,
    notification BOOLEAN DEFAULT TRUE,
    date_created TIMESTAMP,
    date_validated TIMESTAMP,
    date_updated TIMESTAMP,
    date_last_login TIMESTAMP,
    token_valid VARCHAR(8),
    token_passwd VARCHAR(8)
);