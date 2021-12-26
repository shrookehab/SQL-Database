

---No 1
insert into employee 
values('Maria','George',102672,'1999-05-19','8 helal','F',1200,112233,30) 
--No 2	 
insert into employee (fname,lname,ssn,bdate,address,sex,dno)
values('Hamdy','Ahmed',102660,'2000-03-20','14 dahar','M',30)	   
	   
--No 3
insert into departments 
values('DEPT IT',100,112233,'2006-11-1')

--No 4 
--a
update departments set mgrssn=968574
where dnum=100;
--b
update departments set mgrssn=102672
where dnum=20;
--c
update employee set superssn=102672
where ssn=102660;

--No 5
update employee set superssn=102660
where superssn=223344;

update departments set mgrssn=102660
where mgrssn=223344;

delete from dependent 
where essn=223344;

delete from works_for 
where essn=223344;

delete from employee 
where ssn=223344;

--No 6
update employee set salary=salary*20
where ssn=102672;

---------------------------------------

--No 1
select * from employee;

--No 2
select fname,lname,salary,dno
from employee;

--No 3
select pname,plocation,dnum
from project;

--No 4
select fname+' '+lname as "Full_Name",salary*0.1 as "ANNUAL_COMM" 
FROM employee;

--No 5
select ssn,fname
from employee 
where salary >1000;

--No 6
select ssn,fname
from employee 
where salary*12>10000;

--No 7
select fname,salary 
from employee 
where sex='F';

--No 8
select dname,dnum
from departments 
where mgrssn=968574;

--No 9
select pnumber,pname,plocation
from project
where dnum=10;

