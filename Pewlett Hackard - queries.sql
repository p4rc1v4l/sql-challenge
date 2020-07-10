-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from EMPLOYEE e, SALARY s
where e.emp_no = s.emp_no
order by e.last_name

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from EMPLOYEE
where extract( ISOYEAR from hire_date) = 1986
order by last_name

-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from DEPARTMENT d, EMPLOYEE e, DEPT_MANAGER dm
where d.dept_no = dm.dept_no and e.emp_no = dm.emp_no
order by d.dept_no

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from EMPLOYEE e, DEPT_EMP de, DEPARTMENT d
where e.emp_no = de.emp_no and d.dept_no = de.dept_no
order by e.emp_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from EMPLOYEE
where first_name = 'Hercules' and last_name like 'B%'
order by last_name

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from EMPLOYEE e, DEPARTMENT d, DEPT_EMP de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no
and d.dept_name = 'Sales'
order by e.last_name

-- List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from EMPLOYEE e, DEPARTMENT d, DEPT_EMP de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no
and d.dept_name in ('Sales', 'Development')
order by e.last_name

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name) count_last_name, last_name
from EMPLOYEE
group by last_name
order by count_last_name desc
