DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS staff;



CREATE TABLE staff(
 id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 employeeNumber INT
);

CREATE TABLE enclosure(
 id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 capacity INT, 
 closedForMaintenance boolean
);

CREATE TABLE animal(
 id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 type VARCHAR(255),
 age INT,
 enclosure_id INT REFERENCES enclosure(id)
);

CREATE TABLE assignment(
id SERIAL PRIMARY KEY,
staff_id INT REFERENCES staff(id),
enclosure_id INT REFERENCES enclosure(id),
day VARCHAR(255)
);


INSERT INTO staff (name, employeeNumber) VALUES ('Captain Rick', 12345);

INSERT INTO enclosure (name, capacity, closedForMaintenance)  VALUES ('big cat field', 20, false);

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);

INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (1,   1, 'Tuesday');









