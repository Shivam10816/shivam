CREATE view sakila.view1
as select actor_id,last_name from sakila.actor where actor_id<=10;

select * from sakila.view1 ;

create index index1 on  sakila.actor(first_name);

alter table sakila.actor drop index index1;

show index from sakila.actor;  

`sequence`

create table shivam.information(
	roll_no integer auto_increment primary key,
    name varchar(10));

insert into shivam.information
(name)
 values
 ("shivam");

select * from shivam.information ;

drop table shivam.information ;

"synonums"

call sys.create_synonym_db('sakila','hollywood');




                                            
