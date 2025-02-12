create database demo;
 use demo;
  create table student(
  sno Int,
  firstname varchar(20),
  lastname varchar(20),
  city varchar(20));
insert into student values(1,'KaviShree','S','Namakkal');
insert into student values(2,'vaishu','K','Trichy');
insert into student values(3,'Prienga','S','dindugul');
insert into student values(4,'Vedhasri','s','theni');
select * from student;
Alter table student
add column phonenumber varchar(15);
UPDATE student
 SET phonenumber = '8763839494'
 WHERE sno = 1;
 UPDATE student
SET phonenumber = '8765432198'
WHERE sno = 2;

UPDATE student
SET phonenumber = '8790654321'
WHERE sno = 3;

UPDATE student
SET phonenumber = '7543214569'
WHERE sno = 4;

SET SQL_SAFE_UPDATES = 0;

delete from student where sno=2;