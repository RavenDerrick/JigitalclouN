-- No 1
SELECT s.StaffID, StaffName, StaffGender, StaffSalary, MAX(RentalDuration) AS 'LongestPeriod'
FROM Staff s JOIN RentalTransactionHeader rth ON s.StaffID = rth.StaffID
JOIN Customer c ON rth.CustomerID = c.CustomerID
WHERE DATEDIFF (YEAR, CustomerDOB, GETDATE()) < 20 AND
StaffSalary < 15000000
GROUP BY s.StaffID, StaffName, StaffGender, StaffSalary


-- No 2
SELECT CONCAT(L.CityName, ' ', L.CountryName) AS 'Location', MIN(S.ServerPrice) AS 'CheapestServerPrice'
FROM Location L JOIN Server S ON L.LocationID = S.LocationID
JOIN Processor P ON S.ProcessorID = P.ProcessorID
WHERE P.ProcessorSpeed > 3000
AND L.Latitude >= -30
AND L.Latitude <= 30
GROUP BY L.CityName, L.CountryName


-- No 3
SELECT rtd.RentalTransactionID, CONCAT(MAX(Frequency), ' MHz') AS 'MaxMemoryFrequency', CONCAT(SUM(Capacity), ' GB') AS 'TotalMemoryCapacity' 
FROM Memory m JOIN SERVER s ON m.MemoryID = s.MemoryID
JOIN RentalTransactionDetail rtd ON s.ServerID = rtd.ServerID
JOIN RentalTransactionHeader rth ON rtd.RentalTransactionID = rth.RentalTransactionID
WHERE DATENAME(QUARTER, StartDate) = 4 AND YEAR(StartDate) = 2020
GROUP BY rtd.RentalTransactionID


-- No 4
SELECT std.SaleTransactionID, COUNT(s.ServerID) AS 'ServerCount', CONCAT(AVG(ServerPrice)/1000000, ' million(s) IDR') 
AS 'AverageServerPrice'
FROM SaleTransactionHeader sth JOIN SaleTransactionDetail std ON sth.SaleTransactionID = std.SaleTransactionID
JOIN Server s ON std.ServerID = s.ServerID
WHERE YEAR(TransactionDate) BETWEEN 2016 AND 2020
GROUP BY std.SaleTransactionID
HAVING AVG(ServerPrice) > 50000000


-- No 5
SELECT TOP(10) std.SaleTransactionID,
       MAX(s.ServerPrice) AS 'MostExpensiveServerPrice',
       ROUND(((0.55 * p.ProcessorSpeed * p.ProcessorCores) + (m.Frequency * m.Capacity * 0.05)) / 143200, 3) AS 'HardwareRatingIndex'
FROM SaleTransactionHeader sth
JOIN SaleTransactionDetail std ON sth.SaleTransactionID = std.SaleTransactionID
JOIN Server s ON std.ServerID = s.ServerID
JOIN Memory m ON s.MemoryID = m.MemoryID
JOIN Processor p ON s.ProcessorID = p.ProcessorID,
(
    SELECT ServerPrice
	FROM Server s JOIN SaleTransactionDetail std ON s.ServerID = std.ServerID
	JOIN SaleTransactionHeader sth ON std.SaleTransactionID = sth.SaleTransactionID
	WHERE YEAR(TransactionDate) % 2 = 1
	GROUP BY ServerPrice
) AS alias
WHERE s.ServerPrice = alias.ServerPrice
GROUP BY std.SaleTransactionID, ROUND(((0.55 * p.ProcessorSpeed * p.ProcessorCores) + (m.Frequency * m.Capacity * 0.05)) / 143200, 3)


-- No 6
SELECT DISTINCT CONCAT(LEFT(ProcessorName, CHARINDEX(' ', ProcessorName)), ' ', ProcessorCode) AS 'ProcessorName',
CONCAT(p.ProcessorCores, ' core(s)') AS 'CoreCount', p.ProcessorPrice
FROM Processor p JOIN Server s ON s.ProcessorID = p.ProcessorID
JOIN Location l ON s.LocationID = l.LocationID,
	(
		SELECT MAX(ProcessorPrice) AS 'MAX'
		FROM Processor
		GROUP BY ProcessorCores
	) AS alias
WHERE Latitude BETWEEN 0 AND 90
AND ProcessorPrice = alias.MAX
GROUP BY ProcessorName, ProcessorCode, ProcessorCores, ProcessorPrice


