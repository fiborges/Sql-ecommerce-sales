-- Amazon Sale Report
CREATE TABLE Amazon_Sale_Report (
    index INT PRIMARY KEY,
    OrderID VARCHAR(50),
    Date DATE,
    Status VARCHAR(50),
    Fulfilment VARCHAR(50),
    Sales_Channel VARCHAR(50),
    ship_service_level VARCHAR(50),
    Style VARCHAR(50),
    SKU VARCHAR(50),
    Category VARCHAR(50),
    Size VARCHAR(50),
    ASIN VARCHAR(50),
    Courier_Status VARCHAR(50),
    Qty INT,
    currency VARCHAR(10),
    Amount DECIMAL(10, 2),
    ship_city VARCHAR(50),
    ship_state VARCHAR(50),
    ship_postal_code VARCHAR(20),
    ship_country VARCHAR(50),
    promotion_ids VARCHAR(5000),
    B2B VARCHAR(10),
    fulfilled_by VARCHAR(50),
    Unnamed VARCHAR(50)
);

-- Cloud Warehouse Comparison Chart
CREATE TABLE Cloud_Warehouse_Comparison_Chart (
    index INT PRIMARY KEY,
    Warehouse VARCHAR(5000),
    Metric VARCHAR(5000),
    Value VARCHAR(5000)
);

-- P&L March 2021
CREATE TABLE PL_March_2021 (
    index INT PRIMARY KEY,
    Date DATE,
    Description VARCHAR(5000),
    Amount DECIMAL(10, 2),
    Category VARCHAR(5000)
);

-- May 2022
CREATE TABLE May_2022 (
    index INT PRIMARY KEY,
    Date DATE,
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100)
);

-- Sale Report
CREATE TABLE Sale_Report (
    index INT PRIMARY KEY,
    OrderID VARCHAR(50),
    Date DATE,
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100)
);

-- International Sale Report
CREATE TABLE International_Sale_Report (
    index INT PRIMARY KEY,
    OrderID VARCHAR(50),
    Date DATE,
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Country VARCHAR(50)
);

-- Expense IIGF
CREATE TABLE Expense_IIGF (
    index INT PRIMARY KEY,
    Date DATE,
    Description VARCHAR(255),
    Amount DECIMAL(10, 2),
    Category VARCHAR(100)
);
