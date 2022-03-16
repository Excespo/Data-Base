select distinct dept_name
from student
where dept_name not in (
    select dept_name
    from takes natural join student
    where grade='F'
)
order by dept_name ASC;