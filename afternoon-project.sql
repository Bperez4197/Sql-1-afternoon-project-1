1.)
create table person (
  person_id serial primary key
  ,name text not null
  ,age integer not null
  ,height integer not null
  ,city text not null
  ,favorite_color text not null
);

2.)

insert into person (name,age,height,city,favorite_color)
values ('Bryce', 24, 185, 'Peoria','Purple' ),('Andres',26,175,'Tempe','Red')
,('John', 34, 180, 'San Diego','Black'),('Joe',23,190,'Los Angeles','Blue')
,('Brad',21,198,'Denver','Green');

3.)
select * from person
order by height desc;

4.)
select * from person
order by height asc;

5.)
select * from person
order by age desc;

6.)
select * from person
where age > 20;

7.)
select * from person
where age = 18;

8.)
select * from person
where age < 20 or age > 30;

9.)
select * from person
where age != 27;

10.)
select * from person
where favorite_color != 'Red';

11.)
select * from person
where favorite_color != 'Red' and favorite_color != 'Blue';

12.)
select * from person
where favorite_color = 'Orange' or favorite_color = 'Green';

13.)
select * from person
where favorite_color in ('Orange','Green','Blue');

14.)
select * from person
where favorite_color in ('Yellow','Purple');

-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON
-- END OF SECTION 1 TABLE-PERSON

1.)
create table orders (
	person_id serial
  ,product_name text not null
  ,product_price numeric not null
  ,quantity integer not null
);

2.)
    insert into orders (person_id,product_name, product_price, quantity)
values (0,'Pizza', 19.99,1),(1,'Lasagna',10.99,2)
,(2,'Pasta',14.99,4),(3,'Burger',9.99,5),(4,'Sandwich',5.99,10);

3.)

select * from orders;

4.)

select sum(quantity) from orders;

5.)

select sum(product_price * quantity) from orders;

6.)
select sum(product_price * quantity) from orders
where person_id = 0;

--END OF SECTION 2 TABLES-ORDERS
--END OF SECTION 2 TABLES-ORDERS
--END OF SECTION 2 TABLES-ORDERS
--END OF SECTION 2 TABLES-ORDERS
--END OF SECTION 2 TABLES-ORDERS

1.)
insert into artist (name)
values ('Generic Rapper'),('Generic Pop'),('Generic Country');

2.)
select * from artist
order by name desc limit 10;

3.)
select * from artist
order by name asc limit 5;

4.)
    select * from artist
    where name like 'Black%';

5.)
select * from artist
where name like '%Black%';

--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST
--END OF SECTION 3 TABLES-ARTIST

1.)
select first_name,last_name from employee
where city = 'Calgary';

2.)
select max(birth_date) from employee;

3.)
select min(birth_date) from employee;

4.)
select * from employee
where first_name = 'Nancy' and last_name='Edwards';

select * from employee
where reports_to = 2;

5.)
select count(*) from employee
where city = 'Lethbridge';

--END OF SECTION 4 TABLES-EMPLOYEE
--END OF SECTION 4 TABLES-EMPLOYEE
--END OF SECTION 4 TABLES-EMPLOYEE
--END OF SECTION 4 TABLES-EMPLOYEE
--END OF SECTION 4 TABLES-EMPLOYEE
--END OF SECTION 4 TABLES-EMPLOYEE

1.)
select count(*) from invoice
where billing_country = 'USA';


2.)
select max(total) from invoice;

3.)
select min(total) from invoice;

4.)
select * from invoice
where total > 5;

5.)
select count(*) from invoice
where total < 5;

6.)
select count(*) from invoice
where billing_state in ('CA','TX','AZ');

7.)
select avg(total) from invoice;

8.)
select sum(total) from invoice;