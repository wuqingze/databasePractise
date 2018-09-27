select class
from courses
group by class
having count(distinct student)>4

# Write your MySQL query statement below
select distinct * from stadium s where people >=100 and ((select people from stadium t where t.date=DATE_ADD(s.date, Interval 1 day))>=100 and (select people from stadium t where t.date=DATE_ADD(s.date, Interval 2 day))>=100) or ((select people from stadium t where t.date=DATE_ADD(s.date, Interval -1 day))>=100 and (select people from stadium t where t.date=DATE_ADD(s.date, Interval 1 day))>=100) or ((select people from stadium t where t.date=DATE_ADD(s.date, Interval -1 day))>=100 and (select people from stadium t where t.date=DATE_ADD(s.date, Interval -2 day))>=100)

select *
from stadium s
where people >=100 and ((((select people
    from stadium t
    where t.date=DATE_ADD(s.date, Interval
1 day))>=100 and
(select people
from stadium t
where t.date=DATE_ADD(s.date, Interval
2 day))>=100) or
(((select people
from stadium t
where t.date=DATE_ADD(s.date, Interval
1 day))>=100 and
(select people
from stadium t
where t.date=DATE_ADD(s.date, Interval -1
day))>=100) or
(((select people
from stadium t
where t.date=DATE_ADD(s.date, Interval -1
day))>=100 and
(select people
from stadium t
where t.date=DATE_ADD(s.date, Interval -2
day))>=100))