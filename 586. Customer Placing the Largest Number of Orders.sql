# Write your MySQL query statement below
select customer_number
from Orders
group by customer_number
order by count(*) desc
limit 1;

/*SECOND solution*/
# Write your MySQL query statement below
select customer_number
from (select customer_number, count(order_number) cnt from Orders group by 1) a
order by cnt desc 
limit 1
