--Case_study 2 : 
--Where Conditions:

--List the details about “SMITH”
 SELECT * FROM EMPLOYEE
WHERE LAST_NAME='SMITH'

--List out the employees who are working in department 20
 SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID=20

--List out the employees who are earning salary between 3000 and 4500
 SELECT * FROM EMPLOYEE
 WHERE SALARY BETWEEN 3000 AND 4500

--List out the employees who are working in department 10 or 20

 SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID IN(20,30)

--Find out the employees who are not working in department 10 or 30
 SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID NOT IN(10,30)


--List out the employees whose name starts with “S”

 SELECT * FROM EMPLOYEE
WHERE LAST_NAME LIKE 'S%'

--List out the employees whose name start with “S” and end with “H”
SELECT * FROM EMPLOYEE
WHERE LAST_NAME LIKE 'S%H'

--List out the employees whose name length is 4 and start with “S”
  SELECT * FROM EMPLOYEE
WHERE LAST_NAME LIKE 'S____'

--List out the employees who are working in department 10 and draw the salaries more than 3500
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID=10 AND SALARY >3500

--list out the employees who are not receiving commission.
SELECT * FROM EMPLOYEE
WHERE COMM IS NULL