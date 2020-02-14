CREATE TABLE `shivam`.`employee` (
  `employee_no` INT NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  `join_date` DATE NOT NULL,
  `salary` INT NULL,
  PRIMARY KEY (`employee_no`),
  UNIQUE INDEX `employee_no_UNIQUE` (`employee_no` ASC) VISIBLE);
  

create trigger before_update_employee

before update on shivam.employee
for each row
insert into shivam.employee_audit
SET action="update",
	employee_no=old.employee_no,
    employee_name=old.employee_name,
    designation=old.designation,
    salary=old.salary,
    changedate=now();
    
delete from shivam.employee where employee_no=1000;

create trigger before_delete_employee
before delete on shivam.employee
for each row 
insert into shivam.employee_audit
set action="delete",
	employee_no=old.employee_no,
    employee_name=old.employee_name,
    designation=old.designation,
    salary=old.salary,
    changedate=now();
    
create trigger after_insert_employee
after insert on shivam.employee
for each row 
insert into shivam.employee_audit
set action="insert",
	employee_no=new.employee_no,
    employee_name=new.employee_name,
    designation=new.designation,
    salary=new.salary,
    changedate=now();
