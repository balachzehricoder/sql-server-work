use db_company





-- 2.  Display all the employee’s name (including KING who has no manager) and their manager name.
select e.ename 'employ name ' , m.ename 'mgr name' from tb_EMP e left join tb_EMP m  on  m.EMPNO = e.MGR

--CONCAT
--LEN
--LOWER
--UPPER
--AVG
--COUNT
--MAX
--MIN
--SUM
--CURRENT_TIMESTAMP
--GETDATE
--YEAR


select ename + 'is' + job from tb_EMP --SINGLE ROW FUNCTIONS
select concat (ename , 'is' , job) from tb_EMP --SINGLE ROW FUNCTIONS
select len ('balach')--SINGLE ROW FUNCTIONS 
select ename 'emp name' , len (ename )'lenth' from tb_EMP--SINGLE ROW FUNCTIONS
select LOWER(ename) from tb_EMP --SINGLE ROW FUNCTIONS
select upper(ename) from tb_EMP --SINGLE ROW FUNCTIONS
select avg (sal) from tb_EMP--MULTI ROW / AGGREGATE FUNCS 
select max (comm) from tb_EMP--SINGLE ROW FUNCTIONS
select min (comm) from tb_EMP--SINGLE ROW FUNCTIONS
select GETDATE();--MULTI ROW / AGGREGATE FUNCS
select CURRENT_TIMESTAMP;--MULTI ROW / AGGREGATE FUNCS 
select sum (sal) from tb_EMP--MULTI ROW / AGGREGATE FUNCS 
select YEAR (hiredate) from tb_EMP--SINGLE ROW FUNCTIONS 
select ltrim ('    balach')--SINGLE ROW FUNCTIONS 





