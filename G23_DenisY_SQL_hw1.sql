
-- 1. Вывести все поля и все строки.
SELECT * FROM public.students;

-- 2. Вывести всех студентов в таблице
SELECT id, name
FROM public.students;

-- 3. Вывести только Id пользователей
SELECT id
FROM public.students;

-- 4. Вывести только имя пользователей
SELECT name
FROM public.students;

-- 5. Вывести только email пользователей
SELECT email
FROM public.students;

-- 6. Вывести имя и email пользователей
SELECT name, emai
FROM public.students;

-- 7. Вывести id, имя, email и дату создания пользователей
SELECT id, name, email, created_on
FROM public.students;

-- 8. Вывести пользователей где password 12333
SELECT * FROM public.students WHERE password='12333';

-- 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT * FROM public.students WHERE created_on='2021-03-26 00:00:00';

-- 10. Вывести пользователей где в имени есть слово Анна
SELECT * FROM public.students 
WHERE name LIKE '%Анна%';

-- 11. Вывести пользователей где в имени в конце есть 8
SELECT * FROM public.students 
WHERE name LIKE '%8';

-- 12. Вывести пользователей где в имени в есть буква а
SELECT * FROM public.students 
WHERE name LIKE '%a%';

-- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM public.students 
WHERE created_on='2021-07-12 00:00:00';

-- 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' and password='1m313';

-- 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' and name like '%Andrey%';

-- 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' AND name like '%8%';

-- 17. Вывести пользователя у которых id равен 10
SELECT * FROM public.students
WHERE ID = 10;

-- 18. Вывести пользователя у которых id равен 53
SELECT * FROM public.students
WHERE ID = 53;

-- 19. Вывести пользователя у которых id больше 40
SELECT * FROM public.students
WHERE ID > 40;

-- 20. Вывести пользователя у которых id меньше 30
SELECT * FROM public.students
WHERE ID < 30;

-- 21. Вывести пользователя у которых id меньше 27 или больше 88
SELECT * FROM public.students
WHERE ID < 27 OR ID > 88;

-- 22. Вывести пользователя у которых id меньше либо равно 37
SELECT * FROM public.students
WHERE ID <= 37;

-- 23. Вывести пользователя у которых id больше либо равно 37
SELECT * FROM public.students
WHERE ID >= 37;

-- 24. Вывести пользователя у которых id больше 80 но меньше 90
SELECT * FROM public.students
WHERE ID > 80 and ID < 90;

-- 25. Вывести пользователя у которых id между 80 и 90
SELECT * FROM public.students
WHERE ID BETWEEN 80 AND 90;

-- 26. Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * FROM public.students
WHERE password IN ('12333' , '1m313' , '123313');

-- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM public.students
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. Вывести минимальный id
SELECT MIN(id) FROM public.students;

-- 29. Вывести максимальный.
SELECT MAX(id) FROM public.students;

-- 30. Вывести количество пользователей
SELECT COUNT(id) FROM public.students;

-- 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользователя.
SELECT id, name, created_on
FROM public.students
ORDER BY created_on ASC;

-- 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользователя.
SELECT id, name, created_on
FROM public.students
ORDER BY created_on DESC;
