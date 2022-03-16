select distinct ID, name
from (
    select * from takes natural join student
) as A join course
on course.course_id=A.course_id
and A.dept_name<>course.dept_name
order by ID ASC;