select MyCalculate(count(order_id), quantity) as my_result from order_details as od
join orders as o on o.id = od.order_id
group by quantity