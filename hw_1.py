#Создать переменные
var_string = 'Ilya'
var_int = 30
var_float = 30.12
var_bytes = b'blabla'
var_list = ['blabla', 30]
var_tuple = (12, 13)
var_dict = {'key1': 12,
            'name': 'Ilya'}
var_set = set('Ilya')
var_frozenset = frozenset('Viktor')

#Вывести переменные с типом
print('Var_string type:', type(var_string))
print('Var_int type:', type(var_int))
print('Var_float type:', type(var_float))
print('Var_bytes:', type(var_bytes))
print('Var_list:', type(var_list))
print('Var_tuple:', type(var_tuple))
print('Var_dict:', type(var_dict))
print('Var_set:', type(var_set))
print('Var_frozenset:', type(var_frozenset))

a = 'bro'
b = ' ty pro'
c = a+b
print(c)
print(var_string + str(var_int))
print(var_string, str(var_int))