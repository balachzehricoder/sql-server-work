use db_company


-- Selecting all employees whose salary is between 3500 and 5000 and who were hired after 31st July, 1981



select * from tb_EMP where sal >=3500 and sal<=5000 and HIREDATE > '31-july-1981'


select * from tb_EMP where sal BETWEEN 3500 AND 5000;


-- Selecting all employees whose salary is between 3500 and 5000 and were hired between 23rd July, 1981 and 14th May, 1982


select * from tb_EMP where sal BETWEEN 3500 AND 5000 and HIREDATE between '23-july-1981' and '14-may-1982'


-- To display the employee number, name, salary and the manager's employee number of all the employees whose manager's employee number is 7902, 7566, or 7788.


select empno , ename , sal , mgr from tb_EMP where mgr=7902  or mgr=7566 or mgr=7788;


select empno , ename , sal , mgr from tb_EMP where MGR in(7902,7566,7788);

-- Selecting all employees whose job is either clerk or analyst and were hired between 23rd July, 1981 and 14th May, 1982


select * from tb_EMP where job in ('clerk' , 'analyst') and HIREDATE between '23-July-1981'and '14-may-1982';


-- To display the names of all employees with names starting with S


select ENAME from tb_EMP where ename like 's%'


select ENAME from tb_EMP where ename like '%r'


select ename from tb_EMP where ename like '%tt%'


select ename from tb_EMP where ename like '_L%'


select ename , job  , sal from tb_EMP where (job = 'salesman' or job =  'PreSIDENT') and sal >= 1500 

