-- Chèn dữ liệu mẫu
-- Thêm khách hàng
INSERT INTO Customer (FullName, Address) VALUES 
('Nguyen Thi A', 'Van Phu - Ha Dong - Ha Noi');

-- Thêm hóa đơn
INSERT INTO Invoice (InvoiceID, CustomerID, Date, TotalAmount) VALUES 
('123A1', 1, '2024-11-09', 50000.00);

-- Thêm chi tiết hóa đơn
INSERT INTO InvoiceDetails (InvoiceID, ItemName, Unit, Quantity, UnitPrice, Total) VALUES 
('123A1', 'Water', 'Bottle', 6, 5000, 30000),
('123A1', 'Notebook', 'Book', 2, 10000, 20000);

-- Thêm người lập hóa đơn
INSERT INTO InvoiceIssuer (InvoiceID, IssuerName) VALUES 
('123A1', 'Nhung');

-- Thêm người nhận hóa đơn
INSERT INTO Receiver (InvoiceID, ReceiverName) VALUES 
('123A1', 'Huong');

--  Kiểm tra dữ liệu
SELECT * FROM Customer;
SELECT * FROM Invoice;
SELECT * FROM InvoiceDetails;
SELECT * FROM InvoiceIssuer;
SELECT * FROM Receiver;
