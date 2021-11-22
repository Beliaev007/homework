Postman.
HW_1

������� ������� � Postman.

Protocol: http
IP: 162.55.220.72
Port: 5005

EP_1
Method: GET
EndPoint: /get_method
request url params: 
 name: str
 age: int

response: 
[
    �Str�,
    �Str�
]

==================

EP_2
Method: POST
EndPoint: /user_info_3
request form data: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}


==================

EP_3
Method: GET
EndPoint: /object_info_1
request url params: 
 name: str
 age: int
 weight: int

response: 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}


==================

EP_4
Method: GET
EndPoint: /object_info_2
request url params: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }


==================

EP_5
Method: GET
EndPoint: /object_info_3
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'pets': {'cat':{'name':'Sunny',
                                     'age': 3},
                              'dog':{'name':'Luky',
                                     'age': 4}},
                     'u_salary_1_5_year': salary * 4}
          }


==================

EP_6
Method: GET
EndPoint: /object_info_4
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': int(age),
          'salary': [salary, str(salary * 2), str(salary * 3)]}


==================

EP_7
Method: POST
EndPoint: /user_info_2
request form data: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }


HW_2 Postman


http://162.55.220.72:5005/first
1. ��������� ������.
2. ������ ��� 200
3. ���������, ��� � body �������� ���������� string.

http://162.55.220.72:5005/user_info_3
1. ��������� ������.
2. ������ ��� 200
3. �������� response body � json.
4. ���������, ��� name � ������ ����� name s request (name ����� ������.)
5. ���������, ��� age � ������ ����� age s request (age ����� ������.)
6. ���������, ��� salary � ������ ����� salary s request (salary ����� ������.)
7. �������� request.
8. ���������, ��� name � ������ ����� name s request (name ������� �� request.)
9. ���������, ��� age � ������ ����� age s request (age ������� �� request.)
10. ���������, ��� salary � ������ ����� salary s request (salary ������� �� request.)
11. ������� � ������� �������� family �� response.
12. ��������� ��� u_salary_1_5_year � ������ ����� salary*4 (salary ������� �� request)

http://162.55.220.72:5005/object_info_3
1. ��������� ������.
2. ������ ��� 200
3. �������� response body � json.
4. �������� request.
5. ���������, ��� name � ������ ����� name s request (name ������� �� request.)
6. ���������, ��� age � ������ ����� age s request (age ������� �� request.)
7. ���������, ��� salary � ������ ����� salary s request (salary ������� �� request.)
8. ������� � ������� �������� family �� response.
9. ���������, ��� � ��������� dog ���� ��������� name.
10. ���������, ��� � ��������� dog ���� ��������� age.
11. ���������, ��� �������� name ����� �������� Luky.
12. ���������, ��� �������� age ����� �������� 4.

http://162.55.220.72:5005/object_info_4
1. ��������� ������.
2. ������ ��� 200
3. �������� response body � json.
4. �������� request.
5. ���������, ��� name � ������ ����� name s request (name ������� �� request.)
6. ���������, ��� age � ������ ����� age �� request (age ������� �� request.)
7. ������� � ������� �������� salary �� request.
8. ������� � ������� �������� salary �� response.
9. ������� � ������� 0-� ������� ��������� salary �� response.
10. ������� � ������� 1-� ������� ��������� salary �������� salary �� response.
11. ������� � ������� 2-� ������� ��������� salary �������� salary �� response.
12. ���������, ��� 0-� ������� ��������� salary ����� salary �� request (salary ������� �� request.)
13. ���������, ��� 1-� ������� ��������� salary ����� salary*2 �� request (salary ������� �� request.)
14. ���������, ��� 2-� ������� ��������� salary ����� salary*3 �� request (salary ������� �� request.)
15. ������� � ��������� ���������� name
16. ������� � ��������� ���������� age
17. ������� � ��������� ���������� salary
18. �������� � ��������� ���������� name
19. �������� � ��������� ���������� age
20. �������� � ��������� ���������� salary
21. �������� ���� ������� ������� � ������� �� ������� �������� ������ �� ��������� salary.

http://162.55.220.72:5005/user_info_2
1. �������� �������� salary �� ��������� � request
2. �������� �������� age �� ��������� � age
3. �������� �������� name �� ��������� � name
4. ��������� ������.
5. ������ ��� 200
6. �������� response body � json.
7. �������� request.
8. ���������, ��� json response ����� �������� start_qa_salary
9. ���������, ��� json response ����� �������� qa_salary_after_6_months
10. ���������, ��� json response ����� �������� qa_salary_after_12_months
11. ���������, ��� json response ����� �������� qa_salary_after_1.5_year
12. ���������, ��� json response ����� �������� qa_salary_after_3.5_years
13. ���������, ��� json response ����� �������� person
14. ���������, ��� �������� start_qa_salary ����� salary �� request (salary ������� �� request.)
15. ���������, ��� �������� qa_salary_after_6_months ����� salary*2 �� request (salary ������� �� request.)
16. ���������, ��� �������� qa_salary_after_12_months ����� salary*2.7 �� request (salary ������� �� request.)
17. ���������, ��� �������� qa_salary_after_1.5_year ����� salary*3.3 �� request (salary ������� �� request.)
18. ���������, ��� �������� qa_salary_after_3.5_years ����� salary*3.8 �� request (salary ������� �� request.)
19. ���������, ��� � ��������� person, 1-� ������� �� u_name ����� salary �� request (salary ������� �� request.)
20. ���������, ��� ��� �������� u_age ����� age �� request (age ������� �� request.)
21. ���������, ��� �������� u_salary_5_years ����� salary*4.2 �� request (salary ������� �� request.)
22. ***�������� ���� ������� ������� � ������� �� ������� �������� ������ �� ��������� person.