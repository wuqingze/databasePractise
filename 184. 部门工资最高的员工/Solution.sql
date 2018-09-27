select d.Name as Department, e.name as Employee, e.Salary as Salary
from Employee e inner join Department d on e.DepartmentId  = d.Id
where e.Salary = (select max(Salary) as Salary
from Employee
where Employee.DepartmentId = e.DepartmentId ) 