
--1) Создать таблицу employees
create table employees (
id serial primary key,
employee_name varchar (50) not null
);
select * from employees

--2) Наполнить таблицу employee 70 строками.
insert into employees (id, employee_name)
values(default, 'Viktor'),
		(default, 'Pavel'),
		(default, 'Masha'),
		(default, 'Misha'),
		(default, 'Natasha'),
		(default, 'Alex'),
		(default, 'Alexander'),
		(default, 'Vasya'),
		(default, 'Sergey'),
		(default, 'Galya'),
		(default, 'Andrew'),
		(default, 'Tanya'),
		(default, 'Nastya'),
		(default, 'Nadya'),
		(default, 'Pasha'),
		(default, 'Pablo'),
		(default, 'Eskobar'),
		(default, 'Brad'),
		(default, 'Batman'),
		(default, 'Superman'),
		(default, 'Spiderman'),
		(default, 'Boderman'),
		(default, 'Fred'),
		(default, 'Durst'),
		(default, 'Vas'),
		(default, 'Borland'),
		(default, 'John'),
		(default, 'Otto'),
		(default, 'Sam'),
		(default, 'Rivers'),
		(default, 'Jared'),
		(default, 'Leto'),
		(default, 'Shanon'),
		(default, 'Angelin'),
		(default, 'Jana'),
		(default, 'Lena'),
		(default, 'Drakula'),
		(default, 'Galustyn'),
		(default, 'Blabla'),
		(default, 'Oxxymiron'),
		(default, 'Basta'),
		(default, 'Shokk'),
		(default, 'RomaGigan'),
		(default, 'Gigan'),
		(default, 'Garik'),
		(default, 'Timur'),
		(default, 'Ilnur'),
		(default, 'Ilnar'),
		(default, 'Irik'),
		(default, 'Sviat'),
		(default, 'Venom'),
		(default, 'Karnage'),
		(default, 'Kitana'),
		(default, 'Sonya'),
		(default, 'Kabal'),
		(default, 'LuKeng'),
		(default, 'Striker'),
		(default, 'Sheeva'),
		(default, 'Goro'),
		(default, 'Shao Kan'),
		(default, 'ShanTsun'),
		(default, 'VictorTsoy'),
		(default, 'Khovansky'),
		(default, 'Syrax'),
		(default, 'Sector'),
		(default, 'Sindel'),
		(default, 'Volf')
		;
	
	--3) Создать таблицу salary
		create table salary (
		id serial primary key,
		monthly_salary int not null);
	
	--4) Наполнить таблицу salary 15 строками:
	insert into salary (id, monthly_salary)
	values (default, 1000),
		   (default, 1100),
		   (default, 1200),
		   (default, 1300),
		   (default, 1400),
		   (default, 1500),
		   (default, 1600),
		   (default, 1700),
		   (default, 1800),
		   (default, 1900),
		   (default, 2000),
		   (default, 2100),
		   (default, 2200),
		   (default, 2300),
		   (default, 2400),
		   (default, 2500);
		  
--5) Создать таблицу employee_salary		  
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6) Наполнить таблицу employee_salary 40 строками:
-- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 2, 2),
		(default, 3, 3),
		(default, 4, 4),
		(default, 5, 5),
		(default, 6, 6),
		(default, 7, 7),
		(default, 8, 8),
		(default, 9, 9),
		(default, 10, 10),
		(default, 11, 11),
		(default, 12, 12),
		(default, 13, 13),
		(default, 14, 14),
		(default, 15, 15),
		(default, 16, 16),
		(default, 17, 17),
		(default, 18, 18),
		(default, 19, 19),
		(default, 20, 20),
		(default, 21, 21),
		(default, 22, 22),
		(default, 23, 23),
		(default, 24, 24),
		(default, 25, 25),
		(default, 26, 26),
		(default, 27, 27),
		(default, 28, 28),
		(default, 300, 30),
		(default, 310, 31),
		(default, 320, 33),
		(default, 80, 34),
		(default, 666, 35),
		(default, 555, 36),
		(default, 444, 37),
		(default, 333, 38),
		(default, 222, 39);
	
	
	insert into employee_salary (id, employee_id, salary_id)
		values (default, 777, 29),
		     (default, 888, 32),
			 (default, 999, 40)
	

--7) Создать таблицу roles
create table roles (
id serial primary key,
role_name int not null unique
);

--8) Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar (30)
using role_name::varchar (30);

--9) Наполнить таблицу roles 20 строками:
insert into roles (id, role_name)
values (default, 'Junior_Python_developer'),
		(default, 'Middle_Python_developer'),
		(default, 'Senior_Python_developer'),
		(default, 'Junior_Java_developer'),
		(default, 'Middle_Java_developer'),
		(default, 'Senior_Java_developer'),
		(default, 'Junior_JavaScript_developer'),
		(default, 'Middle_JavaScript_developer'),
		(default, 'Senior_JavaScript_developer'),
		(default, 'Junior_Manual_QA_engineer'),
		(default, 'Middle_Manual_QA_engineer'),
		(default, 'Senior_Manual_QA_engineer'),
		(default, 'Project_Manager'),
		(default, 'Designer'),
		(default, 'HR'),
		(default, 'CEO'),
		(default, 'Sales_manager'),
		(default, 'Junior_Automation_QA_engineer'),
		(default, 'Middle_Automation_QA_engineer'),
		(default, 'Senior_Automation_QA_engineer');


-- 10) Создать таблицу roles_employee
create table roles_employee (
id serial primary key, 
employee_id int not null unique,
role_id int not null, 
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);
insert into roles_employee (id, employee_id, role_id)
values (default, 1, 1),
	   (default, 2, 2),
	   (default, 3, 3),
	   (default, 4, 4),
	   (default, 5, 5),
	   (default, 6, 6),
	   (default, 7, 7),
	   (default, 8, 8),
	   (default, 9, 9),
	   (default, 10, 10),
	   (default, 11, 11),
	   (default, 12, 12),
	   (default, 13, 13),
	   (default, 14, 14),
	   (default, 15, 15),
	   (default, 16, 16),
	   (default, 17, 17),
	   (default, 18, 18),
	   (default, 19, 19),
	   (default, 20, 20),
	   (default, 21, 1),
	   (default, 22, 2),
	   (default, 23, 3),
	   (default, 24, 4),
	   (default, 25, 5),
	   (default, 26, 6),
	   (default, 27, 7),
	   (default, 28, 8),
	   (default, 29, 9),
	   (default, 30, 10),
	   (default, 31, 11),
	   (default, 32, 12),
	   (default, 33, 13),
	   (default, 34, 14),
	   (default, 35, 15),
	   (default, 36, 16),
	   (default, 37, 17),
	   (default, 38, 18),
	   (default, 39, 19),
	   (default, 40, 20);
	
























