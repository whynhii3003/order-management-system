-- Tạo Database
CREATE DATABASE SupermarketOrders;
USE SupermarketOrders;
-- Tạo bảng Customer (Thông tin khách hàng)
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL
);
-- Bảng Invoice (Thông tin hóa đơn)
CREATE TABLE Invoice (
    InvoiceID VARCHAR(10) PRIMARY KEY,
    CustomerID INT,
    Date DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
-- Bảng InvoiceDetails (Chi tiết hóa đơn)
CREATE TABLE InvoiceDetails (
    DetailID INT PRIMARY KEY AUTO_INCREMENT,
    InvoiceID VARCHAR(10),
    ItemName VARCHAR(255) NOT NULL,
    Unit VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);
-- Bảng InvoiceIssuer (Thông tin người lập hóa đơn)
CREATE TABLE InvoiceIssuer (
    InvoiceID VARCHAR(10),
    IssuerName VARCHAR(255) NOT NULL,
    PRIMARY KEY (InvoiceID, IssuerName),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);
-- Bảng Receiver (Thông tin người nhận hóa đơn)
CREATE TABLE Receiver (
    InvoiceID VARCHAR(10),
    ReceiverName VARCHAR(255) NOT NULL,
    PRIMARY KEY (InvoiceID, ReceiverName),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

