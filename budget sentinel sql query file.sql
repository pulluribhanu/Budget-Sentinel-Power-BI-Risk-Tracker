/*project status*/
with project_status as (
SELECT `upcoming projects`.`project_id`,
    `upcoming projects`.`project_name`,
    `upcoming projects`.`project_budget`,
    'upcoming' as status
FROM `project`.`upcoming projects`
union all 
select 
project_id,
project_name,
project_budget,
'completed' as status
from 
completed_projects)





/* big table */
SELECT 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
pa.project_id,
p.project_name,
p.status

FROM employees e
join departments d
on e.department_id=d.Department_ID
join project_assignments pa 
on e.employee_id=pa.employee_id
join 
project_status p
on p.project_id = pa.project_id;






