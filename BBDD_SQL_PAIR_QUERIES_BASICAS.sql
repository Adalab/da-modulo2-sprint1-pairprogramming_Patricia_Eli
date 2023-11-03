/*1,2,3*/
CREATE DATABASE northwind;
USE northwind;
/*4.*/
SELECT employee_id, last_name, first_name
FROM employees;
/*5*/
SELECT product_name,unit_price
FROM products
WHERE unit_price <=5;
/*6*/
SELECT product_name,unit_price
FROM products
WHERE unit_price IS NULL;
/*7*/
SELECT *
FROM products
WHERE unit_price <15 
AND product_id<10;
/*8*/
SELECT *
FROM products
WHERE NOT unit_price <15 
AND NOT product_id <10;
/*9*/
SELECT distinct ship_country
FROM orders;
/*10*/
SELECT product_id,product_name,unit_price
FROM products
ORDER BY product_id ASC
LIMIT 10;
/*11*/
SELECT product_id,product_name,unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;
/*12*/
SELECT DISTINCT order_id
FROM order_details;
/*13*/
SELECT *,unit_price*quantity AS importe_total
FROM order_details
ORDER BY importe_total ASC
LIMIT 3;
/*14*/
SELECT *,unit_price*quantity AS importe_total
FROM order_details
ORDER BY importe_total ASC
LIMIT 5
OFFSET 5;
/*15*????*/
SELECT DISTINCT product_name AS NombreDeCategoria
FROM products;
/*16*/
SELECT shipped_date,DATE_ADD(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
/* he añadido en el select shipped date para verificar que se habían añadido ok*/
FROM orders
WHERE shipped_date >0; 
/*ésto nos permite ver las fechas que no son 0, null no me funcionaba*/
/*17*/
SELECT *
FROM products
WHERE unit_price BETWEEN 15 AND 50;
/*18*/
SELECT *
FROM products
WHERE unit_price IN(18,19,20);
