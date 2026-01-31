use  FOOD_DELIVERY_PLATFORM
create database FOOD_DELIVERY_PLATFORM;
CREATE TABLE users(users_id int primary key,name varchar(50),email varchar(200), delivery_address varchar(500)
, phone_number int , passwords varchar(500)--for strong password,

);
create table admins(users_id int,foreign key(users_id ) references users(users_id ), admins_id int primary key,
 name varchar(50));
create table management_team(name varchar(50), management_id int primary key, users_id   int , foreign key(users_id) references users(users_id)
);
CREATE TABLE customer(name varchar(50), customer_id int primary key, users_id   int , foreign key(users_id) references users(users_id)
);
CREATE TABLE orders(order_id int primary key, price int , order_status varchar(50), order_date date, addresss varchar(50),
payment_method varchar(50),management_id   int , foreign key(management_id) references management_team(management_id),
 customer_id   int , foreign key(customer_id) references customer(customer_id));
 
create table restaurants(restaurant_id int primary key, restaurant_name varchar(500), addresss varchar(50), phone_number int ,
 order_id   int , foreign key(order_id) references orders(order_id));

create table food_items (item_id int primary key, name varchar(50), price int , typee varchar(50),
 restaurant_id   int , foreign key(restaurant_id) references restaurants(restaurant_id))
create table delivery_personnel(DP_ID INT PRIMARY KEY, name varchar(50), contact_number int , 
 order_id   int , foreign key(order_id) references orders(order_id),
  item_id   int , foreign key(item_id) references food_items(item_id),
  management_id   int , foreign key(management_id) references management_team(management_id));
create table feedback(feedback_id int primary key, comments varchar(500), statuss varchar(50), 
management_id   int , foreign key(management_id) references management_team(management_id),
 customer_id   int , foreign key(customer_id) references customer(customer_id));