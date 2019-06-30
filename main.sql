-- Creating Tables
CREATE TABLE cats 
(
   name VARCHAR(100),
   age INT
);

CREATE TABLE pastries
(
 name VARCHAR(100),
 quantity INT
);

-- Using NOT NULL
CREATE TABLE cats2 
(
   name VARCHAR(100) NOT NULL,
   age INT NOT NULL
);

-- Setting Default Values
CREATE TABLE cats3 
(
   name VARCHAR(100) DEFAULT 'unamed',
   age INT DEFAULT 99
);

-- CREATE TABLE NOT NULL and DEFAULT
CREATE TABLE cats4 
(
   name VARCHAR(100) NOT NULL DEFAULT 'unamed',
   age INT NOT NULL DEFAULT 99
);

-- CREATE TABLE with Primary Key
CREATE TABLE unique_cats
(cat_id INT NOT NULL
,name VARCHAR(100)
,age INT
,PRIMARY KEY (cat_id)
);

-- CREATE TABLE with Automatic Primary Key
CREATE TABLE unique_cats2
(cat_id INT NOT NULL AUTO_INCREMENT
,name VARCHAR(100)
,age INT
,PRIMARY KEY (cat_id)
);

-- Exercise
CREATE TABLE employees (
id INT NOT NULL AUTO_INCREMENT
,last_name VARCHAR(100) NOT NULL
,first_name VARCHAR(100) NOT NULL
,middle_name VARCHAR(100)
,age INT NOT NULL
,current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
,PRIMARY KEY (id)
);

-- Inserting Into Tables
INSERT INTO cats (name, age)
VALUES('Draco', 11);

INSERT INTO cats (name, age)
VALUES('Charlie', 10),
      ('Sadie', 3),
      ('Lazy Bear', 1);

INSERT INTO people (first_name, LastName, age)
VALUES('Linda', 'Belcher', 45),
      ('Phillip', 'Belcher', 38),
      ('Calvin', 'Fischoeder', 70);
      

-- CRUD Section
-- CREATE USE CREATE COMMAND
-- READ USE SELECT STATEMENT
--UPDATE
UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';

UPDATE cats SET age=14
WHERE name='Misty';

UPDATE cats SET name='Jack'
WHERE name='Jackson';

UPDATE cats SET breed='British Shorthair'
WHERE name='Ringo';

UPDATE cats SET age=12
WHERE breed='Maine Coon';

--DELETE
DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE age=cat_id;
--Delete All Data
DELETE FROM cats;