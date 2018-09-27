select Email
from (select count(*) as c, Email
    from Person
    group by Email) t
where t.c > 