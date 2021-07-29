SHOW DATABASES;
USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;


# Find all employees born on Christmas
SELECT *
FROM employees
WHERE day(birth_date) = 25
  AND month(birth_date) = 12;


# Find all employees hired in the 90s and born on Christmas
SELECT *
FROM employees
WHERE day(birth_date) = 25
  AND month(birth_date) = 12
  AND year(hire_date) >= 1990
  AND year(hire_date) < 2000;


# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE day(birth_date) = 25
  AND month(birth_date) = 12
  AND year(hire_date) >= 1990
  AND year(hire_date) < 2000
ORDER BY birth_date, hire_date desc;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company.

SELECT *, datediff(curdate(), hire_date)
FROM employees
WHERE day(birth_date) = 25
  AND month(birth_date) = 12
  AND year(hire_date) >= 1990
  AND year(hire_date) < 2000
ORDER BY birth_date, hire_date desc;

