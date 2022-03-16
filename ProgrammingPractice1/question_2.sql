select * from
(select student.ID, name, sum(credits) as tot_credits
from student natural join (takes natural join course)
group by name
order by tot_credits DESC limit 1)
order by ID;