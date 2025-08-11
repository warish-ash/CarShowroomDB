-- PART 1: Basic Aggregate Functions

-- 1. Total number of customers
SELECT COUNT(*) AS Total_Customers FROM Customers;

-- 2. Average sale price of all car sales
SELECT AVG(SalePrice) AS Avg_Sale_Price FROM Sales;

-- 3. Most expensive car ever sold
SELECT MAX(SalePrice) AS Most_Expensive_Sale FROM Sales;

-- 4. Total inventory count of all cars
SELECT SUM(InventoryCount) AS Total_Inventory FROM Cars;

-- 5. Earliest and most recent sale dates
SELECT MIN(SaleDate) AS Earliest_Sale, MAX(SaleDate) AS Latest_Sale FROM Sales;






-- PART 2: GROUP BY Exercises

-- 1. Group cars by brand and count models
SELECT Brand, COUNT(DISTINCT Model) AS Model_Count
FROM Cars
GROUP BY Brand;

-- 2. Total sales amount for each salesperson
SELECT sp.Name, SUM(s.SalePrice) AS Total_Sales
FROM Sales s
JOIN Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY sp.Name;

-- 3. Average sale price for each car model
SELECT c.Model, AVG(s.SalePrice) AS Avg_Price
FROM Sales s
JOIN Cars c ON s.CarID = c.CarID
GROUP BY c.Model;

-- 4. Average service cost for each service type
SELECT ServiceType, AVG(Cost) AS Avg_Cost
FROM ServiceRecords
GROUP BY ServiceType;

-- 5. Count cars by brand and color
SELECT Brand, Color, COUNT(*) AS Count_By_Brand_Color
FROM Cars
GROUP BY Brand, Color;






-- PART 3: HAVING Clause Exercises

-- 1. Brands with more than 5 different car models
SELECT Brand, COUNT(DISTINCT Model) AS Model_Count
FROM Cars
GROUP BY Brand
HAVING COUNT(DISTINCT Model) > 5;

-- 2. Car models sold more than 10 times
SELECT c.Model, COUNT(*) AS Sale_Count
FROM Sales s
JOIN Cars c ON s.CarID = c.CarID
GROUP BY c.Model
HAVING COUNT(*) > 10;

-- 3. Salespersons with average sale price > 50,000
SELECT sp.Name, AVG(s.SalePrice) AS Avg_Sale_Price
FROM Sales s
JOIN Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY sp.Name
HAVING AVG(s.SalePrice) > 50000;

-- 4. Months with more than 20 sales
SELECT TO_CHAR(SaleDate, 'YYYY-MM') AS Sale_Month, COUNT(*) AS Total_Sales
FROM Sales
GROUP BY TO_CHAR(SaleDate, 'YYYY-MM')
HAVING COUNT(*) > 20;

-- 5. Service types where average cost > 500
SELECT ServiceType, AVG(Cost) AS Avg_Cost
FROM ServiceRecords
GROUP BY ServiceType
HAVING AVG(Cost) > 500;
