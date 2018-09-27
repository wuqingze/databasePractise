CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N-1;
    RETURN (
        select distinct Salary as 'getNthHighestSalary('+cast(N AS VARCHAR(64))+')' FROM Employee ORDER BY Salary desc limit 1 OFFSET N 
  );
END