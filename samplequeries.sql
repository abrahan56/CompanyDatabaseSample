#1 List all employees
SELECT * FROM employees

#2 List all male employees who work in the automotive department and earn more than 40,000 and less than 100,000
as well as females that work in the toys department.
SELECT * FROM employees
WHERE salary > 40000
AND salary < 100000
AND gender = 'M'
or(gender  = 'F' and department = 'Toys')

#3 List all the different domain names and the number of employees who have the specific domain name order from largest to smallest
SELECT substring(email, position('@' IN email)+1) as email_domain, count(*)
FROM employees
WHERE email IS NOT NULL
GROUP BY substring(email, position('@' IN email)+1)
ORDER BY count(*) desc

#4 List all employees that work in the kids division and the dates at which those employees were hired is greater than all of the hire_dates
of employees who work in the maintenance department
SELECT *
FROM employees
WHERE department = ANY(SELECT department 
                        FROM departments
                        WHERE division = 'Kids')
AND hire_date > ALL(SELECT hire_date
                    FROM employees
                    WHERE department = 'Maintenance')
                
#5 List each department, first name of the employee, salary, and then list the highest and lowest salary in a seperate column.
SELECT department, first_name, salary,
CASE WHEN salary = max_by_department THEN 'HIGHEST SALARY'
     WHEN salary = min_by_department THEN 'LOWEST SALARY'
END as salary_in_department
FROM (
SELECT department, first_name, salary,
         (SELECT max(salary) from employees e2
         WHERE e1.department = e2.department) as max_by_salary
         (SELECT min(salary) from employees e2
         WHERE e1.department = e2.department) as min_by_department
FROM employeees e1
ORDER BY department
  ) a
WHERE salary = max_bby_department
  OR salary = min_by_department

#6 List employees first_name and country that they work in
SELECT first_name, country
FROM employees INNER JOIN regions 
ON employees.region_id = regions.region_id
       
