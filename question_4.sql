ALTER TABLE orders
    ADD total_orders bigint;

SELECT 
    SUM(product_quantity)
FROM
    orders;

UPDATE orders
    SET total_orders = 481576;

SELECT
    store_type AS "Store Type",
    SUM(product_quantity) AS "Total Sales",
    ROUND(SUM(product_quantity) / total_orders * 100, 2) AS "Percent of Total Sales",
    COUNT(orders) AS "Count of Orders"
FROM
    dim_store
INNER JOIN
    orders ON dim_store.store_code = orders.store_code
GROUP BY
    store_type, total_orders