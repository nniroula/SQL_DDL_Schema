DROP DATABASE IF EXISTS medical_record;
CREATE DATABASE medical_record;
\c medical_record;

CREATE TABLE medical_center(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO medical_center(id, name)
VALUES (1,  'University Hospital');

INSERT INTO medical_center(id, name)
VALUES (2,  'Aurora Medical Center');

INSERT INTO medical_center(id, name) VALUES 
    (3, 'Swedish Medical Center'),
    (4, 'Childrens Colorado');


