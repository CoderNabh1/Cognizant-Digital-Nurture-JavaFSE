CREATE DATABASE cognizant_training;
USE cognizant_training;
Create TABLE employee(
    employee_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    gender ENUM('M', 'F', 'Other') NOT NULL,
    age TINYINT UNSIGNED NOT NULL,
    salary DECIMAL(8,2),
    joining_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--ALTER TABLE employee ADD COLUMN cwh VARCHAR(50);
--ALTER TABLE employee DROP COLUMN cwh;

--ALTER TABLE employee DROP COLUMN created_at;

INSERT INTO employee VALUES
(1, 'Sameer', 'M' , 56, 456131, '2026-05-27');

SELECT employee_name FROM employee WHERE gender = 'F';
SELECT employee_name FROM employee WHERE gender <> 'M';

--SELECT * FROM employee
UPDATE employee SET salary = 70000 WHERE employee_id=1;

SELECT salary FROM employee WHERE employee_name='Sameer';

UPDATE employee SET employee_name = 'Sameer Khan' WHERE employee_id=1;

Select employee_name = 'Sameer Khan' FROM employee;

ALTER TABLE employee ADD COLUMN employee_email VARCHAR(50) NOT NULL UNIQUE;

UPDATE employee 
SET employee_email = 'sammerKhan@email.com' 
WHERE employee_name = 'Sameer Khan';

Select * from employee;

UPDATE employee SET salary = salary + 10000 WHERE salary < 70000;

UPDATE employee SET salary = 50000;
Select  * from employee;

SELECT COUNT(*) FROM employee WHERE gender = 'F';
SELECT COUNT(*) FROM employee

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM employee;

