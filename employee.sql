-- creating a database
create database report;
use report;                -- use the particular database
-- creating a table with 10 rows 
create table employe1(
sno int,employee_ID varchar(20), employee_name varchar(10), dateofbirth date,datejoining date,salary varchar(20), bonus varchar(20),city varchar(20),address varchar(20),department varchar(20),employee_email_ID varchar(20),employee_status varchar(20));

-- insertion of the values
insert into employe1 values(1,601,'KaviShree','2005/02/09','2024/05/05','70000','5000','Namakkal','anbu nagar','AI&DS','kavishree@gamil.com','active');
insert into employe1 values(2,'602','vaishu','2004/10/31','2024/10/05','30000','10000','Trichy','thillai nagar','AI&DS','vaishi@gamil.com','suspend');
insert into employe1 values(3,'603','Prienga','2004/11/14','2024/10/10','29999','9000','dindugul','dm nagar','AI&DS','priu@gamil.com','inactive');
insert into employe1 values(4,'604','Vedhasri','2004/12/25','2024/10/25','40000','5000','theni','kambam','AI&DS','vedha@gamil.com','active');
insert into employe1 values(5,'605','Aarthy','2004/03/16','2024/06/23','50000','4000','coimbatore','anna nagar','AI&DS','árthy@gmail.com','inactive');
insert into employe1 values(6,'606','neavi','2005/06/21','2024/07/23','50000','5000','Namakkal','vepanam','ECE','neavi@gamil.com','active');
insert into employe1 values(7,'607','sona','2004/11/24','2024/07/30','60000','2000','Namakkal','sk nagar','ECE','sona@gamil.com','suspend');
insert into employe1 values(8,'608','kavin','2004/01/20','2025/01/30','60000','2000','Namakkal','barani nagar','EEE','kavin@gamil.com','active');
insert into employe1 values(9,'609','dinesh','2005/02/19','2025/01/30','70000','2000','madurai','barani nagar','EEE','dinesh@gamil.com','suspend');
insert into employe1 values(10,'610','siva','2003/02/17','2023/04/30','80000','1000','thenkasi','ngo nagar','EEE','kavin@gamil.com','inavtive');
select * from employe1;

-- changing the column name
alter table employe1 change city district varchar(20);

-- adding one column
alter table employe1 add column age varchar(10);

-- updating the column with values
update employe1 set age = case 
when sno = '1' then '20'
when sno = '2' then '21'
when sno = '3' then '21'
when sno = '4' then '21'
when sno = '5' then '21'
when sno = '6' then '20'
when sno = '7' then '21'
when sno = '8' then '21'
when sno = '9' then '20'
when sno = '10' then '22'
else age
end where sno in ('1','2','3','4','5','6','7','8','9','10');
set SQL_SAFE_UPDATES = 0;

-- deleting a particular column
alter table employe1 drop column address;

-- deleting some datas in a table
delete from employe1 where employee_status = 'suspend';

-- viewing the particular values
select * from employe1 where district like 'N%';
select * from employe1 where department like 'A%';

-- viewing the salary of person that is more than 60000
select * from employe1 where salary > 60000;

-- view of the person who is belong to coimbatore
select * from employe1 where district = 'coimbatore';

-- using logical operators
select * from employe1 where department='AI&DS' AND age=21;
select * from employe1 where department='AI&DS' or employee_status = 'inactive';

-- using the aggreagate functions
-- 1.minimum and maximum of age
select
min(age) AS Min_Age,
max(age) AS Max_Age
from employe1;

-- 2.count of the table
select 
count(*) as total_employee
from employe1;

-- 3.sum of the salary and bonus of a particular person
select employee_name,
sum(salary+bonus) as totla_salary
from employe1 where employee_name = 'kavishree';

-- 4.finding the average salary of all person
select avg(salary) as avg_salary from employe1;

-- adding the bonus and salary with condition
select (salary + bonus) as total_salary from employe1
where salary between 50000 and 70000;

-- view of the employee whose salary in between 50000 and 70000
select * from employe1
where salary between 50000 and 70000;

-- deletion of whole table
truncate table employe1;