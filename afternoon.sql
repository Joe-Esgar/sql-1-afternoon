create table person
(
    id serial primary key,
    name varchar(64),
    age int not null,
    height int not null,
    city varchar(64),
    favorite_color varchar(64)
);

insert into person
    (name, age, height, city, favorite_color)
values
    ('Joe', 23, 178, 'Phoenix', 'veridian'),
    ('Ben', 28, 190, 'Dixon', 'red'),
    ('Kyle', 28, 185, 'Dallas', 'blue'),
    ('Frank', 64, 150, 'Philidelphia', 'green'),
    ('Dennis', 40, 180, 'Philidelphia', 'red');

select *
from person
order by height desc;

select *
from person
order by height asc;

select *
from person
order by age desc;

select *
from person
where age > 20;

select *
from person
where age = 18;

select *
from person
where age < 20 or age > 30;

select *
from person
where age != 27;

select *
from person
where favorite_color != 'red';

select *
from person
where favorite_color != 'red' and favorite_color != 'blue';

select *
from person
where favorite_color = 'orange' or favorite_color = 'green';

select *
from person
where favorite_color in ('orange', 'green', 'blue');

select *
from person
where favorite_color in ('yellow', 'purple');

create table orders
(
    person_id serial primary key,
    product_name varchar(64),
    product_price decimal not null,
    quantity int not null
);

insert into orders
    (product_name, product_price, quantity)
values
    ('Royale with Cheese', 14.50, 2),
    ('The Haiser Hotdog', 6.00, 1),
    ('Bowl of Chili', 4.00, 3),
    ('Bread and Water Special', 1.00, 1),
    ('Mershed Perterters', 2.00, 5);

select *
from orders;

select sum(quantity)
from orders;

select sum(product_price * quantity)
from orders;

select sum(product_price * quantity)
from orders
where person_id = 1;

insert into artist
    (name)
values
    ('Jack Black'),
    ('Hack Zack'),
    ('Sack Flap');

select *
from artist
order by name desc
limit 10;

select * 
from artist
order by name asc limit 5;

select *
from artist
where name like 'Black%';

select *
from artist
where name like '%Black%';

select first_name, last_name
from employee
where city = 'Calgary';

select max(birth_date)
from employee;

select min(birth_date)
from employee;

select *
from employee
where reports_to = 2;


select count(*)
from employee
where city = 'Lethbridge';

select count(*) orders
from invoice
where billing_country = 'USA';

select max(total)
from invoice;

select min(total)
from invoice;

select *
from invoice
where total > 5;

select count(*)
from invoice
where total < 5;

select count(*)
from invoice
where billing_state in ('CA', 'TX', 'Az');

select avg(total)
from invoice;

select sum(total)
from invoice;