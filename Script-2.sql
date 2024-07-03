CREATE DATABASE GameRetail;

Use GameRetail;

Create table Customers(
CustomerID INT PRIMARY KEY auto_Increment,
FirstName Varchar(50),
LastName Varchar(150),
Email Varchar(150),
PhoneNumber Varchar(15),
Address Varchar(500),
Lastlogintime Datetime,
Password Varchar(255)
);

SELECT * FROM Customers c 

Create table Products(
ProductID INT PRIMARY KEY,
GameTitle Varchar(150),
SupplierID INT,
Genre Varchar(150),
Publisher Varchar(150),
Developer Varchar(500),
StockDate Date,
Price DECIMAL(50),
StockQuantity INT(50)
);

DROP table Products;

Create table Suppliers(
SupplierID INT PRIMARY KEY,
SupplierName Varchar(100),
PhoneNumber Varchar(15),
Email Varchar(150),
Address Varchar(500),
DateofSupply Date,
UnitPrice DECIMAL(50),
Quantity INT
);

ALTER table Suppliers 
Modify UnitPrice Decimal(10,2);





SELECT * FROM Customers c 

SELECT * FROM Products p 

SELECT * FROM InventoryStatus is2 

SELECT * FROM Sales s 


Create table Products(
ProductID INT PRIMARY KEY,
GameTitle Varchar(150),
SupplierID INT,
Genre Varchar(150),
Publisher Varchar(150),
Developer Varchar(500),
StockDate Date,
Price DECIMAL(10,2),
Quantity INT, 
Foreign Key (SupplierID) References Suppliers(SupplierID)
);

Alter table Products 
Add Images VARCHAR(2083)

Create table Sales(
SalesID INT PRIMARY KEY,
CustomerID INT(50),
ProductID INT,
SalesDate date,
TotalAmount DECIMAL(10,2),
Foreign Key (CustomerID) References Customers(CustomerID)
);

ALTER TABLE Sales 
ADD CONSTRAINT FK_CustomerID
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Sales 
ADD CONSTRAINT FK_ProductID
FOREIGN KEY (ProductID) 
REFERENCES Products(ProductID);

ALTER TABLE Sales 
DROP CONSTRAINT FK_ProductID
FOREIGN KEY (ProductID) 
REFERENCES Products(ProductID);


Create table SalesDetails(
SalesDetailID INT PRIMARY KEY,
SalesID INT(50),
Quantity INT(50),
UnitPrice DECIMAL(10,2),
PaymentStatus Varchar(50),
Foreign Key (SalesID) References Sales(SalesID)
);


INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, Lastlogintime, Password)
VALUES ('Lola', 'Sauer', 'Lola.Sauer64@hotmail.com', '+1 707-7913', 'Suite 950', '2022-12-15', 'TqWuaEyrWExTapU'),
('Yvonne', 'Bauch', 'Yvonne66@gmail.com', '+1 674-6688', 'Apt. 400', '2023-09-07', 'ZUJmrPlF6Nfb3KS'),
('Alonzo', 'Koepp', 'Alonzo.Koepp@hotmail.com', '+1 992-5556', 'Apt. 128', '2022-09-12', 'Ym6xhaJbj7Ga8_8'),
('Wilson', 'Kuvalis', 'Wilson97@yahoo.com', '+1 100-3513', 'Apt. 762', '2022-08-27', 'Vc1mC6OGjQN4U8N'),
('Rafael', 'Moore', 'Rafael.Moore61@hotmail.com', '+1 520-0114', 'Suite 203', '2023-01-05', 'HmgwqNIX1IkTCx1'),
('Adam', 'Rath', 'Adam_Rath@hotmail.com', '+1 200-1031', 'Suite 364', '2022-07-21', 'FOwE9ne6f4InV2E'),
('Sheldon', 'Ratke', 'Sheldon_Ratke2@hotmail.com', '+1 556-5209', 'Suite 634', '2022-06-09', 'cAZOQO2Dhe8mfTC'),
('Stacey', 'Veum', 'Stacey.Veum@hotmail.com', '+1 341-9458', 'Apt. 793', '2024-05-11', '3emLyfCSUXfvdHs'),
('Diane', 'Greenfelder-Bergnaum', 'Diane80@gmail.com', '+1 089-6761', 'Apt. 504', '2023-08-15', 'wOSiGlhO8gNqToT'),
('Leticia', 'Bins', 'Leticia57@yahoo.com', '+1 454-6256', 'Apt. 128', '2022-11-29', 'unqXh47QbqEJNOx');


