-- ������� employees
--1.������� ������� employees
-- -id serial,  primary key,
-- -employee_name Varchar(50), not null
--2.��������� ������� employee 70 ��������.
 
CREATE TABLE employees (
   id serial primary key,
   employee_name varchar(50) not null
);

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '��������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '��������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '��������');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '��������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, 'Ը���');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '���������');

insert into employees (id, employee_name) 
values (default, '����������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '�������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '�����');

insert into employees (id, employee_name) 
values (default, '���');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '��������');

insert into employees (id, employee_name) 
values (default, '����');

insert into employees (id, employee_name) 
values (default, '���');

insert into employees (id, employee_name) 
values (default, '������');

insert into employees (id, employee_name) 
values (default, '���');

-- ������� salary
--3.������� ������� salary
-- -id. Serial  primary key,
-- -monthly_salary. Int, not null
--4.��������� ������� salary 15 ��������.
-- -1000
-- -1100
-- -1200
-- -1300
-- -1400
-- -1500
-- -1600
-- -1700
-- -1800
-- -1900
-- -2000
-- -2100
-- -2200
-- -2300
-- -2400
-- -2500

CREATE TABLE salary (
   id serial primary key,
   monthly_salary Int not null
);

insert into salary (id, monthly_salary) 
values (default, 1000);

insert into salary (id, monthly_salary) 
values (default, 1100);

insert into salary (id, monthly_salary) 
values (default, 1200);

insert into salary (id, monthly_salary) 
values (default, 1300);

insert into salary (id, monthly_salary) 
values (default, 1400);

insert into salary (id, monthly_salary) 
values (default, 1500);

insert into salary (id, monthly_salary) 
values (default, 1600);

insert into salary (id, monthly_salary) 
values (default, 1700);

insert into salary (id, monthly_salary) 
values (default, 1800);

insert into salary (id, monthly_salary) 
values (default, 1900);

insert into salary (id, monthly_salary) 
values (default, 2000);

insert into salary (id, monthly_salary) 
values (default, 2100);

insert into salary (id, monthly_salary) 
values (default, 2200);

insert into salary (id, monthly_salary) 
values (default, 2300);

insert into salary (id, monthly_salary) 
values (default, 2400);

insert into salary (id, monthly_salary) 
values (default, 2500);


-- ������� employee_salary
--5.������� ������� employee_salary
-- -id. Serial  primary key,
-- -employee_id. Int, not null, unique
-- -salary_id. Int, not null
--6.��������� ������� employee_salary 40 ��������:
-- -� 10 ����� �� 40 �������� �������������� employee_id

CREATE TABLE employee_salary (
  id serial primary key,
  employee_id Int not null unique,
  salary_id Int not null
);

insert into employee_salary (id, employee_id, salary_id) values 
(default, 3, 7) , (default, 1, 4) , (default, 5, 9) , (default, 40, 13) , (default, 23, 4),
(default, 11, 2) , (default, 52, 10) , (default, 15, 13) , (default, 26, 4) , (default, 16, 1),
(default, 33, 7) , (default, 70, 3) , (default, 12, 4) , (default, 22, 9) , (default, 2, 10),
(default, 4, 2) , (default, 9, 10) , (default, 14, 8) , (default, 19, 5) , (default, 44, 3),
(default, 69, 9) , (default, 58, 8) , (default, 43, 4) , (default, 39, 10) , (default, 53, 9),
(default, 66, 12) , (default, 37, 11) , (default, 8, 4) , (default, 48, 9) , (default, 57, 13),
(default, 72, 3) , (default, 81, 9) , (default, 78, 8) , (default, 76, 12) , (default, 85, 5),
(default, 99, 5) , (default, 92, 7) , (default, 95, 2) , (default, 84, 13) , (default, 90, 14);

-- ������� roles
--7.������� ������� roles
-- -id Serial  primary key,
-- -role_name int not null unique
--8.�������� ��� ������ role_name � int �� varchar(30)
--9.��������� ������� roles 20 ��������:

CREATE TABLE roles (
  id serial primary key,
  role_name Int not null unique
 );

ALTER TABLE roles 
ALTER COLUMN role_name type varchar
using role_name::varchar(30);

insert into roles (id, role_name) values 
(default, 'Junior Python developer') , (default, 'Middle Python developer'), (default, 'Senior Python developer') , 
(default, 'Junior Java developer'), (default, 'Middle Java developer') , (default, 'Senior Java developer'),
(default, 'Junior JavaScript developer') , (default, 'Middle JavaScript developer'),(default, 'Senior JavaScript developer'), 
(default, 'Junior Manual QA engineer') , (default, 'Middle Manual QA engineer') , (default, 'Senior Manual QA engineer'),
(default, 'Project Manager') , (default, 'Designer') , (default, 'HR') , (default, 'CEO'), (default, 'Sales manager'),
(default, 'Junior Automation QA engineer') , (default, 'Middle Automation QA engineer') , (default, 'Senior Automation QA engineer');

--������� roles_employee
--10.������� ������� roles_employee
-- -id. Serial  primary key,
-- -employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- -role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--11.��������� ������� roles_employee 40 ��������:

CREATE TABLE roles_employee (
  id serial primary key,
  employee_id Int not null unique,
  role_id Int not null,
  foreign key (employee_id) 
  	references employees(id),
  foreign key (role_id) 
  	references roles(id)
);

insert into roles_employee (id, employee_id, role_id) values 
(default, 7, 2) , (default, 20, 4) , (default, 3, 9) , (default, 5, 13) , (default, 23, 4),
(default, 11, 2) , (default, 10, 9) , (default, 22, 13) , (default, 21, 3) , (default, 34, 4),
(default, 6, 7) , (default, 15, 4) , (default, 17, 3) , (default, 28, 8) , (default, 19, 20),
(default, 63, 17) , (default, 65, 15) , (default, 37, 12) , (default, 39, 6) , (default, 43, 14),
(default, 58, 19) , (default, 24, 20) , (default, 44, 17) , (default, 29, 5) , (default, 27, 7),
(default, 69, 16) , (default, 70, 1) , (default, 55, 8) , (default, 60, 10) , (default, 41, 4),
(default, 50, 11) , (default, 32, 7) , (default, 13, 3) , (default, 16, 9) , (default, 12, 12),
(default, 26, 5) , (default, 8, 3) , (default, 66, 3) , (default, 31, 3) , (default, 56, 8);
