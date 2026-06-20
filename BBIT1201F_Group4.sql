CREATE DATABASE IF NOT EXISTS Market_Stall_Allocation_System;
USE Market_Stall_Allocation_System;

-- Creating the core tables for the system
CREATE TABLE Market (
    Market_ID INT AUTO_INCREMENT PRIMARY KEY,
    Market_Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100) NOT NULL
);

CREATE TABLE Category (
    Category_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_Name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Trader (
    Trader_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(15) NOT NULL UNIQUE,
    Address VARCHAR(150) NOT NULL,
    Gender VARCHAR(10) NOT NULL
);

CREATE TABLE Store (
    Store_ID INT AUTO_INCREMENT PRIMARY KEY,
    Store_Number VARCHAR(20) NOT NULL UNIQUE,
    Location VARCHAR(100) NOT NULL,
    Size VARCHAR(20) NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Available',
    Market_ID INT NOT NULL,
    Category_ID INT NOT NULL,
    FOREIGN KEY (Market_ID) REFERENCES Market(Market_ID),
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

CREATE TABLE Allocation (
    Allocation_ID INT AUTO_INCREMENT PRIMARY KEY,
    Store_ID INT NOT NULL,
    Trader_ID INT NOT NULL,
    Allocation_Date DATE NOT NULL,
    Expiry_Date DATE NOT NULL,
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID),
    FOREIGN KEY (Trader_ID) REFERENCES Trader(Trader_ID)
);

CREATE TABLE Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Trader_ID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Payment_Date DATE NOT NULL,
    Payment_Method VARCHAR(50) NOT NULL,
    Reference_No VARCHAR(50) NOT NULL UNIQUE,
    Remarks VARCHAR(255),
    FOREIGN KEY (Trader_ID) REFERENCES Trader(Trader_ID)
);


-- Inserting the categories 
INSERT INTO Category (Category_Name) VALUES
('Vegetables'), ('Clothing'), ('Electronics'), ('Dry Goods'), ('Meat & Fish'),
('Spices'), ('Footwear'), ('Cosmetics'), ('Housewares'), ('Hardware'),
('Textiles'), ('Stationery'), ('Bakery'), ('Grains'), ('Bags & Luggage'),
('Toys'), ('Pharmacy'), ('Tailoring'), ('Jewelry'), ('General Provision');

-- Inserting markets data
INSERT INTO Market (Market_Name, Location) VALUES
('Central Market', 'Freetown'),
('Eastern Market', 'Kenema'),
('Northern Market', 'Makeni'),
('Southern Market', 'Bo'),
('Waterloo Market', 'Waterloo'),
('Lumley Market', 'Lumley'),
('Congo Market', 'Freetown'),
('Kissy Market', 'Kissy'),
('Calaba Market', 'Calaba'),
('Goderich Market', 'Goderich'),
('Port Loko Market', 'Port Loko'),
('Koidu Market', 'Koidu'),
('Kabala Market', 'Kabala'),
('Magburaka Market', 'Magburaka'),
('Moyamba Market', 'Moyamba'),
('Bonthe Market', 'Bonthe'),
('Pujehun Market', 'Pujehun'),
('Kambia Market', 'Kambia'),
('Lunsar Market', 'Lunsar'),
('Mile 91 Market', 'Mile 91');

-- Inserting traders records
INSERT INTO Trader (Name, Phone_Number, Address, Gender) VALUES
('John Kamara','076111111','Freetown','Male'),
('Mary Conteh','076111112','Bo','Female'),
('Abdul Sesay','076111113','Kenema','Male'),
('Fatmata Bangura','076111114','Makeni','Female'),
('Mohamed Koroma','076111115','Koidu','Male'),
('Aminata Kanu','076111116','Port Loko','Female'),
('Ibrahim Turay','076111117','Kabala','Male'),
('Hawa Jalloh','076111118','Moyamba','Female'),
('Sorie Fofanah','076111119','Lunsar','Male'),
('Adama Kamara','076111120','Waterloo','Female'),
('Joseph Rogers','076111121','Lumley','Male'),
('Mariama Sesay','076111122','Kissy','Female'),
('Alusine Koroma','076111123','Calaba','Male'),
('Isatu Turay','076111124','Magburaka','Female'),
('Alpha Bangura','076111125','Kambia','Male'),
('Mabinty Kargbo','076111126','Pujehun','Female'),
('David Cole','076111127','Bonthe','Male'),
('Zainab Kanu','076111128','Kenema','Female'),
('Patrick Williams','076111129','Bo','Male'),
('Rugiatu Conteh','076111130','Freetown','Female');

