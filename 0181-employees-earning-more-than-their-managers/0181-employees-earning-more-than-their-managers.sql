SELECT name as Employee FROM Employee e1 where
salary > (SELECT salary from Employee e2 where id = e1.managerId); 