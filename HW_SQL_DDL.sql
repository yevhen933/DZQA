--Таблица employees
--	1)Создать таблицу employees
--	-id. serial,  primary key, 
--	-employee_name. Varchar(50), not null
--	2)Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
)

insert into employees(employee_name)
values ('Vlad'),
       ('Misha'),
       ('Vladimir'),
       ('Katiya'),
       ('Vladlen'),
       ('Petiya'),
       ('Leonid'),
       ('Mariya'),
       ('Marina'),
       ('Yevhen'),
       ('Anton'),
       ('Dima'),
       ('Andrey'),
       ('Vladushka'),
       ('Vera'),
       ('Veronika'),
       ('Valera'),
       ('Valeriya'),
       ('Valentina'),
       ('Vaiya'),
       ('Antonina'),
       ('Yevheniya'),
       ('Marusiya'),
       ('Koliya'),
       ('Koliyan'),
       ('Edik'),
       ('Eduard'),
       ('Filipp'),
       ('Zhanna'),
       ('Katya'),
       ('Ekaterina'),
       ('Katusha'),
       ('Vova'),
       ('Vovan'),
       ('Viola'),
       ('Violetta'),
       ('Olga'),
       ('Olia'),
       ('Vetaliy'),
       ('Vetal'),
       ('Bogdan'),
       ('Bodiya'),
       ('Rita'),
       ('Rima'),
       ('Taniya'),
       ('Tatyana'),
       ('Jana'),
       ('Adam'),
       ('Paulina'),
       ('Paula'),
       ('Valdemar'),
       ('Valdek'),
       ('Piotr'),
       ('Oleg'),
       ('Kristina'),
       ('Karina'),
       ('Ruslan'),
       ('Ludmila'),
       ('Vera'),
       ('Nadezhda'),
       ('Lubov'),
       ('Luba'),
       ('Ira'),
       ('Irina'),
       ('Sergiey'),
       ('Eva'),
       ('Vika'),
       ('Viktoriya'),
       ('Kostiya'),
       ('Uliya'),
       ('Ula');

delete from employees
where id = 71;

select * from employees;

--Таблица salary_1
--	3)Создать таблицу salary
--	-id. Serial  primary key,
--	-monthly_salary. Int, not null
--	4)Наполнить таблицу salary 15 строками:

create table salary_1(
	id serial primary key,
	monthly_salary int not null
)

insert into salary_1(monthly_salary)
values (1000),
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

select * from salary_1;

--Таблица employee_salary_1
--	5)Создать таблицу employee_salary_1
--	-id. Serial  primary key,
--	-employee_id. Int, not null, unique
--	-salary_id. Int, not null
--	6)Наполнить таблицу employee_salary_1 40 строками:, в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary_1(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

insert into employee_salary_1(employee_id, salary_id)
values (72, 15),
       (88, 4),
       (77, 5),
       (87, 10),
       (93, 15),
       (73, 11),
       (81, 4),
       (75, 8),
       (99, 9),
       (91, 15),
       (1, 3),
       (2, 7),
       (3, 14),
       (4, 7),
       (5, 1),
       (6, 8),
       (7, 12),
       (8, 13),
       (9, 10),
       (10, 12),
       (11, 13),
       (12, 6),
       (13, 14),
       (14, 11),
       (15, 9),
       (16, 10),
       (17, 5),
       (18, 4),
       (19, 3),
       (20, 7),
       (21, 9),
       (22, 1),
       (23, 8),
       (24, 9),
       (25, 2),
       (26, 14),
       (27, 15),
       (28, 9),
       (29, 10),
       (30, 6);

select * from employee_salary_1;

--Таблица roles_1
--	7)Создать таблицу roles_1
--	-id. Serial  primary key,
--	-role_name. int, not null, unique
--	8)Поменять тип столба role_name с int на varchar(30)
--	9)Наполнить таблицу roles 20 строками:

create table roles_1(
	id serial primary key,
	role_name int not null unique
)

alter table roles_1 alter column role_name type varchar(30);

insert into roles_1(role_name)
values ('Junior_Python_developer'),
       ('Middle_Python_developer'),
       ('Senior_Python_developer'),
       ('Junior_Java_developer'),
       ('Middle_Java_developer'),
       ('Senior_Java_developer'),
       ('Junior_JavaScript_developer'),
       ('Middle_JavaScript_developer'),
       ('Senior_JavaScript_developer'),
       ('Joniur_Manual_QA_engineer'),
       ('Middle_Manual_QA_engineer'),
       ('Senior_Manual_QA_engineer'),
       ('Project_Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales_Manager'),
       ('Junior_Automation_QA_engineer'),
       ('Middle_Automation_QA_engineer'),
       ('Senior_Automation_QA_engineer');

select * from roles_1;

--Таблица roles_employee
--	10)Создать таблицу roles_employee
--	-id. Serial  primary key,
--	-employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--	-role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--	11)Наполнить таблицу roles_employee 40 строками:


create table roles_1_employees(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	 references employees(id),
	foreign key (role_id)
	 references roles_1(id)
)

insert into roles_1_employees(employee_id, role_id)
values (1, 18),
       (2, 16),
       (3, 7),
       (4, 12),
       (5, 1),
       (6, 3),
       (7, 20),
       (8, 12),
       (9, 7),
       (10, 14),
       (11, 9),
       (12, 16),
       (13, 5),
       (14, 19),
       (15, 17),
       (16, 18),
       (17, 13),
       (18, 6),
       (19, 2),
       (20, 13),
       (21, 4),
       (22, 8),
       (23, 10),
       (24, 1),
       (25, 7),
       (26, 9),
       (27, 11),
       (28, 16),
       (29, 17),
       (30, 3),
       (31, 6),
       (32, 10),
       (33, 3),
       (34, 8),
       (35, 16),
       (36, 3),
       (37, 6),
       (38, 5),
       (39, 9),
       (40, 19);

select * from roles_1_employees;
