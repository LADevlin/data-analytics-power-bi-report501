SELECT
    SUM(staff_numbers) AS "Total UK Staff"
FROM
    dim_store
WHERE
    country = 'UK'