-- No 7
SELECT TOP (10) CONCAT(LEFT(c.CustomerName, 1), '***** *****') AS 'HiddenCustomerName', COUNT(sth.SaleTransactionID) AS 'CurrentPurchaseAmount',
CountedPurchaseAmount, CONCAT(SUM(ServerPrice) / 1000000, ' point(s)') AS 'RewardPointsGiven'
FROM SaleTransactionHeader sth JOIN Customer c ON c.CustomerID = sth.CustomerID
JOIN SaleTransactionDetail std ON sth.SaleTransactionID = std.SaleTransactionID
JOIN Server s ON std.ServerID = s.ServerID,
(
	SELECT CustomerName, COUNT(SaleTransactionID) AS 'CountedPurchaseAmount'
	FROM SaleTransactionHeader sth JOIN Customer c ON sth.CustomerID = c.CustomerID
	WHERE YEAR(TransactionDate) BETWEEN 2015 AND 2019
	GROUP BY c.CustomerID, CustomerName
) AS alias
WHERE c.CustomerName = alias.CustomerName
AND YEAR(TransactionDate) BETWEEN 2015 AND 2019
GROUP BY c.CustomerName, alias.CountedPurchaseAmount


-- No 8
SELECT CONCAT('Staff ', LEFT(StaffName, CHARINDEX(' ', StaffName + ' ') -1)) AS 'StaffName', REPLACE(StaffEmail, RIGHT(StaffEmail, CHARINDEX('@', REVERSE(StaffEmail)) - 1), 'jigitalcloun.net') AS 'StaffEmail',
StaffAddress, CONCAT(StaffSalary / 1000000, ' million(s) IDR') AS 'StaffSalary', TotalValue
FROM 
(
	SELECT StaffName, StaffEmail, StaffAddress, StaffSalary, SUM(ServerPrice / 120 * RentalDuration) AS TotalValue
	FROM Staff st
	JOIN SaleTransactionHeader sth ON sth. StaffID = st.StaffID
	JOIN SaleTransactionDetail std ON sth. SaleTransactionID = std.SaleTransactionID
	JOIN Server s ON s. ServerID = std. ServerID
	JOIN RentalTransactionDetail rtd ON rtd. ServerID = s.ServerID
	JOIN RentalTransactionHeader rth ON rth.RentalTransactionID = rtd. RentalTransactionID
	GROUP BY StaffName, StaffEmail, StaffAddress, StaffSalary
	HAVING StaffSalary < 
	(
		SELECT AVG(StaffSalary)
		FROM Staff
	) 
	AND SUM(ServerPrice / 120 * RentalDuration) > 10000000
) AS alias
GO


-- No 9
CREATE VIEW ServerRentalDurationView
AS
SELECT REPLACE(s.ServerID,'JCN-V', 'No. ') AS 'Server', CONCAT(SUM(RentalDuration), ' month(s)') AS 'TotalRentalDuration', CONCAT(MAX(RentalDuration),' month(s) ') AS 'MaxSingleRentalDuration'
FROM RentalTransactionDetail rtd JOIN RentalTransactionHeader rth ON rtd.RentalTransactionID = rth.RentalTransactionID
JOIN Server s ON s.ServerID = rtd.ServerID
JOIN Location l ON l.LocationID = s.LocationID
WHERE Latitude BETWEEN '-90' AND '0'
GROUP BY s.ServerID
HAVING SUM(RentalDuration) > 50
GO


-- No 10
CREATE VIEW SoldProcessorPerformanceView
AS
SELECT sth.SaleTransactionID, CONCAT(CAST((MIN(ProcessorSpeed) * ProcessorCores * 0.675) AS  DECIMAL (10,1)), ' MHz') AS 'MinEffectiveClock', 
CONCAT(CAST((MAX(ProcessorSpeed) * ProcessorCores * 0.675) AS  DECIMAL(10,1)), ' MHz') AS 'MaxEffectiveClock'
FROM Processor p JOIN Server s ON p.ProcessorID = s.ProcessorID
JOIN SaleTransactionDetail std ON s.ServerID = std.ServerID
JOIN SaleTransactionHeader sth ON sth.SaleTransactionID = std.SaleTransactionID
WHERE ProcessorCores = POWER(2, FLOOR(LOG(ProcessorCores, 2)))
GROUP BY sth.SaleTransactionID, ProcessorCores
HAVING (MIN(ProcessorSpeed) * ProcessorCores * 0.675) <= 10000
GO