
-- 1. ������� ��� ���� � ��� ������.
SELECT * FROM public.students;

-- 2. ������� ���� ��������� � �������
SELECT id, name
FROM public.students;

-- 3. ������� ������ Id �������������
SELECT id
FROM public.students;

-- 4. ������� ������ ��� �������������
SELECT name
FROM public.students;

-- 5. ������� ������ email �������������
SELECT email
FROM public.students;

-- 6. ������� ��� � email �������������
SELECT name, emai
FROM public.students;

-- 7. ������� id, ���, email � ���� �������� �������������
SELECT id, name, email, created_on
FROM public.students;

-- 8. ������� ������������� ��� password 12333
SELECT * FROM public.students WHERE password='12333';

-- 9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT * FROM public.students WHERE created_on='2021-03-26 00:00:00';

-- 10. ������� ������������� ��� � ����� ���� ����� ����
SELECT * FROM public.students 
WHERE name LIKE '%����%';

-- 11. ������� ������������� ��� � ����� � ����� ���� 8
SELECT * FROM public.students 
WHERE name LIKE '%8';

-- 12. ������� ������������� ��� � ����� � ���� ����� �
SELECT * FROM public.students 
WHERE name LIKE '%a%';

-- 13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT * FROM public.students 
WHERE created_on='2021-07-12 00:00:00';

-- 14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' and password='1m313';

-- 15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' and name like '%Andrey%';

-- 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT * FROM public.students
WHERE created_on='2021-07-12 00:00:00' AND name like '%8%';

-- 17. ������� ������������ � ������� id ����� 10
SELECT * FROM public.students
WHERE ID = 10;

-- 18. ������� ������������ � ������� id ����� 53
SELECT * FROM public.students
WHERE ID = 53;

-- 19. ������� ������������ � ������� id ������ 40
SELECT * FROM public.students
WHERE ID > 40;

-- 20. ������� ������������ � ������� id ������ 30
SELECT * FROM public.students
WHERE ID < 30;

-- 21. ������� ������������ � ������� id ������ 27 ��� ������ 88
SELECT * FROM public.students
WHERE ID < 27 OR ID > 88;

-- 22. ������� ������������ � ������� id ������ ���� ����� 37
SELECT * FROM public.students
WHERE ID <= 37;

-- 23. ������� ������������ � ������� id ������ ���� ����� 37
SELECT * FROM public.students
WHERE ID >= 37;

-- 24. ������� ������������ � ������� id ������ 80 �� ������ 90
SELECT * FROM public.students
WHERE ID > 80 and ID < 90;

-- 25. ������� ������������ � ������� id ����� 80 � 90
SELECT * FROM public.students
WHERE ID BETWEEN 80 AND 90;

-- 26. ������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT * FROM public.students
WHERE password IN ('12333' , '1m313' , '123313');

-- 27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM public.students
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. ������� ����������� id
SELECT MIN(id) FROM public.students;

-- 29. ������� ������������.
SELECT MAX(id) FROM public.students;

-- 30. ������� ���������� �������������
SELECT COUNT(id) FROM public.students;

-- 31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� ������������.
SELECT id, name, created_on
FROM public.students
ORDER BY created_on ASC;

-- 32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� ������������.
SELECT id, name, created_on
FROM public.students
ORDER BY created_on DESC;
