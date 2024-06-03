#Question 1 Combine info for orders, customers, and books 
CREATE VIEW v_question_01 AS 
SELECT 
    `Order`.OrderID,
    `Order`.Date,
    Customer.Name AS CustomerName,
    Customer.Email AS CustomerEmail,
    Book.Title AS BookTitle,
    Book.Price AS BookPrice
FROM `Order`
JOIN Customer ON `Order`.CustomerID = Customer.CustomerID
JOIN OrderItem ON `Order`.OrderID = OrderItem.OrderID
JOIN Book ON OrderItem.ISBN = Book.ISBN;
# SELECT * FROM v_question_01 (for text output) 


#Question 2 Show count of each book genre
CREATE VIEW v_question_02 AS SELECT
    Genre,
    COUNT(*) AS NumberOfBooks
FROM Book
GROUP BY Genre;
# SELECT * FROM v_question_02


#Question 3 Display all books under $30
CREATE VIEW v_question_03 AS SELECT
    ISBN,
    Title,
    Author,
    Genre,
    Price
FROM Book
WHERE Price < 30.00;
#SELECT * FROM v_question_03


#Question 4 Display all books in decending order by price (highest to lowest)
CREATE VIEW v_question_04 AS SELECT
    ISBN,
    Title,
    Author,
    Genre,
    Price
FROM Book
ORDER BY Price DESC;
# SELECT * FROM v_question_04


#Question 5 Display all orders that are $80 or less
CREATE VIEW v_question_05 AS SELECT
    OrderID,
    TotalPrice
FROM `Order`
WHERE TotalPrice < 80.00;
# SELECT * FROM v_question_05


#Question 6 Display Customers with Criscione as their lastname
CREATE VIEW v_question_06 AS SELECT
    CustomerID,
    Name,
    Email,
    Address
FROM Customer
WHERE SUBSTRING_INDEX(Name, ' ', -1) = 'Criscione';
# SELECT * FROM v_question_06


#Question 7 Display orders from 2023
CREATE VIEW v_question_07 AS SELECT
    OrderID,
    CustomerID,
    Date,
    TotalPrice
FROM `Order`
WHERE YEAR(Date) = 2023;
# SELECT * FROM v_question_07


#Question 8 Display all orders from 2024 
CREATE VIEW v_question_08 AS SELECT
    OrderID,
    CustomerID,
    Date,
    TotalPrice
FROM `Order`
WHERE YEAR(Date) = (
    SELECT 2024
);
# SELECT * FROM v_question_08

#Question 9 Display Customers who have a C anywhere in their name
CREATE VIEW v_question_09 AS SELECT
    CustomerID,
    Name,
    Email,
    Address
FROM Customer
WHERE UPPER(Name) LIKE '%C%';
# SELECT * FROM v_question_09


#Question 10 Display Publishers who live on Pine St or Cedar St
CREATE VIEW v_question_10 AS SELECT
    PublisherID,
    Name AS PublisherName,
    Address AS PublisherAddress
FROM Publisher
WHERE Address LIKE '%Pine St%' OR Address LIKE '%Cedar St%';
# SELECT * FROM v_question_10
