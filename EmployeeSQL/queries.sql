-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees e
JOIN salaries s
USING (emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
    first_name,
    last_name,
    hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
    m.dept_no,
    m.emp_no,
    d.dept_name,
    e.first_name,
    e.last_name
FROM employees e
JOIN dept_manager m
USING (emp_no)
JOIN departments d
USING (dept_no);
    
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
FROM employees e
JOIN dept_manager
USING (emp_no)
JOIN departments d
USING (dept_no);

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
    e.first_name,
    e.last_name,
    e.sex
FROM employees e 
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments d
USING (dept_no)
WHERE dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments d
USING (dept_no)
WHERE dept_name = 'Sales' or 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT(last_name) as "no_count", last_name
FROM employees
GROUP BY last_name
ORDER BY no_count


