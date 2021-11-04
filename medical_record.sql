-- medical_record is a database and medical_record.sql is a file

DROP DATABASE IF EXISTS medical_record;
CREATE DATABASE medical_record;
\c medical_record;

-- create a table for medical center
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

-- create table for doctors
CREATE TABLE doctors( 
id SERIAL UNIQUE NOT NULL,
name TEXT NOT NULL, 
medical_center_id INTEGER REFERENCES medical_center
);

INSERT INTO doctors(id, name, medical_center_id) 
VALUES(1, 'Dr. Prinsha', 1),
    (2, 'Dr. Prabha', 1),
    (3, 'Dr. Jones', 3);

-- create patients table
CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    doctor_id INTEGER REFERENCES doctors(id)
);

INSERT INTO patients(id, name, doctor_id)
VALUES(1, 'Cristy', 1),
        (2, 'Kevin', 2),
        (3, 'Nabin', 1);

-- Create dieseas table
CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    disease TEXT NOT NULL,
    patient_id INTEGER REFERENCES patients(id)
);

INSERT INTO diseases(id, disease, patient_id)
VALUES(1, 'Dark Circle', 3);




