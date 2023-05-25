
 --Display record of all clerks who earn more than 1100


select * from tb_EMP where job = 'clerk'  and sal > 1100

--Display record of all employees who are either clerks or earn more than 1100

select * from tb_EMP where sal>1100

select * from tb_EMP
-- Display name and job title of all the employees whose are not CLERK, MANAGER, or ANALYST

select ENAME job from tb_EMP where JOB not in ('CLERK' , 'MANAGER'  , 'ANALYST')


--Display the employee number, name and salary of all managers

select  EMPNO , ENAME, JOB from tb_EMP where job = 'manager' 


--Write a query to display the name and department number of all employees who were hired after 1982.


select ENAME ,  deptno from tb_EMP where   HIREDATE > '1982'



--Write a query to display the name of all managers in department 20


select Ename from tb_EMP where job='manager' and DEPTNO = 20


--Display the one-month salary of employees written as: “KING: 1 Month salary = 5000” (Hint: use concatenation operator)

--Display the name and department number of employee with number 7566

select ename , deptno from tb_EMP where EMPNO = 7566

--Display the name of all employees who have two consecutive Ls in their name and are in department 30 or their manager is 7782

select ename from tb_EMP where (ENAME like('_ll%') and DEPTNO=30) or MGR=7782


-- Display the name of all clerks of department 10 and 20 hired before 1983.

select ename from tb_EMP where job='clerk' and DEPTNO=10 and DEPTNO=20 and HIREDATE<'1983'



--Display the name and salary for all employees whose salary is not in range of $1500 and $2850
select ename , SAL from tb_EMP where sal not between 1500 and 2850


--Display the name, salary and commission for all employees whose commission amount in greater than their salary increased by 10%

