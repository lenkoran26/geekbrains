/*
Task_1
Подсчитайте средний возраст пользователей в таблице users
*/

SELECT AVG(age) as avg_age
FROM
(
	SELECT
	FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25) as age
	FROM users
) users

/*
Task_2
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

SELECT day_of_week, COUNT(day_of_week) 
FROM
(
	SELECT 
		birthday_at, 
		DAYOFWEEK(DATE_FORMAT(birthday_at, '2022-%m-%d')) as day_of_week
	FROM users
)users
group by day_of_week

/*
Task_3
(по желанию) Подсчитайте произведение чисел в столбце таблицы.
*/

SELECT EXP(SUM(LN(id)))
from users