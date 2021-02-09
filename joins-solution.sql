
    -- 1. Get all customers and their addresses.
      SELECT *
    FROM customers AS c
    JOIN addresses AS a
    ON c.id=a.id;
    -- 2. Get all orders and their line items (orders, quantity and product).
 SELECT *
    FROM orders as o
    JOIN line_items as li
	ON o.id=li.order_id;
    -- 3. Which warehouses have cheetos?
SELECT *
    FROM warehouse_product AS w
    JOIN warehouse_product AS wp
    ON w.id = wp.warehouse_id
    WHERE wp.product.id = 5 AND wp.on_hand > 0;
    -- 4. Which warehouses have diet pepsi?
    SELECT *
    FROM warehouse_product AS w
    JOIN warehouse_product AS wp
    ON w.id = wp.warehouse_id
    WHERE wp.product.id = 6 AND wp.on_hand > 0;
    -- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
    SELECT (customers)id, (customers)first_name, (customers)last_name, (line_items)id, (line_items)quantity,
    from customers
    INNER JOIN line_items
    ON customers.id=line_items.id;
    -- 6. How many customers do we have?
    SELECT SUM("id") FROM "customers"; 10
    -- 7. How many products do we carry?
      SELECT SUM("id") FROM "products"; 28
    -- 8. What is the total available on-hand quantity of diet pepsi?
    SELECT SUM(on_hand) FROM warehouse_product
    WHERE product_id = 6;

--Stretch

    -- 9. How much was the total cost for each order?
    -- 10. How much has each customer spent in total?
    -- 11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
