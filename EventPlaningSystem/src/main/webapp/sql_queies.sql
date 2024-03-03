CREATE TABLE USERS (
	email VARCHAR(100) PRIMARY KEY,
	name VARCHAR(100),
	password VARCHAR(20),
	role VARCHAR(15)
);

CREATE TABLE reservations (
    reservationId INT PRIMARY KEY AUTO_INCREMENT,
    reservationDate DATE,
    userName VARCHAR(255),
    userEmail VARCHAR(255),
    reservationItemId INT,
    reservedItemName VARCHAR(255)
);

CREATE TABLE events (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(100), 
	event_date DATE, 
	descrption VARCHAR(100) 
);
CREATE TABLE packages (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    price DOUBLE
    );