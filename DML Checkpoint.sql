Create table product(
  Product_id Varchar(20) Constraint PK Primary key,
	Product_name Varchar(20) Not Null,
	Category Varchar(20),
	Price int 
)

Create table Customer(
  Customer_id Varchar(20) Constraint PK2 Primary key,
	Customer_name Varchar(20) NOT null,
	Customer_Tel int
)

Create table Orders(
  Customer_id Varchar(20),
	Product_id Varchar(20),
	OrderDate date,
	Quantity int,
	Total_amount int,
	Constraint FK Foreign Key(Customer_id) references Customer (Customer_id),
	Constraint FK2 Foreign Key(Product_id) references Product (Product_id)
)

insert into Product (Product_id,Product_name,Category,Price) values
 ('PO1', 'Samsung Galaxy S20','Smartphone', 3299),
  ('PO2', 'Asus Notebook', 'PC', 4599);
 
insert into Customer(Customer_id,Customer_name,Customer_Tel) values
('CO1', 'ALI', 71321009),
 ('CO2', 'ASMA', 77345823);
 
insert into Orders (Customer_id,Product_id,OrderDate,Quatity,Total_amount) values
('CO1', 'PO2', NULL, 2, 9198),
('CO2', 'PO1', '05/20/2020', 1, 3299);
 


