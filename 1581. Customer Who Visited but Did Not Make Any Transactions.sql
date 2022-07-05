# Write your MySQL query statement below
select v.customer_id, count(*) as count_no_trans
from visits as v
left join transactions as t
using (visit_id)
where t.visit_id is null
group by v.customer_id;


/* Second version */
select customer_id, count(customer_id) as count_no_trans from visits 
where visit_id not in (select distinct visit_id from Transactions)
group by customer_id
order by customer_id asc;
