# 1) Создать переменную count со значением 0
count = 0

# 2) Создать переменную range_count со значением 10
range_count = 10

# 3) Создать переменную for_count со значением 0
for_count = 0

# 4) Создать переменную run  со значением True
run = True
import time

# 5) Сделать цикл while который будет работать пока run.
# Тело цикла: 5.1 Выводить в консоль “Hello Cycle”
# while run:
#     print('Hello,cyrcle')
#     time.sleep(.500)
#
# # 6)Сделать цикл while который будет работать пока run
# #Тело цикла:
# 	#6.1 Выводить в консоль (“Step =”, count)
# 	#6.2 Переменной count прибавлять 1 с присвоением.
# while run:
#     count +=1
#     print('Step =', count)
#     time.sleep(.500)

# # 7) Сделать цикл while который будет работать пока count < range_count
# #Тело цикла:
# 	#7.1 Выводить в консоль (“Step =”, count)
# 	#7.2 Переменной count прибавлять 1 с присвоением.
# while count < range_count:
#     count += 1
#     print('Step1 =', count)
#     time.sleep(.500)

# 8)Сделать цикл while который будет работать пока count < range_count
#Тело цикла:
	#8.1 Выводить в консоль (“Step =”, count)
	#8.2 Переменной count прибавлять 1 с присвоением.
	#8.3 Сделать if с условием, если count равен 3 то выводить в консоль (“Step =”, count, ‘If body’)
# while count < range_count:
#     count += 1
#     print('Step=', count)
#     time.sleep(.500)
#     if count == 3:
#         print('Step =', count, 'If body')

# 9)Сделать цикл while который будет работать пока run
#Тело цикла:
	#9.1 Выводить в консоль (“Step =”, count)
	#9.2 Переменной count прибавлять 1 с присвоением.
	#9.2 Сделать if с условием, если count равен range_count то цикл остановится.
	#9.3 В теле if вывести в консоль (“STOP”, count)
# while run:
#     count += 1
#     print('Step =', count)
#     time.sleep(.500)
#     if count == range_count:
#         print('STOP', count)
#         break
#
# # 10)Циклы For
# #Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от for_count  до range_count
#
# #10.1 Вывести в консоль (‘Step =’, item)
# for item in range(for_count, range_count):
#     print('Step =', item)
#     time.sleep(.500)
#11) Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от 0 до 30
#11.1 Вывести в консоль (‘Step =’, item)
#11.2 Сделать if с условием, если item равен  5, то вывести в консоль (‘Item =’, item).
#11.3 Сделать if с условием, если item равен  10, то вывести в консоль (‘Item =’, item).
#11.4 Сделать if с условием, если item меньше 4, то вывести в консоль (‘Item <’, item).
#11.5 Сделать if с условием, если item больше или равно 27, то вывести в консоль (‘Item >=’, item)
# for item in range(0, 30):
#     print ('Step =', item)
#     time.sleep(.500)
#     if item == 5:
#         print('Item =', item)
#     if item == 10:
#         print('Item =', item)
#     if item < 4:
#         print('Item<', item)
#     if item >= 27:
#         print('Item >=', item)

#12. Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от 0 до range_count +1
# 12.1 Вывести в консоль (‘Step =’, item)
# 12.2 Сделать if с условием, если item равен  7.
	 #- В теле if создать переменную inner_count равную 0
	 #- В теле if вывести в консоль (‘-- inner_count =’, inner_count)
	 #- В теле if сделать ещё одни цикл for с переменной inner_item который будет работать пока счётчик range досчитает от 0 до item.
	#Тело внутреннего цикла For:
		#-- Вывести в консоль (‘-------- Inner_Step =’, inner_item)
		#-- Сделать if если inner_item равен 5, то в inner_count присвоить inner_item.
	#- За пределами тела предыдущего цикла вывести в консоль (‘-- inner_count =’, inner_count)

for item in range(0, range_count +1):
    print:('Step =', item)
    time.sleep(.500)
    if item == 7:
        inner_count = 0
        print('---inner_count=', inner_count)
        for inner_item in range(0, item):
            time.sleep(.500)
            print('-------- Inner_Step =', inner_item)
            if inner_item == 5:
                inner_count = inner_item
        print('-- inner_count =', inner_count)












