-- version1, using existing tot_cred
select dept_name, avg(tot_cred) as dept_avg_cred
from student
group by dept_name
having dept_avg_cred > (
    select avg(tot_cred) 
    as avg_cred 
    from student
)
order by dept_name;

-- version2, using true cred
