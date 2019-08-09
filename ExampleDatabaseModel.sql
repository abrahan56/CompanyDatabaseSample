-- -----------------------------------------------------
-- Database Example
-- -----------------------------------------------------

-- Database: Example

-- Drop DATABASE Example

CREATE DATABASE Example
  WITH
  OWNER = postgres
  ENCODING = 'UTF8'
  LC_COLLATE = 'English_United States.1252'
  LC_CTYPE = 'English_United States.1252'
  TABLESPACE = pg_default
  CONNECTION LIMIT = -1;
-- -----------------------------------------------------
-- Schema Abrahan
-- -----------------------------------------------------
  -- SCHEMA: abrahan
  
  -- DROP SCHEMA abrahan;
  
  CREATE SCHEMA abrahan
  AUTHORIZATION postgres;
    
-- -----------------------------------------------------
-- Create Table 'Departments'
-- -----------------------------------------------------

create table departments (
    department varchar(100),
    division varchar(100),
    primary key (department)
  );
  
-- -----------------------------------------------------
-- Create Table 'Regions'
-- -----------------------------------------------------
create table regions (
   region_id int,
   region varchar(20),
   country varchar(20),
   primary key (region_id)
  );

-- -----------------------------------------------------
-- Create Table 'Employees'
-- -----------------------------------------------------
create table employees (
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	hire_date DATE,
	department VARCHAR(17),
	gender VARCHAR(1),
	salary INT,
	region_id INT,
	primary key (employee_id)
  
## END OF CREATION OF TABLES
