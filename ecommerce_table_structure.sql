CREATE DATABASE yashishop;
USE yashishop;

CREATE TABLE customer(
	customer_id INT PRIMARY KEY auto_increment ,
    name varchar(100),
    email varchar(100) unique,
    city varchar(50),
    signup_date date
    );

create table products(
	product_id int primary key auto_increment,
    product_name varchar(100),
    category varchar(50),
    price decimal(10,2),
    stock int
    );
    
create table orders(
	order_id int primary key auto_increment,
	customer_id int,
	order_date date,
	order_status varchar(30),
	foreign key (customer_id) references customer(customer_id)
);

create table order_items(
	order_item_id int primary key auto_increment,
	order_id int,
	product_id int,
	quantity int ,
	foreign key(order_id) references orders(order_id),
	foreign key(product_id) references products(product_id)
);

create table payments(
	payment_id int primary key auto_increment,
    order_id int,
    payment_mode varchar(30),
    amount decimal (10,2),
    payment_date date,
    foreign key(order_id) references orders(order_id)
);
