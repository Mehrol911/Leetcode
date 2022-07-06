# Write your MySQL query statement below
select wt1.id 
from weather wt1, weather wt2
where wt1.temperature > wt2.temperature and 
      to_days(wt1.recordDate)-to_days(wt2.recordDate)=1;

#second solution

# Write your MySQL query statement below
select w1.id as Id
from weather w1, weather w2
where w1.recordDate = w2.recordDate + interval 1 day AND w1.temperature > w2.temperature;
