-- Задача 3_1 В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
-- 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако нулевые запасы должны выводиться в конце, после всех записей.

use shop;
select * from storehouses_products;

INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('1', 3, 0, 6, '1978-02-26 18:25:21', '1977-01-08 06:39:27');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('2', 5, 0, 7, '1972-08-29 04:33:57', '1991-07-16 13:20:26');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('3', 2, 8, 0, '2005-07-29 23:34:17', '2001-08-01 21:18:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('4', 6, 2, 9, '2009-08-30 00:49:55', '2011-11-22 19:32:43');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('5', 9, 6, 3, '2014-10-21 00:47:46', '1976-08-25 15:09:07');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('6', 3, 2, 7, '2009-10-23 07:35:11', '1978-09-30 20:27:25');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('7', 9, 0, 9, '1997-01-26 14:09:22', '2007-01-23 04:08:34');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('8', 1, 8, 4, '2010-01-01 23:24:59', '1988-05-20 08:18:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('9', 6, 2, 0, '2009-08-22 09:00:52', '2009-02-18 04:57:08');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('11', 3, 1, 9, '2015-01-31 03:39:46', '2000-06-03 13:25:00');

select * from storehouses_products ORDER BY CASE WHEN value = 0 THEN 2147483647 ELSE value end;