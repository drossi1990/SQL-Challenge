-- Database: employee_SQL
 -- DROP DATABASE "employee_SQL";

CREATE DATABASE "employee_SQL" WITH OWNER = POSTGRES ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252' TABLESPACE = PG_DEFAULT CONNECTION
LIMIT = -1;

# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

CREATE TABLE employees (
  id SERIAL,
  emp_no INT,
  emp_title VARCHAR(50),
  birth_date DATE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex CHAR, 
  hire_date DATE,
  PRIMARY KEY (id)
)

COPY persons(emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:\Users\dross\Desktop\Data Science\uci-irv-data-pt-08-2020-u-c-master\02-Homework\09-SQL\Instructions\data\employees.csv'
DELIMITER ','
CSV HEADER;



