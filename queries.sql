
-- MODULE 9 CHALLENGE --

-- 1 --
SELECT employees.emp_no, employees.last_name, employees.first_name,
employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2 --
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3 --
SELECT managers.emp_no, managers.dept_no, departments.dept_name,
employees.last_name, employees.first_name
FROM managers
JOIN departments ON managers.dept_no = departments.dept_no
JOIN employees ON managers.emp_no = employees.emp_no;

-- 4 --
SELECT employees.emp_no, employees.last_name, employees.first_name,
dept_emps.dept_no, departments.dept_name
FROM employees
JOIN dept_emps ON employees.emp_no = dept_emps.emp_no
JOIN departments ON dept_emps.dept_no = departments.dept_no;

-- 5 --
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6 --
SELECT employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
FROM employees
JOIN dept_emps ON employees.emp_no = dept_emps.emp_no
JOIN departments ON dept_emps.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- 7 --
SELECT employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
FROM employees
JOIN dept_emps ON employees.emp_no = dept_emps.emp_no
JOIN departments ON dept_emps.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8 --
SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;




