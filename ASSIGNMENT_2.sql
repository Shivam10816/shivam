 select * FROM shivam.course ;

 insert into shivam.student (roll,name,course_ids) values (11,"yash",15);
 
 update shivam.student
 set name="pranay"
 where roll=1;
 
 delete from shivam.student where roll=1 ;
 
 select  * from sakila.actor having actor_id in (1,3,4,5);
 
 select distinct(course_ids) from shivam.student ;
 
select country.country_id from sakila.country where country_id <10
union 
select city.country_id from sakila.city  
where country_id <=10 ;


select country.country_id from sakila.country where country_id <10
union all
select city.country_id from sakila.city  
where country_id <=10 ;

select country.country_id from sakila.country 
intersect
select city.country_id from sakila.city  ;

select country.country_id from sakila.country where country_id <10
minus
select city.country_id from sakila.city  
where country_id <=10 ;
 