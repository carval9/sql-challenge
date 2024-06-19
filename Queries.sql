select emp.emp_no, last_name, first_name, sex, sal.salary 
from employees emp
join salaries sal on emp.emp_no = sal.emp_no;

select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = 1986;

select dep.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from manager man
join employees emp on man.emp_no = emp.emp_no
join departments dep on man.dept_no = dep.dept_no;

select empdep.dept_no, emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employee_department empdep
join employees emp on empdep.emp_no = emp.emp_no
join departments dep on empdep.dept_no = dep.dept_no;

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

select emp.emp_no, emp.last_name, emp.first_name
from employees emp
join employee_department empdep on emp.emp_no = empdep.emp_no
join departments dep on empdep.dept_no = dep.dept_no
where dep.dept_name = 'Sales';

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees emp
join employee_department empdep on emp.emp_no = empdep.emp_no
join departments dep on empdep.dept_no = dep.dept_no
where dep.dept_name = 'Sales' or dep.dept_name = 'Development';

select last_name, count(last_name)
from employees
group by last_name
order by last_name desc;