CREATE DATABASE `PLACEMENT`;
USE `PLACEMENT`;
SELECT * FROM `placement_data_full_class`;

# View few rows
SELECT * FROM placement_data_full_class 
LIMIT 5;

# Check first few rows
SELECT * FROM placement_data_full_class
ORDER BY sl_no 
ASC LIMIT 5; 

# Check last few rows
SELECT * FROM placement_data_full_class
ORDER BY sl_no 
DESC LIMIT 5; 

# Count rows
SELECT COUNT(*) AS total_records 
FROM placement_data_full_class;

# Check column names and data types
DESCRIBE placement_data_full_class;

# Gender distribution
SELECT gender, COUNT(*) AS total 
FROM placement_data_full_class
GROUP BY gender;

# Placement status
SELECT status, COUNT(*) AS total 
FROM placement_data_full_class
GROUP BY status;

# Average MBA percentage by specialisation
SELECT specialisation, ROUND(AVG(mba_p),2) AS avg_mba
FROM placement_data_full_class
GROUP BY specialisation;

# Average MBA percentage by gender-wise
SELECT gender, ROUND(AVG(mba_p),2) AS avg_mba
FROM placement_data_full_class
GROUP BY gender;

# See all unique genders
SELECT DISTINCT gender FROM placement_data_full_class;

# See all unique degree types
SELECT DISTINCT degree_t FROM placement_data_full_class;

# See all unique statuses (Placed / Not placed)
SELECT DISTINCT status FROM placement_data_full_class;

# Show all rows where salary is not null
SELECT * FROM placement_data_full_class
WHERE salary IS NOT NULL;

# Find the highest and lowest salary
SELECT MAX(salary) AS highest_salary, 
MIN(salary) AS lowest_salary
FROM placement_data_full_class;

# Show only placed students
SELECT * FROM placement_data_full_class
WHERE status = 'Placed';

# Show only not placed students
SELECT * FROM placement_data_full_class
WHERE status = 'Not Placed';

# Show students who scored above 70 in MBA
SELECT * FROM placement_data_full_class
WHERE mba_p > 70;

# Show placed students with salary above 300000
SELECT * FROM placement_data_full_class
WHERE status = 'Placed' AND salary > 300000;

# Delete rows where both degree and mba percentages are missing
DELETE FROM placement_data_full_class
WHERE degree_p IS NULL AND mba_p IS NULL;
