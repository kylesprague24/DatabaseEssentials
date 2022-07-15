/* This is creating the tables and all the relationships between them. 
It is ok to have multiple FK reference one PK in the same table. 

CREATE TABLE Users (
	id	int PRIMARY KEY AUTO_INCREMENT,
    email	varchar(255) NOT NULL UNIQUE, 
    country	char(2) NOT NULL, 
    bio	text NOT NULL); 

CREATE TABLE Rooms (
	id int PRIMARY KEY AUTO_INCREMENT, 
    owner_id int, 
    price int NOT NULL, 
    total_bedrooms int NOT NULL, 
    total_bathrooms int NOT NULL,
    summary text, 
    location varchar(255),
    FOREIGN KEY (owner_id) REFERENCES Users(id)); 
    
CREATE TABLE Bookings(
	id int PRIMARY KEY AUTO_INCREMENT, 
    room_id int, 
    owner_id int,
    renter_id int, 
    start_date date NOT NULL, 
    end_date date NOT NULL, 
    FOREIGN KEY (room_id) REFERENCES Rooms(id), 
    FOREIGN KEY (owner_id) REFERENCES Users(id), 
    FOREIGN KEY (renter_id) REFERENCES Users(id)); 
    
    */
    
    