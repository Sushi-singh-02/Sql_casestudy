
--Case_study 2 : 
--Simple Queries:

--List all the employee details
SELECT * FROM EMPLOYEE

--List all the department details
 SELECT * FROM DEPARTMENT

--List all job details
SELECT * FROM JOB

--List all the locations
SELECT * FROM LOCATION

--List out first name,last name,salary, commission for all employees
SELECT LAST_NAME,FIRST_NAME,COMM FROM EMPLOYEE

--List out employee_id,last name,department id for all  employees and rename employee id as “ID  of the employee”, last name as “Name of the employee”, department id as  “department  ID”
 SELECT     EMPLOYEE_ID AS "ID OF EMPLOYEE",
                  LAST_NAME AS "EMPLOYEE NAME",
            DEPARTMENT_ID AS "DEPARTMENT ID"
 FROM EMPLOYEE

--List out the employees anuual salary with their names only.
SELECT  LAST_NAME AS "EMPLOYEE NAME",
        SALARY*12 AS "ANUAL SALARY"
FROM EMPLOYEE
