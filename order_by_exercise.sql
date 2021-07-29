SHOW DATABASES;
USE employees;

# Modify your first query to order by first name.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') ORDER BY first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

# Update the query to order by first name and then last name.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M' ORDER BY last_name, first_name;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
    SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no;

#Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;


SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
