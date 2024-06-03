INSERT INTO Publisher (PublisherID, Name, Address, Phone)
VALUES 
  (4, 'Fourth Publisher', '123 Maple St', '(518)555-4321'),
  (5, 'Fifth Publisher', '456 Oak St', '(518)555-5678'),
  (6, 'Sixth Publisher', '789 Pine St', '(518)555-8765'),
  (7, 'Seventh Publisher', '101 Pine St', '(518)555-5432'),
  (8, 'Eighth Publisher', '202 Cedar St', '(518)555-6543'),
  (9, 'Ninth Publisher', '303 Elm St', '(518)555-7654'),
  (10, 'Tenth Publisher', '404 Birch St', '(518)555-8765'),
  (11, 'Eleventh Publisher', '505 Cedar St', '(518)555-9876'),
  (12, 'Twelfth Publisher', '606 Pine St', '(518)555-2345'),
  (13, 'Thirteenth Publisher', '707 Elm St', '(518)555-3456');

INSERT INTO Book (ISBN, Title, Author, Genre, Price, PublisherID)
VALUES 
  ('1234567890111', 'Book 1', 'Author A', 'Adventure', 14.99, 4),
  ('2345678901222', 'Book 2', 'Author B', 'Romance', 24.99, 5),
  ('3456789012333', 'Book 3', 'Author C', 'Science Fiction', 19.99, 6),
  ('4567890123444', 'Book 4', 'Author D', 'Mystery', 29.99, 7),
  ('5678901234555', 'Book 5', 'Author E', 'Fantasy', 34.99, 8),
  ('6789012345666', 'Book 6', 'Author F', 'Thriller', 22.99, 9),
  ('7890123456777', 'Book 7', 'Author G', 'Historical Fiction', 27.99, 10),
  ('8901234567888', 'Book 8', 'Author H', 'Horror', 17.99, 11),
  ('9012345678999', 'Book 9', 'Author I', 'Comedy', 12.99, 12),
  ('0123456789000', 'Book 10', 'Author J', 'Biography', 39.99, 13);

INSERT INTO Customer (CustomerID, Name, Email, Address)
VALUES 
  (7, 'Grace Smith', 'graces@example.com', '808 Birch St'),
  (8, 'Henry Glass', 'henryg@example.com', '909 Cedar St'),
  (9, 'Isabel Bruns', 'isabelb@example.com', '1010 Elm St'),
  (10, 'Jack Criscione', 'jackc@example.com', '1111 Pine St'),
  (11, 'Katie Collins', 'katiec@example.com', '1212 Oak St'),
  (12, 'Liam Clark', 'liamc@example.com', '1313 Birch St'),
  (13, 'Mia Fragomeni', 'miaf@example.com', '1414 Cedar St'),
  (14, 'Noah Richmond', 'noahr@example.com', '1515 Elm St'),
  (15, 'Olivia Criscione', 'oliviac@example.com', '1616 Pine St'),
  (16, 'Peter Griffin', 'peterg@example.com', '1717 Oak St');

INSERT INTO `Order` (OrderID, CustomerID, Date, TotalPrice, DateOfSale)
VALUES 
  (7, 7, '2023-07-01', 44.99, '2023-07-02'),
  (8, 8, '2023-08-01', 54.99, '2023-08-02'),
  (9, 9, '2023-09-01', 64.99, '2023-09-02'),
  (10, 10, '2023-10-01', 74.99, '2023-10-02'),
  (11, 11, '2023-11-01', 84.99, '2023-11-02'),
  (12, 12, '2023-12-01', 94.99, '2023-12-02'),
  (13, 13, '2024-01-01', 104.99, '2024-01-02'),
  (14, 14, '2024-02-01', 114.99, '2024-02-02'),
  (15, 15, '2024-03-01', 124.99, '2024-03-02'),
  (16, 16, '2024-04-01', 134.99, '2024-04-02');

INSERT INTO OrderItem (OrderID, ISBN)
VALUES 
  (7, '1234567890111'),
  (7, '2345678901222'),
  (8, '3456789012333'),
  (8, '4567890123444'),
  (9, '5678901234555'),
  (9, '6789012345666'),
  (10, '7890123456777'),
  (10, '8901234567888'),
  (11, '9012345678999'),
  (11, '0123456789000');
