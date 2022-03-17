select student.ID, student.name
from (takes 
    natural join student
    natural join course
    natural join section
    natural join time_slot
)
where (title like '%Database%' 
    and takes.year = 2022 
    and takes.semester = 'Spring' 
    and building = 'East Lower Hall' 
    and day = 'F' 
    and (start_hr = 10 
        and start_min = 0 
        and end_hr = 11 
        and end_min = 40)
)
order by student.ID ASC;