use projecttest;

INSERT INTO customers(Customer_Id, Customer_Name, Customer_Address, Customer_Email, Customer_Phone, Pincode ) 
VALUES (
101, 'Alice John', '185 kehl street, Kitchener', 'alicejohn@gmail.com', '768787897', 'NOB2E0'),
(102, 'Anna Mary', '567 Starsburg Road, Kitchener', 'annamary@gmail.com', '768790897', 'NOB2E0'),
(103, 'Sam Manuel', '789 Kingstreet, Waterloo', 'sammanuel@gmail.com', '768890897', 'NOB1N0'),
(104, 'Mathew Alex', '809 Kingstreet, Waterloo', 'mathewalex@gmail.com', '988787897', 'NOB1N0'
);


INSERT INTO Category(Category_Id, Category_Name) VALUES
(10,'Animals'),
(11,'Cars and radio controlled'),
(12,'Construction toys'),
(13,'Creative toys'),
(14,'Education Toys'),
(15,'Dolls');









INSERT INTO Products(Product_ID, Product_Name, Product_Image, Product_Price, Discount_Percantage, Availablity, ProductStore, Category_Category_Id ) 
VALUES 
(1, 'Cat', 'cat.jpg', 120, 20.0, 'In-Store','83 Street Kitchener', 10),
(2, 'Dog', 'dog.jpg', 220, 0, 'Online','97 Main Aveneue,Waterloo', 10),
(3, 'Truck', 'truck.jpg', 520, 10.0, 'In-Store','97 Main Aveneue,Waterloo', 11),
(4, 'RTC Car', 'rtc.jpg', 1520, 50.0, 'In-Store','97 Aveneue ,Waterloo', 11),
(5, 'House Builder', 'house.jpg', 1220, 30.0, 'Online','168 Aveneue ,Waterloo', 12),
(6, 'Door Builder', 'door.jpg', 220, 30.0, 'In-Store','168 Aveneue ,Waterloo', 12),
(7, 'Puzzle', 'puzzle.jpg', 20, 30.0, 'In-Store','168 Aveneue ,Waterloo', 13),
(8, 'Math Lerner', 'math.jpg', 220, 10.0, 'In-Store','168 Aveneue ,Waterloo', 14),
(9, 'Dancing doll', 'dancing.jpg', 120, 30.0, 'online','50 Aveneue ,Waterloo', 15),
(10, 'Party doll', 'party.jpg', 2120, 30.0, 'In-Store','168 Aveneue ,Waterloo', 15);

INSERT INTO Age(Age_Id, Age, Category_Category_Id) VALUES
(1,'1-5',10),
(2,'5-8',11),
(3,'7-0',12),
(4,'5-10',13),
(5,'5-10',14),
(6,'5-14',15);

INSERT INTO Brand(Brand_Id, Brand_Name, Products_Product_Id) VALUES
(1,'Adidas',1),
(2,'Nike',2),
(3,'Puma',3),
(4,'Nokia',4),
(5,'Adidas',5),
(6,'Spectra',6),
(7,'Adidas',7),
(8,'Nike',8),
(9,'Puma',9),
(10,'Nokia',10);

INSERT INTO Color(Color_Id, Color_Name, Brand_Brand_Id) VALUES
(1,'Black',1),
(2,'Red',2),
(3,'Green',3),
(4,'Blue',4),
(5,'Black',5),
(6,'Red',6),
(7,'Green',7),
(8,'Blue',8),
(9,'Red',9),
(10,'Green',10);

INSERT INTO Gender(Gender_Id, Gender_Name, Age_Age_Id) VALUES
(1,'Male',1),
(2,'Male',2),
(3,'Female',3),
(4,'Female',4),
(5,'Male',5),
(6,'Female',6);


