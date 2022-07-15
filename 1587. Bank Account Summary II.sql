# Write your MySQL query statement below
select u.name, sum(amount) as balance
from users as u
inner join transactions as t
using(account)
group by t.account
having sum(amount)>10000;
