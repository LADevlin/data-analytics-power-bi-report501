SELECT
    store_type AS "Store Type",
    SUM(product_quantity * dim_product.sale_price) AS "Total Revenue"
FROM
    dim_store
INNER JOIN
    orders ON dim_store.store_code = orders.store_code
INNER JOIN
    dim_product ON orders.product_code = dim_product.product_code
WHERE
    dim_store.country_code = 'DE'
    AND order_date LIKE '2022%'
GROUP BY
    store_type
ORDER BY
    SUM(product_quantity * dim_product.sale_price) DESC