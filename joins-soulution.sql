--1. Get all customers and their addresses.

SELECT * FROM "customers"
JOIN "addresses" ON "addresses".id = "customers".id;




--2. Get all orders and their line items (orders, quantity and product).
