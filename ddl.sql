CREATE DATABASE final_projectCINF202;

USE final_projectCINF202;

CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15)
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Genre VARCHAR(50),
    Price DECIMAL(10, 2),
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    TotalPrice DECIMAL(10, 2),
    DateOfSale DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderItem (
    OrderID INT,
    ISBN VARCHAR(13),
    PRIMARY KEY (OrderID, ISBN),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);
