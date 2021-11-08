-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, s.monthly_salary 
from employees e
inner join employee_salary on employee_id = e.id  
inner join salary s on salary_id = s.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, s.monthly_salary 
from employees e
inner join employee_salary on employee_id = e.id  
inner join salary s on salary_id = s.id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, e.employee_name 
from salary s
left join employee_salary es on s.id = es.salary_id
left outer join employees e on e.id = es.employee_id
where e.employee_name is null

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, e.employee_name 
from salary s
left join employee_salary es on s.id = es.salary_id
left outer join employees e on e.id = es.employee_id
where e.employee_name is null and monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select monthly_salary, e.id, employee_name
from employees e
left join employee_salary es on e.id = es.salary_id
left outer join salary s on s.id = es.employee_id
where es.salary_id is null

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Java%'

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Python%'

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%QA%'

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Manual QA%'

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Automation QA%'

-- 12. ������� ����� � �������� Junior ������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior%'

-- 13. ������� ����� � �������� Middle ������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Middle%'

-- 14. ������� ����� � �������� Senior ������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Senior%'

-- 15. ������� �������� Java �������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Java developer%'

-- 16. ������� �������� Python �������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Python developer%'

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Junior Python developer'

-- 18. ������� ����� � �������� Middle JS �������������
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Middle JavaScript developer'

-- 19. ������� ����� � �������� Senior Java �������������
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Senior JavaScript developer'

-- 20. ������� �������� Junior QA ���������
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 21. ������� ������� �������� ���� Junior ������������
select AVG(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 22. ������� ����� ������� JS �������������
select Sum(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%JavaScript%'

-- 23. ������� ����������� �� QA ���������
select Min(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 24. ������� ������������ �� QA ���������
select Max(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 25. ������� ���������� QA ���������
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%QA%'

-- 26. ������� ���������� Middle ������������.
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%Middle%'

-- 27. ������� ���������� �������������
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%developer%'

-- 28. ������� ���� (�����) �������� �������������.
select Sum(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%developer%'

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
order by s.monthly_salary asc

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary < 2300
order by s.monthly_salary asc

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc