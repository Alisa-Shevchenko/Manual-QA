--������� employees

	--������� ������� employees
	-- id. serial,  primary key,
	-- employee_name. Varchar(50), not null
	-- ��������� ������� employee 70 ��������.

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
)

insert into employees(employee_name)
values 
	   ('������ ����'),
       ('��������� ������'),
       ('����� ��������'),
       ('������ ������'),
       ('�������� �����'),
       ('���� ����'),
       ('����� ����'),
       ('����� �����'),
       ('������ ��������'),
       ('����� �������'),
       ('�������� ��������'),
       ('���� ����'),
       ('������ ��������'),
       ('����� ������'),
       ('��������� ��������'),
       ('��������� ����'),
       ('���� ����'),
       ('��������� ��������'),
       ('�������� ��������'),
       ('������ �������'),
       ('����� �����'),
       ('���� �������'),
       ('�������� ������'),
       ('����� �����'),
       ('��������� ����'),
       ('���� �������'),
       ('�������� �������'),
       ('����� �����'),
       ('���� �������'),
       ('�������� ������'),
       ('������ ������'),
       ('����� �������'),
       ('����� �������'),
       ('��������� ������'),
       ('����� �����'),
       ('������ ������'),
       ('������ ������'),
       ('���� ����'),
       ('���� �������'),
       ('������ �����'),
       ('������ �����'),
       ('������ ��������'),
       ('����� ������'),
       ('�������� ������'),
       ('������ ������'),
       ('���� ������'),
       ('����� �������'),
       ('�������� �������'),
       ('������ �������'),
       ('�������� �����'),
       ('������ ��������'),
       ('���� ����'),
       ('�������� �������'),
       ('�������� �������'),
       ('������ ��������'),
       ('����� �������'),
       ('��������� �������'),
       ('������ ������'),
       ('����� ������'),
       ('����� ������'),
       ('������ ������'),
       ('��������� �������'),
       ('����� ��������'),
       ('������ ������'),
       ('������ ������'),
       ('���� ������'),
       ('������ ������'),
       ('������ ��������'),
       ('������ ����'),
       ('������ �������');
       
--������� salary

	--������� ������� salary
	--id. Serial  primary key,
	-- monthly_salary. Int, not null
	--��������� ������� salary 16 ��������:
	--1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500
      
create table salary(
	id serial primary key,
	monthly_salary Int not null
)

insert into salary(monthly_salary)
values
		(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
--������� employee_salary
	--������� ������� employee_salary
	--id. Serial  primary key,
	--employee_id. Int, not null, unique
	--salary_id. Int, not null
	--��������� ������� employee_salary 40 ��������:
	--� 10 ����� �� 40 �������� �������������� employee_id

	create table employee_salary(
		id serial  primary key,
		employee_id Int not null unique,
		salary_id Int not null
)
		
insert into employee_salary(employee_id,salary_id)
values
		(87,2),
		(98,3),
		(102,1),
		(76,12),
		(71,8),
		(77,10),
		(95,16),
		(110,11),
		(103,2),
		(75,3),
		(1,1),
		(7,8),
		(56,7),
		(65,14),
		(4,15),
		(9,7),
		(11,5),
		(53,4),
		(28,1),
		(44,2),
		(43,3),
		(33,9),
		(31,14),
		(70,16),
		(69,13),
		(64,8),
		(14,1),
		(21,2),
		(39,11),
		(52,10),
		(67,9),
		(5,6),
		(8,15),
		(3,4),
		(38,2),
		(47,13),
		(59,11),
		(13,9),
		(49,6),
		(18,14);
--������� roles

	--������� ������� roles
	--id. Serial  primary key,
	--role_name. int, not null, unique
	--�������� ��� ������ role_name � int �� varchar(30)
	--��������� ������� roles 20 ��������:

create table roles(
id serial primary key,
role_name varchar(30) not null unique
)

insert into roles(role_name)
values
		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
--������� roles_employee

	--������� ������� roles_employee
	--id. Serial  primary key,
	--employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
	--role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
	--��������� ������� roles_employee 40 ��������:
	
create table roles_employee(
 id serial primary key,
 employee_id Int not null unique,
 role_id Int not null,
 foreign key (employee_id)
 	references employees(id),
 foreign key (role_id)
 	references roles(id)
)

insert into roles_employee(employee_id,role_id)
values
		(1,13),
		(2,20),
		(3,9),
		(4,7),
		(5,3),
		(6,8),
		(7,7),
		(8,9),
		(9,5),
		(10,3),
		(11,7),
		(12,12),
		(13,4),
		(14,6),
		(15,8),
		(16,1),
		(17,17),
		(18,1),
		(19,2),
		(20,8),
		(21,11),
		(22,5),
		(23,4),
		(24,7),
		(25,2),
		(26,20),
		(27,18),
		(28,19),
		(29,16),
		(30,1),
		(31,4),
		(32,7),
		(33,9),
		(34,11),
		(35,1),
		(36,2),
		(37,11),
		(38,20),
		(39,19),
		(40,15);

		
		