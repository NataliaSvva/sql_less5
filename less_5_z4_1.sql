-- Задание 4_1 Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий (may, august)


use shop;
select * from users;
select *, MONTHNAME(birthday_at) as month_1 from users  where (MONTH(birthday_at) = 5) or (MONTH(birthday_at) = 8);