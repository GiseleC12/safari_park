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
INSERT INTO staff (name, employeeNumber) VALUES ('Michael Jackson', 12346);
INSERT INTO staff (name, employeeNumber) VALUES ('Will Smith', 12347);
INSERT INTO staff (name, employeeNumber) VALUES ('Beyonce', 12348);

INSERT INTO enclosure (name, capacity, closedForMaintenance)  VALUES ('big cat field', 20, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance)  VALUES ('rhinoceros field', 20, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance)  VALUES ('giraffe field', 20, false);
INSERT INTO enclosure (name, capacity, closedForMaintenance)  VALUES ('monkey cage', 20, false);

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Poppy', 'Rhino', 25, 2);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Blair', 'Tiger', 39, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Geffery', 'Giraffe', 45, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Cheeky', 'Monkey', 23, 4);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Billy', 'Monkey', 59, 4);

INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (1,   1, 'Tuesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (2,   2, 'Tuesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (3,   3, 'Tuesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (4,   4, 'Tuesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (1,   2, 'Monday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (2,   3, 'Monday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (3,   4, 'Monday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (4,   1, 'Monday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (1,   3, 'Wednesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (2,   4, 'Wednesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (3,   1, 'Wednesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (4,   2, 'Wednesday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (1,   4, 'Thursday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (2,   1, 'Thursday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (3,   2, 'Thursday');
INSERT INTO assignment (staff_id, enclosure_id, day) VALUES (4,   3, 'Thursday');

-- Task 1:
-- SELECT animal.name FROM animal INNER JOIN enclosure ON animal.enclosure_id = enclosure.id where enclosure.name = 'big cat field';

-- Taksk 2:
-- SELECT staff.name FROM staff INNER JOIN assignment ON staff.id = assignment.staff_id INNER JOIN enclosure ON assignment.enclosure_id = enclosure.id WHERE enclosure.name = 'monkey cage';