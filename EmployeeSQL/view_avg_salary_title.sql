create view avg_salary_title as
select round(avg(s.salary)) as "Avg Salary", t.title as "Title"
from salaries s
inner join titles t
on s.emp_no = t.emp_no
group by title

select * from avg_salary_title;