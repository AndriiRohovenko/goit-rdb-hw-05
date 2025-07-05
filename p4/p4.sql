with tempOrderDetails as (select * from order_details as od where od.quantity > 10 )
select t.order_id, avg(t.quantity) as avg_quantity from tempOrderDetails as t
group by t.order_id;
