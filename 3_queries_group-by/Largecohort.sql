select  cohort_name |,count(students.id) as student_count 
from cohorts 
join students on cohorts.id = students.cohort_id
group by cohorts.id
having count(students.id)>=18