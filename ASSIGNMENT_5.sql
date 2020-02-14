CREATE table shivam.student_course(
Roll_no integer not null,
Course varchar(7) not null,
Course_code integer not null,
semester integer ,
total_marks integer ,
percentage integer ,
check (percentage<=100),
primary key(Roll_no));

INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('1', 'java', '10', '1', '51', '51');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('2', 'c++', '20', '1', '62', '62');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('3', 'python', '30', '2', '73', '73');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('4', 'CN', '40', '2', '84', '84');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('5', 'java', '10', '1', '95', '95');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('6', 'c++', '20', '1', '45', '45');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('7', 'python', '30', '2', '65', '65');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('8', 'CN', '40', '2', '75', '75');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('9', 'java', '10', '1', '85', '85');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('10', 'c++', '20', '1', '74', '74');
INSERT INTO `shivam`.`student_course` (`Roll_no`, `Course`, `Course_code`, `semester`, `total_marks`, `percentage`) VALUES ('11', 'python', '30', '2', '39', '39');

drop procedure display;

create TABLE SHIVAM.COUNT (
COURSE_NAME varchar(10),
_100_80 int,
_79_70 int,
_69_60 int,
_59_50 int,
_49_0 int );
DELIMITER $$
create procedure `display`(name_ varchar(10))
begin
declare a,b,c,d,e int default 0;

truncate table shivam.count ;

SELECT count(percentage) 
into a
from shivam.student_course 
where Course=name_ and (percentage<=100 and percentage>=80);

SELECT count(percentage) 
into b
from shivam.student_course 
where Course=name_ and (percentage<=79 and percentage>=70);


SELECT count(percentage) 
into c
from shivam.student_course 
where Course=name_ and (percentage<=69 and percentage>=60);


SELECT count(percentage) 
into d
from shivam.student_course 
where Course=name_ and (percentage<=59 and percentage>=50);

SELECT count(percentage) 
into e
from shivam.student_course 
where Course=name_ and (percentage<=49 and percentage>=0);

insert into shivam.count
(COURSE_NAME,_100_80,_79_70,_69_60,_59_50,_49_0)
values
(name_,a,b,c,d,e);



select * from shivam.count ;

end$$

DELIMITER ;

call display("python");