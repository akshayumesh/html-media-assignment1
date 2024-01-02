-- 1)primary keys and foreign keys --
SELECT * FROM information_schema.key_column_usage;

-- 2)Details  of actors --
select * from actor ;

-- 3)customer info--
select * from customer ;

-- 4) different countries--
select * from country;
select distinct country from country;

-- 5)Active Customers --
select * from customer;
select customer_id , first_name , last_name , email from customer where 'active'=1 ;

-- 6)rental id --
select * from rental; 
select rental_id from rental where customer_id=1;

-- 7) films whose rental dur > 5--
select * from film;
select film_id , title,rental_duration  from  film where rental_duration > 5; 

-- 8) total num of film whose replacement cost >15 and rep_cost < 20--
select * from film;
select * from film where replacement_cost between 15 and 20;

-- 9)unique names of actors --
select * from actor;
select count(distinct first_name ) from actor ;

-- 10) 10 record --
select * from customer;
select * from customer  limit  10;


-- 11) first 3 records frm customer whose frst name start with b --
select * from customer;
select * from customer where first_name like 'b%' limit 3 ;

--  12)frst 5 movies rated as G --
select * from film;
select * from film where rating ='G' limit 5;
  
-- 13)customer name start with a --
select * from customer where first_name like "a%"; 


-- 14)ENDS WITH A --
select * from customer where last_name like "%a";

-- 15) frst 4 cities --
select * from city ;
select * from city where city  like "a%%a" limit 4 ;


-- 16) customer frst name NI --
select * from customer;
select * from customer where first_name  like '%NI%';


-- 17) frst name have r--
select * from customer;
select * from customer where first_name like '_r%';


-- 18) customer name with a and have char 5 --
select * from customer where first_name like 'a____%';


-- 19) customer name with a and o--
select * from customer where first_name like 'a%o' ;


-- 20) film pg and pg-13 rating using operator --
select * from film;
select * from film where rating in ('PG', 'PG-13');

-- 21) film with len between 50 to 100--
select * from film where length between 50 and 100 ;

-- 22) top 50 actor--
select * from actor limit 50;

-- 23) ids from inventory --
select distinct film_id from inventory;
