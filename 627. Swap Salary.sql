Update Salary
Set sex = (case when sex = 'm' then 'f' else 'm' end)

# Write your MySQL query statement below
update salary set sex=
case when sex='f' then 'm'
else 'f'
end
