--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select s.monthly_salary, e.employee_name 
from salary s inner join employee_salary es
on s.id = es.salary_id 
inner join employees e 
on e.id = es.employee_id; 


-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select s.monthly_salary, e.employee_name 
from salary s inner join employee_salary es
on s.id = es.salary_id 
inner join employees e 
on e.id = es.employee_id 
where s.monthly_salary < 2000;

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
left join employees e 
on e.id = es.employee_id 
where e.employee_name is null;


-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
right join employees e 
on e.id = es.employee_id 
where s.monthly_salary < 2000
and e.employee_name is null;


 --5. ����� ���� ���������� ���� �� ��������� ��.

select s.monthly_salary, e.employee_name 
from salary s left join employee_salary es
on s.id = es.salary_id 
right join employees e 
on e.id = es.employee_id 
where s.monthly_salary is null;




 --6. ������� ���� ���������� � ���������� �� ���������.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id ;



-- 7. ������� ����� � ��������� ������ Java �������������.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Java%'




 --8. ������� ����� � ��������� ������ Python �������������.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Python%';




 --9. ������� ����� � ��������� ���� QA ���������.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%QA%';




 --10. ������� ����� � ��������� ������ QA ���������.

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Manual_QA%';




 --11. ������� ����� � ��������� ��������������� QA

select e.employee_name, r.role_name
from employees e inner join roles_employee re 
on e.id = re.employee_id 
inner join roles r
on re.id = r.id 
where r.role_name like '%Automation_QA%';




 --12. ������� ����� � �������� Junior ������������

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



 --13. ������� ����� � �������� Middle ������������

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




 --14. ������� ����� � �������� Senior ������������

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




 --15. ������� �������� Java �������������

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Java%';



 --16. ������� �������� Python �������������

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Python%';



 --17. ������� ����� � �������� Junior Python �������������

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



 --18. ������� ����� � �������� Middle JS �������������

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





 --19. ������� ����� � �������� Senior Java �������������

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





 --20. ������� �������� Junior QA ���������

select s.monthly_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior%%QA%';




 --21. ������� ������� �������� ���� Junior ������������

select avg(s.monthly_salary) as avg_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior%';




 --22. ������� ����� ������� JS �������������

select sum(s.monthly_salary) as sum_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%JavaScript_developer';




 --23. ������� ����������� �� QA ���������

select min(s.monthly_salary) as min_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%QA_engineer%';



 --24. ������� ������������ �� QA ���������

select max(s.monthly_salary) as max_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%QA_engineer%';



 --25. ������� ���������� QA ���������
 
 select count(role_name)
 from roles
 where role_name like '%QA_engineer%';



 
 --26. ������� ���������� Middle ������������.

 select count(role_name)
 from roles
 where role_name like '%Middle%';



 --27. ������� ���������� �������������

 select count(role_name)
 from roles
 where role_name like '%developer%';
 
 


 --28. ������� ���� (�����) �������� �������������.
 
 select sum(s.monthly_salary) as sum_salary
from roles_employee re 
inner join roles r
on re.id = r.id 
inner join employee_salary es 
on re.employee_id = es.employee_id 
inner join salary s 
on es.salary_id = s.id 
where r.role_name like '%developer%';
 
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������

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


 
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

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

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

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




 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

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
