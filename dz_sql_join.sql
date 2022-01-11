--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary from 
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id;

--2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary from 
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id
join salary_1
on salary_1.id = employee_salary_1.salary_id
where monthly_salary < '2000';

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary from 
employees right join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
where employee_name is null;

--4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary from 
employees right join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
where employee_name is null and monthly_salary < '2000';

--5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, monthly_salary from 
employees left join employee_salary_1
on employees.id = employee_salary_1.employee_id 
left join salary_1
on salary_1.id = employee_salary_1.salary_id
where monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id;

--7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Java%';

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Manual_QA%';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Automation_QA%';

--12. ������� ����� � �������� Junior ������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Senior%';

--15. ������� �������� Java �������������.

select monthly_salary, role_name from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Java%';

--16. ������� �������� Python �������������.

select monthly_salary, role_name from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Junior%Python%developer%';

--18. ������� ����� � �������� Middle JS �������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Middle%JavaScript%developer%';

--19. ������� ����� � �������� Senior Java �������������.

select employee_name, monthly_salary, role_name from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Senior%JavaScript%developer%';

--20. ������� �������� Junior QA ���������.

select monthly_salary, role_name from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Junior%QA%engineer%';

--21. ������� ������� �������� ���� Junior ������������.

select avg (monthly_salary) from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Junior%';

--22. ������� ����� ������� JS �������������.

select sum (monthly_salary) from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%JavaScript_developer%';

--23. ������� ����������� �� QA ���������.

select min (monthly_salary) from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%QA_engineer%';

--24. ������� ������������ �� QA ���������.

select max (monthly_salary) from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%QA%engineer%';

--25. ������� ���������� QA ���������.

select count (employee_name) from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%QA%engineer%';

--26. ������� ���������� Middle ������������.

select count (employee_name) from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%Middle%';

--27. ������� ���������� �������������.

select count (employee_name) from
employees join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.

select sum (monthly_salary) from
salary_1 join employee_salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employee_salary_1.employee_id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������.

select employee_name, role_name, monthly_salary from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.

select employee_name, role_name, monthly_salary from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where monthly_salary between '1700' and '2300'
order by monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.

select employee_name, role_name, monthly_salary from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where monthly_salary < '2300'
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.

select employee_name, role_name, monthly_salary from
employees join employee_salary_1
on employees.id = employee_salary_1.employee_id 
join salary_1
on salary_1.id = employee_salary_1.salary_id
join roles_1_employees
on employees.id = roles_1_employees.employee_id
join roles_1
on roles_1.id = roles_1_employees.role_id
where monthly_salary in (1100,1500,2000)
order by monthly_salary;


