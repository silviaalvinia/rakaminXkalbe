SELECT "Marital Status", AVG(age) AS rata-rata
FROM customer
GROUP BY "Marital Status";

SELECT gender, AVG(age) AS rata-rata
FROM customer
GROUP BY gender;

SELECT s.storename, SUM(t.qty) as total_quantity
FROM store s
JOIN transaction t
on s.storeid = t.storeid
GROUP BY s.storename
ORDER BY total_quantity desc
LIMIT 1;

SELECT p."Product Name", SUM(t.totalamount) as total_amount
FROM product p JOIN transaction t
ON p.ProductID = t.ProductID
GROUP BY p."Product Name"
ORDER BY total_amount desc LIMIT 1;
