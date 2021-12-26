--------q1----------------
select dnum, dname, mgrssn, fname
from employee e, departments d
where e.ssn = d.mgrssn;

------------q2------------
select dname, pname
from project pr, departments d
where pr.dnum = d.dnum;

-----------q3-------------
select e.fname, dep.dependent_name, dep.sex, dep.bdate
from employee e, dependent dep
where e.ssn = dep.essn;

---------q4-----------------
select dep.dependent_name, dep.sex
from employee e, dependent dep
where e.ssn = dep.essn and e.sex = 'F' and dep.sex = 'F'
Union 
select dep.dependent_name, dep.sex
from employee e, dependent dep
where e.ssn = dep.essn and e.sex = 'M' and dep.sex = 'M';
------------q5----------------
select pnumber, pname, plocation
from project
where city = 'Cairo' or city = 'Alex';
---------q6----------------
select * from project where lower(pname) like 'a%';
---------q7---------------
select *
from employee 
where dno = 30 and salary between 1000 and 2000;
-------q8------------------
select e.fname
from employee e, works_for w, project pr 
where e.ssn = w.essn 
and dno = 10 
and pr.pnumber = w.pno 
and pr.pname = 'Al Rabwah' 
and w.hours = 10;
------q9------------------
select e.fname, e.lname
from employee e , employee e1
where e.ssn = e1.ssn and e.superssn = 223344;

select fname, lname
from employee 
where superssn = (select ssn from employee where fname = 'Kamel' and lname = 'Mohamed');
--------q10--------------
select pr.pname, sum(w.hours)
from employee e, project pr, works_for w
where e.ssn = w.essn and pr.pnumber = w.pno
group by pr.pname;
--------q11------------
select e.fname , e.lname , pr.pname
from employee e, project pr, works_for w
where e.ssn = w.essn and pr.pnumber = w.pno
order by pr.pname;
-------q12-------------
select d.* 
from employee e, departments d
where e.dno = d.dnum and e.ssn in (select min(ssn) from employee);
------q13----------------
select dnum, dname, max(salary), min(salary), round(avg(salary),2)
from employee e, departments d
where e.dno = d.dnum
group by dnum, dname;
--------q14--------------
select lname
from employee e
where e.ssn not in (select essn from dependent);
------q15----------------
select dnum, dname, round(avg(salary),2), count(ssn)
from employee e, departments d
where e.dno = d.dnum
group by dnum, dname
having avg(salary) < (select avg(salary) from employee);
-------q16---------------
select e.fname , e.lname , pr.pname
from employee e, project pr, works_for w
where e.ssn = w.essn and pr.pnumber = w.pno
order by e.dno, e.lname, e.fname;
-------q17----------------
select pr.pnumber, d.dname, e.lname, e.address, e.bdate
from employee e, departments d, project pr
where e.dno = d.dnum and pr.dnum = d.dnum and d.mgrssn = e.ssn and pr.city = 'Cairo';
