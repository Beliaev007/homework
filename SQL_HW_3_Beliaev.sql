--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select s.monthly_salary, e.employee_name 
from salary s inner join employee_salary es
on s.id = es.salary_id 
inner join employees e 
on e.id = es.employee_id; 


-- 2. Вывести всех работников у которых ЗП меньше 2000.

select s.monthly_salary, e.employee_name 
from salary s inner join employee_salary es
on s.id = es.salary_id 
inner join employees e 
on e.id = es.employee_id 
where s.monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
left join employees e 
on e.id = es.employee_id 
where e.employee_name is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
right join employees e 
on e.id = es.employee_id 
where s.monthly_salary < 2000
and e.employee_name is null;


 --5. Найти всех работников кому не начислена ЗП.

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
right join employees e 
on e.id = es.employee_id 
where s.monthly_salary is null;




 --6. Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id ;



-- 7. Вывести имена и должность только Java разработчиков.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Java%'




 --8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Python%';




 --9. Вывести имена и должность всех QA инженеров.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%QA%';




 --10. Вывести имена и должность ручных QA инженеров.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Manual_QA%';




 --11. Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Automation_QA%';




 --12. Вывести имена и зарплаты Junior специалистов

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior%' 



 --13. Вывести имена и зарплаты Middle специалистов

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Middle%';




 --14. Вывести имена и зарплаты Senior специалистов

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Senior%';




 --15. Вывести зарплаты Java разработчиков

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Java%';



 --16. Вывести зарплаты Python разработчиков

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Python%';



  --17. Вывести имена и зарплаты Junior Python разработчиков

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior_Python%';



 --18. Вывести имена и зарплаты Middle JS разработчиков

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Middle_JavaScript%';





 --19. Вывести имена и зарплаты Senior Java разработчиков

select e.employee_name, s.monthly_salary
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Senior_Java%';





 --20. Вывести зарплаты Junior QA инженеров

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior%%QA%';




 --21. Вывести среднюю зарплату всех Junior специалистов

select avg(s.monthly_salary) as avg_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior%';




 --22. Вывести сумму зарплат JS разработчиков

select sum(s.monthly_salary) as sum_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%JavaScript_developer';




 --23. Вывести минимальную ЗП QA инженеров

select min(s.monthly_salary) as min_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%QA_engineer%';



 --24. Вывести максимальную ЗП QA инженеров

select max(s.monthly_salary) as max_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%QA_engineer%';



 --25. Вывести количество QA инженеров
 
 select count(role_name)
 from roles
 where role_name like '%QA_engineer%';



 
 --26. Вывести количество Middle специалистов.

 select count(role_name)
 from roles
 where role_name like '%Middle%';



 --27. Вывести количество разработчиков

 select count(role_name)
 from roles
 where role_name like '%developer%';
 
 


 --28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select sum(s.monthly_salary) as sum_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%developer%';
 
 
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
inner join roles_employee re 
on e.id  = re.employee_id 
inner join roles r
on re.role_id = r.id 
inner join employee_salary es 
on es.employee_id = e.id 
inner join salary s 
on es.salary_id = s.id 
order by s.monthly_salary 


 
 
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
inner join roles_employee re 
on e.id  = re.employee_id 
inner join roles r
on re.role_id = r.id 
inner join employee_salary es 
on es.employee_id = e.id 
inner join salary s 
on es.salary_id = s.id 
where s.monthly_salary between 1700 and 2300;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
inner join roles_employee re 
on e.id  = re.employee_id 
inner join roles r
on re.role_id = r.id 
inner join employee_salary es 
on es.employee_id = e.id 
inner join salary s 
on es.salary_id = s.id 
where s.monthly_salary < 2300
order by s.monthly_salary 




--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
inner join roles_employee re 
on e.id  = re.employee_id 
inner join roles r
on re.role_id = r.id 
inner join employee_salary es 
on es.employee_id = e.id 
inner join salary s 
on es.salary_id = s.id 
where s.monthly_salary in(1100, 1500, 2000)
order by s.monthly_salary 
