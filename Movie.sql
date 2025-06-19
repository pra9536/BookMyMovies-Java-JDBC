create database BookMyMovies;
use BookMyMovies;

create table users(
user_id int primary key auto_increment,
name varchar(30),
email varchar(30),
phone varchar(10)
);

create table movies(
movie_id int primary key auto_increment,
title varchar(30),
genre varchar(30),
lang varchar(30),
duration int
);

create table theater(
theater_id int primary key auto_increment,
name varchar(30),
city varchar(30)
);

create table shows(
show_id int primary key auto_increment,
movie_id int,
theater_id int,
timing varchar(30),
available_seat int,
foreign key (movie_id) references movies(movie_id),
foreign key (theater_id) references theater(theater_id)
);

create table seat(
seat_id int primary key auto_increment,
show_id int,
seat_number varchar(10),
is_booked boolean default false,
foreign key (show_id) references shows(show_id)
);

create table bookings(
booking_id int primary key auto_increment,
user_id int,
show_id int,
seats_booked varchar(30),
total_price decimal(10,2)
);

insert into users(name, email, phone) values ("Prateek Yadav", "prateek56@gmail.com", "5896482584"),
                                 ("Deepak Kumar",  "deepak@gmail.com", "4646764564"),
                                 ("Shivam Singh", "shivam@gmail.com", "4483549764");
                                 
insert into movies(title, genre, lang, duration) values 
('Chhava', 'History', 'Hindi', 148),
('Pati Patni or wo', 'Comedy', 'Hindi', 140),
('IronMan', 'Action', 'English', 180),
('Pushpa', 'Thriller', 'Telugu', 160),
('KGF', 'Action', 'Hindi', 170);


insert into theater(name, city) values 
('PVR', 'Delhi'),
('INOX', 'Agra'),
('IMAX', 'Pune'),
('Cinepolis', 'Mumbai'),
('Meeraj', 'Nashik');

insert into shows(movie_id, theater_id, timing, available_seat) values 
(1, 1, '10:00 AM', 40),
(1, 2, '03:00 PM', 50),
(2, 3, '07:00 PM', 60),
(3, 4, '09:00 PM', 30),
(4, 5, '09:00 AM', 30),
(, 3, '07:00 PM', 60)