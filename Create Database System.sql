CREATE DATABASE JigitalclouN

CREATE TABLE Staff
(
StaffID VARCHAR(10) PRIMARY KEY NOT NULL CHECK(StaffID LIKE 'JCN-S[3-7][1-2][0-9][0-9]'),
StaffName VARCHAR(50) NOT NULL,
StaffGender VARCHAR (10) NOT NULL,
StaffEmail VARCHAR(50) NOT NULL CHECK(StaffEmail LIKE '%@%.%'),
StaffDOB DATE NOT NULL,
StaffPhoneNumber INT NOT NULL,
StaffAddress VARCHAR(50) NOT NULL,
StaffSalary INT NOT NULL CHECK(StaffSalary > 3500000 AND StaffSalary < 20000000)
)


CREATE TABLE Memory
(
MemoryID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (MemoryID LIKE 'JCN-M[3-7][1-2][0-9][0-9]'),
MemoryName VARCHAR(20) NOT NULL,
MemoryCode VARCHAR(20) NOT NULL,
MemoryPrice FLOAT NOT NULL,
Frequency INT NOT NULL CHECK(Frequency BETWEEN 1000 AND 5000),
Capacity INT NOT NULL CHECK(Capacity BETWEEN 1 AND 256)
)


CREATE TABLE Processor 
(
ProcessorID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (ProcessorID LIKE 'JCN-P[3-7][1-2][0-9][0-9]'),
ProcessorName VARCHAR(50) NOT NULL,
ProcessorCode VARCHAR(50) NOT NULL,
ProcessorPrice FLOAT NOT NULL,
ProcessorSpeed INT NOT NULL CHECK (ProcessorSpeed BETWEEN 1500 AND 6000),
ProcessorCores INT NOT NULL CHECK (ProcessorCores BETWEEN 1 AND 24)
)


CREATE TABLE Location
(
LocationID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (LocationID LIKE 'JCN-L[3-7][1-2][0-9][0-9]'),
CityName VARCHAR(50) NOT NULL,
CountryName VARCHAR(50) NOT NULL,
ZipCode INT NOT NULL,
Latitude DECIMAL(9,6) CHECK (Latitude >= -90 AND Latitude <= 90),
Longitude DECIMAL(9,6) CHECK (Longitude >= -180 AND Longitude <= 180)
)


CREATE TABLE Server
(
ServerID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (ServerID LIKE 'JCN-V[3-7][1-2][0-9][0-9]'),
MemoryID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Memory(MemoryID),
ProcessorID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Processor(ProcessorID),
LocationID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Location(LocationID),
ServerPrice FLOAT NOT NULL
)


CREATE TABLE Customer 
(
CustomerID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (CustomerID LIKE 'JCN-C[3-7][1-2][0-9][0-9]'),
CustomerName VARCHAR(50) NOT NULL,
CustomerGender VARCHAR(10) NOT NULL CHECK (CustomerGender IN('Male', 'Female')),
CustomerEmail VARCHAR(50) NOT NULL,
CustomerDOB DATE NOT NULL CHECK (DATEDIFF(YEAR, CustomerDOB, GETDATE()) >= 15),
CustomerPhoneNumber INT NOT NULL,
CustomerAddress VARCHAR(50) NOT NULL
)


CREATE TABLE SaleTransactionHeader
(
SaleTransactionID VARCHAR(10) PRIMARY KEY NOT NULL CHECK (SaleTransactionID LIKE 'JCN-S[0-2][1-2][0-9][0-9]'),
StaffID VARCHAR (10) NOT NULL FOREIGN KEY REFERENCES Staff(StaffID),
CustomerID VARCHAR (10) NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
TransactionDate DATE NOT NULL
)


CREATE TABLE SaleTransactionDetail
(
SaleTransactionID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES SaleTransactionHeader(SaleTransactionID),
ServerID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Server(ServerID),
ServersSold INT NOT NULL,
PRIMARY KEY (SaleTransactionID, ServerID)
)


CREATE TABLE RentalTransactionHeader
(
RentalTransactionID VARCHAR(10) NOT NULL PRIMARY KEY CHECK(RentalTransactionID LIKE 'JCN-R[0-2][1-2][0-9][0-9]'),
StaffID VARCHAR (10) NOT NULL FOREIGN KEY REFERENCES Staff(StaffID),
CustomerID VARCHAR (10) NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
StartDate DATE NOT NULL CHECK (StartDate BETWEEN '2012-01-01' AND  GetDate()),
RentalDuration INT NOT NULL --duration in month
)


CREATE TABLE RentalTransactionDetail
(
RentalTransactionID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES RentalTransactionHeader(RentalTransactionID),
ServerID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Server(ServerID),
ServersRented INT NOT NULL,
PRIMARY KEY (RentalTransactionID, ServerID)
)