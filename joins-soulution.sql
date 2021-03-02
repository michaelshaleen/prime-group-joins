--1. Get all customers and their addresses.

SELECT * FROM "customers"
JOIN "addresses" ON "addresses".id = "customers".id;


--2. Get all orders and their line items (orders, quantity and product).

SELECT * FROM "orders"
JOIN "line_items" ON "line_items".id = "orders".id;


--3. Which warehouses have cheetos?
SELECT * FROM "warehouse"
JOIN "products" ON "products".id = "warehouse".id
WHERE "products".description = 'cheetos';

--4. Which warehouses have diet pepsi?

SELECT * FROM "warehouse_product"
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';

--5. Get the number of orders for each customer. 
    --NOTE: It is OK if those without orders are not included in results.
SELECT count("orders"),
 	"customers".first_name
  FROM "customers"
  JOIN "addresses" ON "addresses".customer_id = "customers".id
  JOIN "orders" ON "orders".address_id = "addresses".id
  GROUP BY "customers".id;


--6. How many customers do we have?
  SELECT count(*) FROM "customers";


--7. How many products do we carry?
SELECT count(*) FROM "products";


--8. What is the total available on-hand quantity of diet pepsi?

SELECT SUM("on_hand") as "pepsi count" FROM "warehouse_product"
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';