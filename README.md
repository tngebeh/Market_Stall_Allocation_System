# Market_Stall_Allocation_System
Market Stall Allocation System

Project Overview

The Market Stall Allocation System is a database management system designed to manage markets, traders, stores, allocations, and payments. The system enables market authorities to efficiently allocate stores to traders, track payments, and maintain accurate records of market operations.

This project was developed using MySQL and demonstrates database design concepts including table creation, relationships, constraints, data insertion, queries, updates, deletions, and user role management.



Objectives

The objectives of this project are:

- Manage market information.
- Register traders operating in various markets.
- Manage store details and categories.
- Allocate stores to traders.
- Record and monitor trader payments.
- Generate reports through SQL queries.
- Implement database security through user roles.



Database Name

Market_Stall_Allocation_System



System Entities

Market

Stores information about markets.

Attributes:

- Market_ID
- Market_Name
- Location

Category

Stores different business categories.

Attributes:

- Category_ID
- Category_Name

Trader

Stores trader information.

Attributes:

- Trader_ID
- Name
- Phone_Number
- Address
- Gender

Store

Stores details of available and occupied stores.

Attributes:

- Store_ID
- Store_Number
- Location
- Size
- Status
- Market_ID
- Category_ID

Allocation

Records store allocations to traders.

Attributes:

- Allocation_ID
- Store_ID
- Trader_ID
- Allocation_Date
- Expiry_Date

Payment

Stores trader payment records.

Attributes:

- Payment_ID
- Trader_ID
- Amount
- Payment_Date
- Payment_Method
- Reference_No
- Remarks



Database Relationships

- One Market can have many Stores.
- One Category can have many Stores.
- One Trader can have many Payments.
- One Trader can receive multiple Store Allocations.
- One Store can be allocated to a Trader.



Features Implemented

Database Creation

- Created Market Stall Allocation System database.
- Created all core tables with primary keys and foreign keys.

Data Population

Sample records were inserted into:

- Market
- Category
- Trader
- Store
- Allocation
- Payment

SQL Operations

Implemented:

- INSERT statements
- SELECT queries
- UPDATE queries
- DELETE queries
- JOIN operations
- Aggregate functions

User Management

Created roles:

- Market_Admin
- Market_Observer

Privileges assigned:

- Market_Admin → Full access
- Market_Observer → Read-only access



Sample Queries

Total Payments Per Trader

SELECT t.Name, SUM(p.Amount) AS 'Total Paid'
FROM Payment p
JOIN Trader t ON p.Trader_ID = t.Trader_ID
GROUP BY t.Name;

Store List with Market Details

SELECT s.Store_Number, s.Location, s.Size, s.Status, m.Market_Name
FROM Store s
JOIN Market m ON s.Market_ID = m.Market_ID;

Update Store Status

UPDATE Store
SET Status = 'Maintenance'
WHERE Store_Number = 'S001';

Delete Payment Record

DELETE FROM Payment
WHERE Reference_No = 'REF020';


Technologies Used

- MySQL Database
- SQL
- GitHub
- GitHub Desktop


Conclusion

The Market Stall Allocation System provides an efficient way to manage markets, traders, store allocations, and payments. The project demonstrates the practical application of relational database concepts, normalization, data integrity, security, and SQL operations in solving real-world market management challenges.


Authors

BBIT1201F Group 4

Limkokwing University of Creative Technology
Faculty of Information and Communication Technology (FICT)

