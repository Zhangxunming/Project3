BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Users" (
	"Username"	TEXT,
	"Password"	TEXT,
	"Fullname"	TEXT,
	"Usertype"	INTEGER,
	"CustomerID"	INTEGER,
	PRIMARY KEY("Username","Password")
);
CREATE TABLE IF NOT EXISTS "Purchase" (
	"purchaseid"	INTEGER NOT NULL,
	"customerid"	INTEGER NOT NULL,
	"productid"	INTEGER,
	"price"	REAL,
	"Quantity"	REAL,
	"Cost"	REAL,
	"tax"	REAL,
	"Total"	REAL,
	"Date"	TEXT,
	PRIMARY KEY("purchaseid")
);
CREATE TABLE IF NOT EXISTS "Customer" (
	"CustomerID"	INTEGER NOT NULL,
	"Phone"	TEXT,
	"Address"	TEXT,
	"Total"	REAL,
	"Name"	TEXT,
	"Pin"	TEXT,
	PRIMARY KEY("CustomerID")
);
CREATE TABLE IF NOT EXISTS "Products" (
	"Productid"	INTEGER NOT NULL,
	"supplier"	TEXT,
	"Name"	TEXT,
	"Quantity"	REAL,
	"Price"	INTEGER,
	PRIMARY KEY("Productid")
);
INSERT INTO "Users" VALUES ('User','user','Zhao',3,7);
INSERT INTO "Users" VALUES ('Cashier','1234','Jay',1,1);
INSERT INTO "Users" VALUES ('Manager','1234','Chen',2,3);
INSERT INTO "Users" VALUES ('Customer','1234','Liu',0,5);
INSERT INTO "Users" VALUES ('admin','Admin','Admin',3,0);
INSERT INTO "Purchase" VALUES (1,1,1,1.0,200.0,100.0,109.0,0.0,'Sat Dec 14 19:26:21 CST 2019');
INSERT INTO "Purchase" VALUES (2,2,2,100.0,2.0,200.0,18.0,218.0,'Sat Dec 14 19:26:21 CST 2019');
INSERT INTO "Customer" VALUES (1,'3344977777','Auburn, AL ',4.0,'Jay
','1234');
INSERT INTO "Customer" VALUES (2,'3343335559','Auburn, AL ',2.0,'Ace','1234');
INSERT INTO "Customer" VALUES (3,'3343335559','Auburn, AL ',6.0,'Chen','1234');
INSERT INTO "Customer" VALUES (4,'3343335559','Auburn, AL ',2.0,'Li','1234');
INSERT INTO "Customer" VALUES (5,'3343335559','Auburn, AL ',1.0,'Liu','1234');
INSERT INTO "Customer" VALUES (6,'3343335559','Auburn, AL ',8.0,'John','1234');
INSERT INTO "Customer" VALUES (7,'3343335559','Auburn, AL',100.0,'Zhao','1234');
INSERT INTO "Customer" VALUES (8,'1234567897','adad',100.0,'adada','12346');
INSERT INTO "Products" VALUES (1,'APPLE','IMac',100.0,200);
INSERT INTO "Products" VALUES (2,'APPLE','IPhone',100.0,100);
INSERT INTO "Products" VALUES (3,'BestBuy','IPhone',100.0,100);
INSERT INTO "Products" VALUES (4,'APPLE','Mac Pro',100.0,100);
INSERT INTO "Products" VALUES (5,'Amazon','IMac',100.0,100);
INSERT INTO "Products" VALUES (6,'Amazon ','IPOD',100.0,100);
INSERT INTO "Products" VALUES (7,'BestBuy','Monitor',100.0,100);
COMMIT;
