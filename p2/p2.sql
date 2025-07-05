SELECT 
    *
FROM
    order_details AS od
WHERE
    od.order_id = (SELECT 
            o.id
        FROM
            orders AS o
        WHERE
            od.order_id = o.id AND o.shipper_id = 3)