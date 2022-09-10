CREATE TABLE autopark.cars (
	id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
	Brand VARCHAR(30),
	Model VARCHAR(30),
	`License plate` varchar(10),
	`Class auto` ENUM('Economy', 'Comfort', 'Comfort+', 'Business'),
	Color varchar(30)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4;

CREATE TABLE autopark.drivers (
	id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
	Firstname VARCHAR(30),
	Lastname VARCHAR(30),
	Birthday DATE,
	Passport VARCHAR(100),
	Nationality varchar(30),
	Category varchar(30),
	Rang FLOAT
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4;

CREATE TABLE autopark.orders (
	id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
	Driver VARCHAR(100),
	Car VARCHAR(100),
	Wherefrom VARCHAR(150),
	`Where` VARCHAR(150),
	Price FLOAT,
	Distance FLOAT,
	`Date` DATE,
	Payment ENUM('Card', 'Cash')
	
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4;

CREATE TABLE autopark.users (
	id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
	Login VARCHAR(50),
	Firstname VARCHAR(30),
	Lastname VARCHAR(30),
	Birthday DATE,
	Phone VARCHAR(20),
	Email VARCHAR(100),
	Sale FLOAT,
	Rating FLOAT
	
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4;

CREATE TABLE autopark.employees (
	id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
	Firstname VARCHAR(30),
	Lastname VARCHAR(30),
	Birthday DATE,
	Phone VARCHAR(20),
	Email VARCHAR(100),
	Post VARCHAR(50)
	);
