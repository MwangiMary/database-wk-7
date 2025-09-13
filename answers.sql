-- question one
-- Original ProductDetail table
-- creating data
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255)
);
-- insert data
INSERT INTO ProductDetail (OrderID, CustomerName, Products) 
VALUES
  (101, 'John Doe', 'Laptop, Mouse'),
  (102, 'Jane Smith', 'Tablet, Keyboard, Mouse'),
  (103, 'Emily Clark', 'Phone');
-- insert into data
SELECT 
    OrderID,
    CustomerName,
    TRIM(SUBSTRING_INDEX(Products, ',', 1)) AS Product
FROM ProductDetail
UNION ALL
SELECT 
    OrderID,
    CustomerName,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', 2), ',', -1)) AS Product
FROM ProductDetail
UNION ALL
SELECT 
    OrderID,
    CustomerName,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', 3), ',', -1)) AS Product
FROM ProductDetail;




-- question 2
CREATE TABLE Orders AS
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM OrderDetails;

CREATE TABLE OrderItems AS
SELECT 
    OrderID,
    Product,
    Quantity
FROM OrderDetails;

