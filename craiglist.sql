DROP DATABASE IF EXISTS craiglist;
CREATE DATABASE craiglist;
\c craiglist;

CREATE TABLE lists(
    id SERIAL PRIMARY KEY,
    region TEXT
);
INSERT INTO lists(id, region)
VALUES(1, 'DENVER'),
    (2, 'Colodao Springs'),
    (3, 'Aurora');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    preferred_region_id INTEGER REFERENCES lists(id)
);
INSERT INTO users(id, name, preferred_region_id)
VALUES(1, 'John', 1),
    (2, 'Alex', 1),
    (3, 'Husky', 2),
    (4, 'Tiffany', 3);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id),
    location TEXT,
    region_id INTEGER REFERENCES lists(id)
);

CREATE TABLE post_categories(
    id SERIAL PRIMARY KEY,
    categories TEXT,
    posts_id INTEGER REFERENCES posts(id)
);
