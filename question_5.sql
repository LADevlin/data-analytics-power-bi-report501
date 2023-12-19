SELECT
    category,
    SUM((dim_product.sale_price - cost_price) * product_quantity) AS "Total Profit"
FROM
    dim_product
INNER JOIN
    orders ON dim_product.product_code = orders.product_code
INNER JOIN
    dim_date ON orders.order_date = dim_date.date
INNER JOIN
    dim_store ON orders.store_code = dim_store.store_code
WHERE
    full_region = 'Wiltshire, UK'
    AND start_of_year LIKE '2021%'
GROUP BY
    category
ORDER BY
    SUM((dim_product.sale_price - cost_price) * product_quantity) DESC


