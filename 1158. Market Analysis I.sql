# Write your MySQL query statement below
select u.user_id AS buyer_id, u.join_date, ifnull(count(order_date), 0) as orders_in_2019 
from users as u
left join orders as o
on u.user_id = o.buyer_id
AND YEAR(order_date) = '2019'
#where left(o.order_date,4)="2019" 
group by u.user_id;

/*
SELECT u.user_id AS buyer_id, join_date, 
IFNULL(COUNT(order_date), 0) AS orders_in_2019 
FROM Users as u
LEFT JOIN
Orders as o
ON u.user_id = o.buyer_id
AND YEAR(order_date) = '2019'
GROUP BY u.user_id*/

# Write your MySQL query statement below
SELECT 
distinct u.user_id as buyer_id, 
u.join_date,
IFNULL(count(order_date), 0) as orders_in_2019

FROM users u 
LEFT JOIN orders o on u.user_id = o.buyer_id 
AND 2019 = year(order_date)
GROUP BY user_id
