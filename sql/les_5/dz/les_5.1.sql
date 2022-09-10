/*
Задача № 3 из Урока № 4. 
(Сказали переделать, так как условие "WHERE id BETWEEN 1 AND 5" неправильно.
Первые пять пользователей пометить как удаленные
*/

UPDATE users 
SET is_deleted = 1
WHERE 1 LIMIT 5;

/*
Task_1
Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем. 
*/

UPDATE users
SET created_at = CURRENT_TIMESTAMP(), 
updated_at = CURRENT_TIMESTAMP();


/*
Task_2
Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения 
*/

SELECT id,
	created_at_varchar,
	STR_TO_DATE(created_at_varchar, '%d.%m.%Y %k:%i') as created_at_datetime,
	updated_at_varchar,	
	STR_TO_DATE(updated_at_varchar, '%d.%m.%Y %k:%i') as updated_at_datetime
FROM users;

/*
id	created_at_varchar	created_at_datetime		updated_at_varchar	updated_at_datetime
1	20.10.2017 8:10		2017-10-20 08:10:00		22.10.2016 17:10	2016-10-22 17:10:00
2	22.10.2018 18:10	2018-10-22 18:10:00		12.10.2011 18:10	2011-10-12 18:10:00
3	11.11.2022 8:16		2022-11-11 08:16:00		01.02.2016 10:10	2016-02-01 10:10:00
4	20.10.2017 8:10		2017-10-20 08:10:00		31.10.2016 07:10	2016-10-31 07:10:00
5	20.09.2017 8:18		2017-09-20 08:18:00		22.10.2016 17:10	2016-10-22 17:10:00
6	20.10.2017 8:10		2017-10-20 08:10:00		15.12.2016 00:10	2016-12-15 00:10:00
*/

/*
Task_3
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
Однако нулевые запасы должны выводиться в конце, после всех
*/
SELECT id, value
FROM storehouses_products
ORDER BY
if(value=0,1,0), value

/*
Task_4
(по желанию) Из таблицы users необходимо извлечь пользователей, 
родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)
*/

SELECT id,name, DATE_FORMAT(birthday_at, '%M') as month_birthday
from users
where DATE_FORMAT(birthday_at, '%M') = 'May' 
OR
DATE_FORMAT(birthday_at, '%M') = 'August'

/*
id  name		month_birthday
3	Александр	May
6	Мария		August
*/

/*
Task_5
(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
*/

SELECT  * 
FROM  catalogs
WHERE  id IN (5,1,2)
ORDER BY 
FIELD(id,5,1,2) 