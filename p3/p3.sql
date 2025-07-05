SELECT 
    order_id, AVG(od_data.quantity) as avg_quantity
FROM
    (SELECT 
        *
    FROM
        order_details AS od
    WHERE
        od.quantity > 10) AS od_data
GROUP BY order_id;