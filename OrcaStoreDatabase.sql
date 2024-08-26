create database OrcaStore
use OrcaStore

create table product(
	id int identity,
	image nvarchar(50),
	name nvarchar(50),
	price int,
	type nvarchar(20),
	releaseDate date,
	developer nvarchar(20),
	publisher nvarchar(20),
	largeImageUrl nvarchar(50),
	buyCount int
);

create table account(
	username nvarchar(20),
	password nvarchar(20),
	role bit
);

create table cart(
	id int identity,
	username nvarchar(50),
	productId int
);

create table userInfo(
	username nvarchar(20),
	fullname nvarchar(50),
	birthday date,
	gender bit,
	phoneNumber nvarchar(20)
);

create table buyHistory(
	id int identity,
	username nvarchar(50),
	productId int,
	buyDate date
);

INSERT INTO userInfo (username, fullname, birthday, gender, phoneNumber) VALUES
('john_doe@example.com', 'John Doe', '1990-01-15', 1, '123-456-7890'),
('jane_smith@example.com', 'Jane Smith', '1985-05-20', 0, '234-567-8901'),
('alice_jones@example.com', 'Alice Jones', '1992-07-30', 0, '345-678-9012'),
('bob_brown@example.com', 'Bob Brown', '1988-11-25', 1, '456-789-0123'),
('carol_white@example.com', 'Carol White', '1995-09-10', 0, '567-890-1234');