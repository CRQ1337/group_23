-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, s.monthly_salary 
from employees e
inner join employee_salary on employee_id = e.id  
inner join salary s on salary_id = s.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, s.monthly_salary 
from employees e
inner join employee_salary on employee_id = e.id  
inner join salary s on salary_id = s.id 
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, e.employee_name 
from salary s
left join employee_salary es on s.id = es.salary_id
left outer join employees e on e.id = es.employee_id
where e.employee_name is null

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, e.employee_name 
from salary s
left join employee_salary es on s.id = es.salary_id
left outer join employees e on e.id = es.employee_id
where e.employee_name is null and monthly_salary < 2000

-- 5. Найти всех работников кому не начислена ЗП.
select monthly_salary, e.id, employee_name
from employees e
left join employee_salary es on e.id = es.salary_id
left outer join salary s on s.id = es.employee_id
where es.salary_id is null

-- 6. Вывести всех работников с названиями их должности.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Java%'

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Python%'

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%QA%'

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Manual QA%'

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, r.role_name 
from employees e
inner join roles_employee on employee_id = e.id  
inner join roles r on role_id = r.id 
where role_name like '%Automation QA%'

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior%'

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Middle%'

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Senior%'

-- 15. Вывести зарплаты Java разработчиков
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Java developer%'

-- 16. Вывести зарплаты Python разработчиков
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%Python developer%'

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, s.monthly_salary
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Junior Python developer'

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Middle JavaScript developer'

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like 'Senior JavaScript developer'

-- 20. Вывести зарплаты Junior QA инженеров
select e.id, employee_name, s.monthly_salary, role_name
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 21. Вывести среднюю зарплату всех Junior специалистов
select AVG(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 22. Вывести сумму зарплат JS разработчиков
select Sum(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%JavaScript%'

-- 23. Вывести минимальную ЗП QA инженеров
select Min(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 24. Вывести максимальную ЗП QA инженеров
select Max(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%QA%'

-- 25. Вывести количество QA инженеров
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%QA%'

-- 26. Вывести количество Middle специалистов.
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%Middle%'

-- 27. Вывести количество разработчиков
select Count(e.id)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
where role_name like '%developer%'

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select Sum(s.monthly_salary)
from employees e 
inner join roles_employee re on re.employee_id = e.id  
inner join roles r on re.role_id = r.id 
inner join employee_salary es on es.employee_id = e.id
inner join salary s on es.salary_id = s.id 
where role_name like '%developer%'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
order by s.monthly_salary asc

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary < 2300
order by s.monthly_salary asc

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, s.monthly_salary 
from employees e
join roles_employee re on re.employee_id = e.id  
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc
