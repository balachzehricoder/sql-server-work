use db_company


select * from tb_DEPT


select * from tb_EMP


select ENAME , SAL from tb_EMP 



select ENAME , job from tb_EMP 
select  job from tb_EMP 
select distinct job from tb_EMP 

select ENAME as 'emp NAME' , job 'kaam' from tb_EMP 



-- To select all employees whose salary is greater than 2200



select * from tb_EMP where sal > 2200



-- To display the name and department number of employees who were hired before 12th May, 1981

select ename , DEPTNO from tb_EMP where HIREDATE <  '12-MAY- 81'


select  ename + ' is'  + job 'emaploy summary' from tb_EMP;


-- Selecting all employees whose salary is between 3500 and 5000 and who were hired after 31st July, 1981

select * from tb_EMP where sal > 3500 and sal < 5000 and HIREDATE > '31-july-81';

-- Selecting all employees whose job is either clerk or analyst and were hired between 23rd July, 1981 and 14th May, 1982

select * from tb_EMP where JOB = 'clerk' or  job = 'analyst' and HIREDATE  > '23-july-81' and HIREDATE < '14-may-82'

-- Selecting employee number, name and their salary who do not earn commission


select EMPNO , ename, sal from tb_EMP where comm  is null;


select EMPNO , ename, sal from tb_EMP where comm < 1000;


select EMPNO , ename, sal from tb_EMP where comm  is not null;

-- To display record of employees who are not managers


select * from tb_EMP where job != 'manager'


-- To display the employee number, name, salary and the manager's employee number of all the employees whose manager's employee number is 7902, 7566, or 7788.




select EMPNO , ENAME , sal , MGR from tb_EMP where MGR = 7902 or MGR = 7566 or MGR =  7788 


