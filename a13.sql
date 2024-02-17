--Case_study 2 : 
--Order By Clause:

--List out the employee id, last name in ascending order based on the employee id.
 SELECT EMPLOYEE_ID,LAST_NAME
FROM EMPLOYEE
ORDER BY EMPLOYEE_ID

--List out the employee id, name in descending order based on salary column
SELECT EMPLOYEE_ID,LAST_NAME
FROM EMPLOYEE
ORDER BY SALARY DESC

--list out the employee details according to their last_name in ascending order and salaries in descending order
SELECT * FROM EMPLOYEE
ORDER BY LAST_NAME,SALARY DESC

--list out the employee details according to their last_name in ascending order and then on department_id in descending order.
SELECT * FROM EMPLOYEE
ORDER BY LAST_NAME,DEPARTMENT_ID DESC