INSERT INTO Suppliers (SupplierID , SupplierName , PhoneNumber, Email, DateofSupply ,Address, UnitPrice, Quantity)
VALUES('24143', 'Bertram', '501-968-823', 'Gonzalo_Lakin@yahoo.com', '2020-11-10', 'Apt. 616', '975.00', '57'),
 ('41864', 'Alfred', '501-705-116', 'Gladys.Purdy75@yahoo.com', '2021-06-02', 'Apt. 803', '13.00', '66'),
 ('87639', 'Johann', '501-792-655', 'Dock57@gmail.com', '2019-10-14', 'Suite 565', '475.00', '32'),
 ('42586', 'Lurline', '501-673-645', 'Rachelle24@hotmail.com', '2019-11-13', 'Apt. 528', '86.00', '159'),
 ('99402', 'Amya', '501-898-427', 'Bettie_Jones42@yahoo.com', '2024-06-15', 'Suite 063', '187.00', '188'),
 ('14053', 'Providenci', '501-084-296', 'Jarod.Abernathy@gmail.com', '2018-05-27', 'Apt. 343', '736.00', '37'),
 ('40443', 'Isom', '501-240-489', 'Litzy_Morar1@gmail.com', '2024-01-24', 'Suite 860', '360.00', '52'),
 ('78162', 'Raymond', '501-262-718', 'Elise_Beer@hotmail.com', '2017-01-31', 'Suite 029', '688.00', '176'),
 ('53394', 'June', '501-894-430', 'Keira_Kilback@yahoo.com', '2020-09-10', 'Apt. 230', '80.00', '38'),
 ('28469', 'Fermin', '501-060-960', 'Moshe85@hotmail.com', '2021-09-01', 'Apt. 734', '502.00', '53');


INSERT INTO Products (ProductID , GameTitle , Genre , Publisher , Developer , StockDate, Price, Quantity, Images)
VALUES ('7867','Grand Theft Auto V','Action','Rockstar Games','Rockstar North','2024-01-03','765','31','/games/boxart/full_6510540AmericaFrontccc.jpg'),
('1278','Call of Duty: Black Ops 3','Shooter','Activision','Treyarch','2023-11-30','124','17','/games/boxart/full_4990510AmericaFrontccc.jpg'),
('567','Red Dead Redemption 2','Action-Adventure','Rockstar Games','Rockstar North','2018-01-03','55.9','222','/games/boxart/full_4653215AmericaFrontccc.jpg'),
('29','Call of Duty: Black Ops','Shooter','Activision','Treyarch','2021-10-19','89.99','98','/games/boxart/full_call-of-duty-black-ops_3AmericaFront.jpg'),
('569','FIFA 18','Sports','EA Sports','EA Vancouver','2024-01-23','70.50','44','/games/boxart/full_6510540AmericaFrontccc.jpg'),
('0457','Halo: Reach','Shooter','Microsoft Game Studios','Bungie','2022-11-13','125.90','23','games/boxart/full_halo-reach_6AmericaFront.jpg'),
('398','The Sims 3','Simulation','Electronic Arts','EA Redwood Shores','2021-07-08','207.50','23','/games/boxart/full_6510540AmericaFrontccc.jpg'),
('3670','Battlefield 3','Shooter','Electronic Arts','EA DICE','2018-09-12','51','35','/games/boxart/full_6510540AmericaFrontccc.jpg'),
('111','Star Wars Battlefront (2015)','Shooter','Electronic Arts','EA DICE','2018-12-03','76','9','/games/boxart/full_6510540AmericaFrontccc.jpg'),
('222','The Elder Scrolls V: Skyrim','Role-Playing','Bethesda Softworks','Bethesda Game Studios','2018-01-03','50','45','//games/boxart/full_the-elder-scrolls-v-skyrim_554AmericaFront.jpg');

INSERT INTO Sales (SalesID , SalesDate , TotalAmount)
VALUES ('62418','2025-09-03T06:56:41.892', '187.00'),
('13501','2016-04-24', '193.00'),
('70342', '2019-03-25', '142.00'),
('69629','2018-08-28', '73.00'),
('62576', '2023-11-18', '190.00'),
('94263','2022-07-12', '210.00'),
('70645','2024-04-27', '257.00'),
('30436','2018-12-12', '161.00'),
('14149','2024-04-09', '62.00'),
('42492','2019-02-16', '277.00');



