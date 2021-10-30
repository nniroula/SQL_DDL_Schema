DROP DATABASE IF EXISTS craiglist;
CREATE DATABASE craiglist;
\c craiglist;

CREATE TABLE lists(
    id SERIAL PRIMARY KEY,
    region TEXT
);
INSERT INTO lists(id, region)
VALUES(1, 'DENVER'),
    (2, 'Colodao Springs')
    (3, 'Aurora');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    preferred_region_id INTEGER REFERENCES lists(id)
);

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