-- Inserting store details
INSERT INTO Store (Store_Number, Location, Size, Status, Market_ID, Category_ID) VALUES
('S001','Block A','Small','Available',1,1),
('S002','Block B','Medium','Occupied',2,2),
('S003','Block C','Large','Available',3,3),
('S004','Block D','Medium','Occupied',4,4),
('S005','Block E','Small','Available',5,5),
('S006','Block F','Large','Occupied',6,6),
('S007','Block G','Medium','Available',7,7),
('S008','Block H','Small','Occupied',8,8),
('S009','Block I','Large','Available',9,9),
('S010','Block J','Medium','Occupied',10,10),
('S011','Block K','Small','Available',11,11),
('S012','Block L','Large','Occupied',12,12),
('S013','Block M','Medium','Available',13,13),
('S014','Block N','Small','Occupied',14,14),
('S015','Block O','Large','Available',15,15),
('S016','Block P','Medium','Occupied',16,16),
('S017','Block Q','Small','Available',17,17),
('S018','Block R','Large','Occupied',18,18),
('S019','Block S','Medium','Available',19,19),
('S020','Block T','Small','Occupied',20,20);

-- Inserting payments records
INSERT INTO Payment (Trader_ID, Amount, Payment_Date, Payment_Method, Reference_No, Remarks) VALUES
(1,500,'2026-01-05','Cash','REF001','Paid'),
(2,600,'2026-01-06','Mobile Money','REF002','Paid'),
(3,550,'2026-01-07','Bank Transfer','REF003','Paid'),
(4,700,'2026-01-08','Cash','REF004','Paid'),
(5,650,'2026-01-09','Mobile Money','REF005','Paid'),
(6,500,'2026-01-10','Cash','REF006','Paid'),
(7,800,'2026-01-11','Bank Transfer','REF007','Paid'),
(8,750,'2026-01-12','Cash','REF008','Paid'),
(9,600,'2026-01-13','Mobile Money','REF009','Paid'),
(10,550,'2026-01-14','Cash','REF010','Paid'),
(11,700,'2026-01-15','Bank Transfer','REF011','Paid'),
(12,650,'2026-01-16','Cash','REF012','Paid'),
(13,600,'2026-01-17','Mobile Money','REF013','Paid'),
(14,750,'2026-01-18','Cash','REF014','Paid'),
(15,800,'2026-01-19','Bank Transfer','REF015','Paid'),
(16,700,'2026-01-20','Cash','REF016','Paid'),
(17,650,'2026-01-21','Mobile Money','REF017','Paid'),
(18,600,'2026-01-22','Cash','REF018','Paid'),
(19,550,'2026-01-23','Bank Transfer','REF019','Paid'),
(20,500,'2026-01-24','Cash','REF020','Paid');

-- Add some default allocations to make the joins work
insert into Allocation (Store_ID, Trader_ID, Allocation_Date, Expiry_Date) values
(2, 2, '2026-01-01', '2026-12-31'),
(4, 4, '2026-01-01', '2026-12-31');


-- Required assignment queries
-- 1. query to see total payments per trader
select t.Name, sum(p.Amount) as 'Total Paid' 
from Payment p
join Trader t on p.Trader_ID = t.Trader_ID
group by t.Name;

-- 2. query to see store list and market details
select s.Store_Number, s.Location, s.Size, s.Status, m.Market_Name 
from Store s
join Market m on s.Market_ID = m.Market_ID;

-- 3. update query sample
update Store 
set Status = 'Maintenance' 
where Store_Number = 'S001';

-- 4. delete query sample
delete from Payment 
where Reference_No = 'REF020';


-- User management assignments section
create role if not exists 'Market_Admin';
grant all privileges on Market_Stall_Allocation_System.* to 'Market_Admin';

create role if not exists 'Market_Observer';
grant select on Market_Stall_Allocation_System.* to 'Market_Observer';

flush privileges; 