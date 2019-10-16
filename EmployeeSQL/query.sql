-- DATA ANALYSIS --

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e 
inner join salaries s on e.emp_no = s.emp_no;


-- 2. List employees who were hired in 1986.

SELECT *
FROM employees
WHERE hire_date between ('1986-1-1') and ('1986-12-31');


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date 
from departments d 
inner join dept_manager m on d.dept_no = m.dept_no
inner join employees e on e.emp_no = m.emp_no;


-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on d.dept_no = de.dept_no;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees 
where first_name = 'Hercules' and last_name like 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on d.dept_no = de.dept_no
where d.dept_name in ('Sales','Development');


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(*) as "Frequency Count"
from employees
group by last_name
order by 2 desc;




































