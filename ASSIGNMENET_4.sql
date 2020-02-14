CREATE table shivam.employee(
employee_no integer not null,
employee_name varchar(15),
join_date date,
designation varchar(10),
salary integer ,
primary key(employee_no));

INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('106', 'shivam', '2005-01-01', 'watchman', '10000');
INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('107', 'nandan', '2005-02-01', 'HR', '18000');
INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('108', 'yash', '2005-01-22', 'LR', '21000');
INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('109', 'namrata', '2005-01-01', 'CEO', '40000');
INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('110', 'riya', '2005-01-01', 'reception', '10000');
INSERT INTO `shivam`.`employee` (`employee_no`, `employee_name`, `join_date`, `designation`, `salary`) VALUES ('111', 'reshma', '2005-01-01', 'manager', '16000');

CURSORS---------------------------

DECLARE cursor1 cursor for select first_name  from sakila.actor ;
update shivam.employee 
set salary=salary+1000
where employee_no<400;
