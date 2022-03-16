select dept_name, count(distinct ID) as stu_counts
from department natural join student
group by student.dept_name
order by dept_name ASC;