INSERT INTO SalesDetails(SalesDetailID, Quantity ,UnitPrice, PaymentStatus) 
VALUES('492', '1', '193.00', 'Credit'),
 ('718', '4', '173.00', 'Debit Card'),
 ('412', '5', '286.00', 'Pending'),
 ('554', '6', '84.00', 'Complete'),
 ('954', '4', '272.00', 'Credit Card'),
 ('738', '1', '130.00', 'Pending'),
 ('949', '3', '284.00', 'Complete'),
 ('542', '8', '168.00', 'Complete'),
 ('686', '8', '172.00', 'Pending'),
 ('429', '9', '238.00', 'Pending');

CREATE Table Returns(
ReturnID INT(50) PRIMARY KEY,
SalesID INT,
ReturnDate date,
Reason Varchar(500),
Foreign Key (SalesID) References Sales(SalesID)
);

INSERT INTO Returns(ReturnID, SalesID ,ReturnDate, Reason)
VALUES( '101','13501', '2022-07-12', 'Damage in console'),
('111', '42492', '2023-11-29', 'Unspecified'),
( '202','94263' ,'2020-01-12', 'Shipment Failure'),
( '299','30436' ,'2021-12-12', 'Damage');

#Query1:
SELECT s.SupplierID, s.SupplierName, s.DateofSupply, COUNT(p.ProductID) AS No_Of_Products
FROM Suppliers s 
join Products p on s.SupplierID = p.SupplierID 
Group by s.SupplierID, s.SupplierName, s.DateofSupply; 

#Query 2:
SELECT p.SupplierID, SupplierName , p.ProductID, p.GameTitle, p.Genre, s.TotalAmount 
FROM SalesDetails sd
JOIN Products p on sd.ProductID = p.ProductID 
JOIN Sales s on sd.SalesID =s.SalesID 
JOIN Suppliers s2 on s2.SupplierID=p.SupplierID 
LIMIT 10

#Query 3:
SELECT s.CustomerID, CONCAT(FirstName," ", LastName) as NAME, s.`Total Purchase`, s.SalesID 
FROM Customers c 
JOIN Sales s on c.CustomerID= s.CustomerID 

# Query 4:
SELECT ReturnID, p.GameTitle, p.Publisher, ReturnDate, Reason, sd.ProductID 
FROM `Returns` r
JOIN Sales s on r.SalesID = s.SalesID 
JOIN SalesDetails sd on s.SalesID = sd.SalesID 
JOIN Products p on sd.ProductID = p.ProductID 

# Query 5:
SELECT p.GameTitle, s.SalesID, p.Genre AS Category_A, s.SalesDate
FROM Products p
JOIN SalesDetails sd ON p.ProductID = sd.ProductID
JOIN Sales s ON sd.SalesID = s.SalesID
WHERE s.SalesDate > CURRENT_DATE() - INTERVAL 1 MONTH


#Creating View 
CREATE VIEW ProductSupplierSummary AS
SELECT 
    p.ProductID,
    p.GameTitle,
    p.Genre,
    p.UnitPrice,
    sd.SalesDetailID,
    s.SalesID,
    s2.SupplierID,
    s2.SupplierName,
    r.ReturnID
FROM 
    Products p 
JOIN 
    SalesDetails sd ON p.ProductID = sd.ProductID
JOIN 
    Sales s ON sd.SalesID = s.SalesID
JOIN 
    Suppliers s2 ON p.SupplierID = s2.SupplierID
LEFT JOIN 
    Returns r ON s.SalesID = r.SalesID;

SELECT * FROM productsuppliersummary ;


#Creating Trigger
DELIMITER //

CREATE TRIGGER updateInventory
AFTER INSERT ON Products
FOR EACH ROW
    INSERT INTO InventoryStatus (ProductID, Quantity)
    VALUES (NEW.ProductID, NEW.Quantity);

// 
DELIMITER ;


INSERT INTO Products (ProductID, Quantity)
VALUES('4','3');

SELECT * FROM InventoryStatus 

SHOW TRIGGERS;


# Creating Index
CREATE INDEX IDX_GENRE ON Products(Genre)

SHOW INDEX FROM Products

CREATE INDEX IDX_SUPPLIERNAME ON Suppliers(SupplierName)

SHOW INDEX FROM Suppliers 

CREATE INDEX IDX_CUSTOMER_EMAIL ON Customers(Email)

SHOW INDEX FROM Customers 


