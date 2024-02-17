--case_study_ 2 
--Sub-Queries


--Display the employee who got the maximum salary.
 SELECT * FROM EMPLOYEE
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEE
                 WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEE))

--Display the employees who are working in Sales department
 SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM DEPARTMENT
                        WHERE NAME='SALES')

--Display the employees who are working as “Clerk”.
 SELECT * FROM EMPLOYEE
 WHERE JOB_ID IN (SELECT JOB_ID FROM JOB
                  WHERE FUNCTIONALITY='CLEARK')

--Display the employees who are working in “New York”
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID IN(SELECT DEPARTMENT_ID FROM DEPARTMENT
            WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM LOCATION
                            WHERE REGIONAL_GROUP='NEW YORK'))


--Find out no.of employees working in “Sales” department.

 SELECT * FROM EMPLOYEE
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM DEPARTMENT
                                    WHERE NAME='SALES')
Update the employees salaries, who are working as Clerk on the basis of 10%.
          UPDATE EMPLOYEE SET SALARY=(SALARY+SALARY*10/100)
WHERE JOB_ID IN(SELECT JOB_ID FROM JOB
                WHERE FUNCTIONALITY='CLERK')
Delete the employees who are working in accounting department.
          DELETE FROM EMPLOYEE
WHERE DEPARTMENT_ID IN(SELECT DEPARTMENT_ID FROM DEPARTMENT
                       WHERE NAME='ACCOUNTING')


--Display the second highest salary drawing employee details.
 SELECT * FROM EMPLOYEE
WHERE SALARY IN(SELECT MAX(SALARY) FROM EMPLOYEE
                WHERE SALARY <(SELECT MAX(SALARY) FROM EMPLOYEE))

--Display the Nth highest salary drawing employee details
SELECT A.SALARY FROM EMPLOYEE A
WHERE N-1=(SELECT COUNT(DISTINCT(B.SALARY)) FROM EMPLOYEE B
             WHERE A.SALARY<B.SALARY)
2ND,3RD AND 5TH MAX SALARYS
SELECT A.SALARY FROM EMPLOYEE A
WHERE (SELECT COUNT(DISTINCT(B.SALARY)) FROM EMPLOYEE B
             WHERE A.SALARY<B.SALARY)IN(1,2,4)

 --List out the employees who earn more than every employee in department 30.
 SELECT * FROM EMPLOYEE
WHERE SALARY>ALL(SELECT SALARY FROM EMPLOYEE
                 WHERE DEPARTMENT_ID=30)
--(OR)--
SELECT * FROM EMPLOYEE
WHERE SALARY>ALL(SELECT MAX(SALARY) FROM EMPLOYEE
                 WHERE DEPARTMENT_ID=30)


--List out the employees who earn more than the lowest salary in department 30.
 SELECT * FROM EMPLOYEE
WHERE SALARY>ANY(SELECT MIN(SALARY) FROM EMPLOYEE
                 WHERE DEPARTMENT_ID=30)

--Find out which department does not have any employees.

SELECT DEPARTMENT_ID,NAME FROM DEPARTMENT
WHERE DEPARTMENT_ID NOT IN(SELECT DEPARTMENT_ID FROM EMPLOYEE)


--46. Find out the employees who earn greater than the average salary for their department.

SELECT * FROM EMPLOYEE E
WHERE SALARY>(SELECT AVG(SALARY) FROM EMPLOYEE
                    WHERE DEPARTMENT_ID=E.DEPARTMENT_ID
              GROUP BY DEPARTMENT_ID)