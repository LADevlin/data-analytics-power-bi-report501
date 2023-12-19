SELECT
    month_name,
    SUM(product_quantity * sale_price)
FROM
    orders
INNER JOIN
    dim_product ON orders.product_code = dim_product.product_code
INNER JOIN
    dim_date ON orders.order_date = dim_date.date
WHERE
    start_of_monthj LIKE '2022%'
GROUP BY
    month_name
ORDER BY
    SUM(product_quantity * sale_price) DESC