INSERT INTO Orders(Order_Id, Order_number, Order_Method, Order_Quantity, Order_Created, Customers_Customer_id) VALUES
(1,'100','Cash on delivery',1,'4/5/22',101),
(2,'120','Credit card',1,'5/5/22',101),
(3,'200','Cash on delivery',10,'4/5/22',102),
(4,'500','Cash on delivery',8,'4/5/22',103),
(5,'1000','Cash on delivery',5,'4/5/22',101),
(6,'200','Cash on delivery',6,'4/5/22',102),
(7,'300','Cash on delivery',10,'4/5/22',103),
(8,'400','Cash on delivery',41,'4/5/22',104),
(9,'560','Cash on delivery',11,'4/5/22',103),
(10,'100','Cash on delivery',1,'1/5/22',101),
(11,'120','Cash on delivery',15,'1/5/22',102),
(12,'1220','Cash on delivery',11,'2/5/22',103),
(13,'100','Cash on delivery',11,'3/5/22',104),
(14,'300','Cash on delivery',12,'4/5/22',104),
(15,'150','Cash on delivery',15,'4/5/22',102),
(16,'160','Cash on delivery',1,'4/5/22',103),
(17,'1040','Cash on delivery',13,'4/5/22',101);



INSERT INTO OrderDetails(OrderDetail_Id, Order_ProductName, Order_ProductAmount, Order_ProductQuantity, Order_Delivered, Order_Date, Order_Order_Id, OrderStatus_Status_Id) VALUES
(1,'Cat',40000,1,'4/5/22','7/5/22',1,1),
(2,'Dog',200,1,'5/5/22','6/5/22',2,2),
(3,'RTC Car',15200,10,'4/5/22','5/5/22',3,3),
(4,'RTC Car',12160,8,'4/5/22','10/5/22',4,4),
(5,'Dog',1000,5,'4/5/22','5/5/22',5,5),

(6,'Dancing doll',720,6,'4/5/22','7/5/22',6,6),
(7,'Puzzle',200,10,'4/5/22','4/5/22',7,7),
(8,'Math Lerner',5000,41,'4/5/22','4/5/22',8,8),
(9,'House Builder',1000,11,'4/5/22','4/5/22',9,9),
(10,'House Builder',100,1,'1/5/22','1/5/22',10,10),
(11,'House Builder',2000,15,'1/5/22','1/5/22',11,11),

(12,'Cat',1000,11,'2/5/22','5/5/22',12,12),
(13,'Cat',1000,11,'3/5/22','5/5/22',13,13),
(14,'House Builder',2000,15,'1/5/22','1/5/22',14,14),

(15,'Puzzle',200,10,'4/5/22','4/5/22',15,15),
(16,'Puzzle',200,10,'4/5/22','4/5/22',16,16),
(17,'Dancing doll',720,6,'4/5/22','7/5/22',17,17),
(18,'Dancing doll',720,6,'4/5/22','7/5/22',18,18);


INSERT INTO OrderStatus(Status_Id, Status_name) VALUES
(1, 'Delivered'),
(2, 'Pending'),
(3, 'Cancelled'),
(4, 'Delivered'),
(5, 'Delivered'),
(6, 'Pedning'),
(7, 'Cancelled'),
(8, 'Delivered'),
(9, 'Delivered'),
(10, 'Pending'),
(11, 'Delivered'),
(12, 'Delivered'),
(13, 'Delivered'),
(14, 'Cancelled'),
(15, 'Delivered'),
(16, 'Delivered'),
(17, 'Delivered'),
(18, 'Delivered');

INSERT INTO  OrderDetails_has_Products(OrderDetails_OrderDetail_Id, Products_Product_Id) VALUES
(1,2),
(2,4),
(3,4),
(4,4),
(5,2),
(6,9),
(7,7),
(8,8),
(9,5),
(10,5),
(11,5),
(12,1),
(13,1),
(14,5),
(15,7),
(16,7),
(17,9),
(18,9);




-- Write a MySQL procedure to select the products based on the price.
DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
	SELECT *  FROM products GROUP BY Product_Price;
END //

DELIMITER ;

DROP PROCEDURE GetAllProducts;

Call GetAllProducts();

-- Write a query to get the customers who ordered the same product?

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT Customer_Name, COUNT(Order_ProductName) FROM OrderDetails
INNER JOIN Orders ON OrderDetails.Order_Order_Id=Orders.Order_Id 
INNER JOIN Customers ON Orders.Customers_Customer_id=Customers.Customer_id
GROUP BY Customer_Name;


SELECT * FROM Orders WHERE Customers_Customer_Id = 101;