SELECT * from shivam.student
left outer join shivam.course
on shivam.student.course_ids=shivam.course.roll ;

SELECT * from shivam.student
inner join shivam.course
on shivam.student.course_ids=shivam.course.roll ;

SELECT * from shivam.student
right outer join shivam.course
on shivam.student.course_ids=shivam.course.roll ;

SELECT * from shivam.student
full outer join shivam.course
on shivam.student.course_ids=shivam.course.roll ;

create view actor_info as select sakila.actor;

select * from sakila.actor_info ;

select * from sakila.actor_info where actor_id <20 ;

drop view sakila.actor_info;

select city from sakila.city
where country_id=(select country_id from sakila.country where country="India");

create view shivam.personal 
as select city from sakila.city
where country_id=(select country_id from sakila.country where country="India");

select * from shivam.personal ;