SELECT 
    *,
    (SELECT 
            customer_id
        FROM
            orders
        WHERE
            id = od.order_id) AS customer_id
FROM
    order_details AS od;