INSERT INTO Staff
VALUES 
('JCN-S3100', 'Winsen', 'Male', 'winsen@gmail.com', '1995-01-01', 0811123456, 'Jl. Andreas No. 47', '15000000'),
('JCN-S3101', 'Ferdinand', 'Male', 'ferdinand@gmail.com', '1996-02-13', 0814628378, 'Jl. Sunter Raya No. 15', '12500000'),
('JCN-S3102', 'Matthew', 'Male', 'matthew@gmail.com', '1997-03-17', 0813546798, 'Jl. Emporium No. 22', '7500000'),
('JCN-S3103', 'Aurelia', 'Female', 'aurelia@gmail.com', '1997-12-04', 0876543290, 'Jl. Salatiga No. 17', '9800000'),
('JCN-S3104', 'Gabriel', 'Male', 'gabriel@gmail.com', '1998-04-05', 0834786523, 'Jl. Edelweis No. 27', '10500000'),
('JCN-S3200', 'Calista', 'Female', 'calista@gmail.com', '1999-09-12', 0854908765, 'Jl. Rosalinda No. 89', '12000000'),
('JCN-S3201', 'Patrycia', 'Female', 'patrycia@gmail.com', '2000-11-30', 0877854612, 'Jl. Milia No. 77', '6000000'),
('JCN-S3202', 'Yudhistira', 'Male', 'yudhistira@gmail.com', '1994-12-30', 0897543622, 'Jl. Wisman III No. 15', '7500000'),
('JCN-S3203', 'Margaretha', 'Female', 'margaretha@gmail.com', '1997-03-27', 0859123457, 'Jl. Erlangga IV No. 33', '17500000'),
('JCN-S3204', 'Catherine', 'Female', 'catherine@gmail.com', '2001-09-19', 0878665432, 'Jl. Merauke Raya No. 17', '19000000')

INSERT INTO Memory
VALUES
('JCN-M3111' , 'EternaMem', 'EM01', '9.90', '1001', '16'),
('JCN-M3112' , 'EternaMem', 'EM02', '10.11', '1002', '32'),
('JCN-M3113' , 'EternaMem', 'EM03', '10.45', '1003', '64'),
('JCN-M4111' , 'LuminaLink', 'LL01', '8.15', '1004', '16'),
('JCN-M4112' , 'LuminaLink', 'LL02', '9.55', '1005', '32'),
('JCN-M4113' , 'LuminaLink', 'LL03', '10.50', '1006', '64'),
('JCN-M5101' , 'IntelliMemo', 'IM01', '9.99', '1007', '64'),
('JCN-M5102' , 'IntelliMemo', 'IM02', '32.15', '1008', '256'),
('JCN-M6101' , 'MemoraSphere', 'MS01', '13.10', '1009', '32'),
('JCN-M6102' , 'MemoraSphere', 'MS02', '13.52', '1010', '64')

INSERT INTO Processor 
VALUES
('JCN-P3111', 'Intel Core i9' , 'ICI01', '8.85','4200','1'),
('JCN-P3112', 'Intel Core i9' , 'ICI02', '8.88','2602','2'),
('JCN-P4111', 'AMD Ryzen' , 'AMD01', '7.50','3203','1'),
('JCN-P4112', 'AMD Ryzen' , 'AMD02', '9.90','2204','2'),
('JCN-P4113', 'AMD Ryzen' , 'AMD03', '9.66','2505','3'),
('JCN-P5111', 'Apple M1' , 'APL01', '25.90','3700','1'),
('JCN-P5112', 'Apple M1' , 'APL02', '21.41','2800','2'),
('JCN-P5113', 'Apple M1' , 'APL03', '20.50','2300','3'),
('JCN-P6111', 'Qualcomm Snapdragon' , 'QSD01', '15.12','2700','2'),
('JCN-P6112', 'Qualcomm Snapdragon' , 'QSD02', '15.14','3300','3')

INSERT INTO Location
VALUES
('JCN-L4200', 'Jakarta', 'Indonesia', 11452, -6.175110, 106.865036),
('JCN-L4201', 'Buenos Aires', 'Argentina', 15872, -51.650039, -72.300016),
('JCN-L4202', 'Canberra', 'Australia', 42097, -33.420041, 151.300004),
('JCN-L4203', 'Phnom Penh', 'Cambodia', 56784, 11.451996, 104.518998),
('JCN-L4204', 'Santiago', 'Chile', 14352, -52.649978, -71.466604),
('JCN-L4100', 'Paris', 'France', 56743, 45.899974, 6.116670),
('JCN-L4101', 'Berlin', 'Germany', 76854, 49.982472, 8.273219),
('JCN-L4102', 'Rome', 'Italy', 65432, 40.642002, 15.798996),
('JCN-L4103', 'Tokyo', 'Japan', 66513, 34.672029, 133.917086),
('JCN-L4104', 'Kuala Lumpur', 'Malaysia', 77890, 6.433001, 100.189998)

INSERT INTO Server
VALUES
('JCN-V5100', 'JCN-M3111','JCN-P3111', 'JCN-L4200', '240000099'),
('JCN-V5101', 'JCN-M3112','JCN-P3112', 'JCN-L4201', '240000099'),
('JCN-V5102', 'JCN-M3113','JCN-P4111', 'JCN-L4202', '340000099'),
('JCN-V5103', 'JCN-M4111','JCN-P4112', 'JCN-L4203', '490000099'),
('JCN-V5104', 'JCN-M4112','JCN-P4113', 'JCN-L4204', '690000099'),
('JCN-V5110', 'JCN-M4113','JCN-P5111', 'JCN-L4100', '890000099'),
('JCN-V5111', 'JCN-M5101','JCN-P5112', 'JCN-L4101', '540000099'),
('JCN-V5112', 'JCN-M5102','JCN-P5113', 'JCN-L4102', '640000099'),
('JCN-V5113', 'JCN-M6101','JCN-P6111', 'JCN-L4103', '740000099'),
('JCN-V5114', 'JCN-M6102','JCN-P6112', 'JCN-L4104', '890000099')

INSERT INTO Customer
VALUES
('JCN-C3100', 'Selvi', 'Female', 'selvi@gmail.com', '2004-04-27', 0812345678, 'Jl. Gading No. 50'),
('JCN-C3125', 'Raven', 'Male', 'raven@gmail.com', '1999-10-15', 0873458726, 'Jl. Tebet No. 1'),
('JCN-C4113', 'Edwin', 'Male', 'edwin@gmail.com', '1998-01-01', 0819876543, 'Jl. Pondok No. 34'),
('JCN-C4155', 'Erika', 'Female', 'erika@gmail.com', '2005-06-22', 0811176345, 'Jl. Raya No. 8'),
('JCN-C5270', 'Angel', 'Female', 'angel@gmail.com', '2006-03-25', 0876459347, 'Jl. Indah No. 12'),
('JCN-C5141', 'Valen', 'Female', 'valen@gmail.com', '1999-07-15', 0828374765, 'Jl. Timur No. 6'),
('JCN-C6205', 'Rayner', 'Male', 'rayner@gmail.com', '2001-02-12', 0824796542, 'Jl. Sahari No. 7'),
('JCN-C7164', 'Nico', 'Male', 'nico@gmail.com', '1999-03-18', 0887455932, 'Jl. Cawang No. 10'),
('JCN-C4280', 'Jesselyn', 'Female', 'jesselyn@gmail.com', '2002-07-29', 0823486579, 'Jl. Cengkareng No. 5'),
('JCN-C3209', 'Vincent', 'Male', 'vincent@gmail.com', '2007-02-12', 0887637882, 'Jl. Sutera No. 7')

INSERT INTO SaleTransactionHeader
VALUES
('JCN-S1100', 'JCN-S3100', 'JCN-C3100', '2012-02-01'),
('JCN-S1101', 'JCN-S3101', 'JCN-C3125', '2013-04-02'),
('JCN-S1102', 'JCN-S3102', 'JCN-C3209', '2014-06-03'),
('JCN-S1103', 'JCN-S3103', 'JCN-C4113', '2014-09-04'),
('JCN-S1104', 'JCN-S3104', 'JCN-C4155', '2014-12-05'),
('JCN-S1200', 'JCN-S3200', 'JCN-C4280', '2015-03-06'),
('JCN-S1201', 'JCN-S3201', 'JCN-C5141', '2015-04-07'),
('JCN-S1202', 'JCN-S3202', 'JCN-C5270', '2015-08-08'),
('JCN-S1203', 'JCN-S3203', 'JCN-C6205', '2016-08-09'),
('JCN-S1204', 'JCN-S3204', 'JCN-C7164', '2016-09-10'),
('JCN-S1105', 'JCN-S3100', 'JCN-C3100', '2016-11-11'),
('JCN-S1106', 'JCN-S3101', 'JCN-C3125', '2017-02-12'),
('JCN-S1107', 'JCN-S3102', 'JCN-C3209', '2017-03-13'),
('JCN-S1108', 'JCN-S3103', 'JCN-C4113', '2017-06-14'),
('JCN-S1109', 'JCN-S3104', 'JCN-C4155', '2017-09-15'),
('JCN-S1205', 'JCN-S3200', 'JCN-C4280', '2018-05-16'),
('JCN-S1206', 'JCN-S3201', 'JCN-C5141', '2018-06-17'),
('JCN-S1207', 'JCN-S3202', 'JCN-C5270', '2019-06-18'),
('JCN-S1208', 'JCN-S3203', 'JCN-C6205', '2019-09-19'),
('JCN-S1209', 'JCN-S3204', 'JCN-C7164', '2019-12-20'),
('JCN-S1110', 'JCN-S3100', 'JCN-C3100', '2020-01-21'),
('JCN-S1111', 'JCN-S3101', 'JCN-C3125', '2021-02-22'),
('JCN-S1112', 'JCN-S3102', 'JCN-C3209', '2022-06-23'),
('JCN-S1113', 'JCN-S3103', 'JCN-C4113', '2023-07-24'),
('JCN-S1114', 'JCN-S3104', 'JCN-C4155', '2023-08-25')

INSERT INTO SaleTransactionDetail
VALUES
('JCN-S1100', 'JCN-V5100', 2),
('JCN-S1101', 'JCN-V5101', 1),
('JCN-S1102', 'JCN-V5102', 3),
('JCN-S1103', 'JCN-V5103', 1),
('JCN-S1104', 'JCN-V5104', 2),
('JCN-S1200', 'JCN-V5110', 2),
('JCN-S1201', 'JCN-V5111', 1),
('JCN-S1202', 'JCN-V5112', 3),
('JCN-S1203', 'JCN-V5113', 1),
('JCN-S1204', 'JCN-V5114', 2),
('JCN-S1105', 'JCN-V5100', 2),
('JCN-S1106', 'JCN-V5101', 1),
('JCN-S1107', 'JCN-V5102', 3),
('JCN-S1108', 'JCN-V5103', 1),
('JCN-S1109', 'JCN-V5104', 2),
('JCN-S1205', 'JCN-V5110', 2),
('JCN-S1206', 'JCN-V5111', 1),
('JCN-S1207', 'JCN-V5112', 3),
('JCN-S1208', 'JCN-V5113', 1),
('JCN-S1209', 'JCN-V5114', 2),
('JCN-S1110', 'JCN-V5100', 2),
('JCN-S1111', 'JCN-V5101', 1),
('JCN-S1112', 'JCN-V5102', 3),
('JCN-S1113', 'JCN-V5103', 1),
('JCN-S1114', 'JCN-V5104', 2)

INSERT INTO RentalTransactionHeader
VALUES
('JCN-R0199', 'JCN-S3100', 'JCN-C3100' , '2012-01-01', '71'), 
('JCN-R0149', 'JCN-S3101', 'JCN-C3125' , '2012-02-02', '62'),
('JCN-R0189', 'JCN-S3102', 'JCN-C4113' , '2012-03-03', '83'),
('JCN-R0290', 'JCN-S3103', 'JCN-C4155' , '2013-04-04', '64'),
('JCN-R0197', 'JCN-S3104', 'JCN-C5270' , '2013-05-05', '45'),
('JCN-R0198', 'JCN-S3200', 'JCN-C5141' , '2013-06-06', '46'),
('JCN-R0292', 'JCN-S3201', 'JCN-C6205' , '2015-07-07', '54'),
('JCN-R0249', 'JCN-S3202', 'JCN-C7164' , '2016-08-08', '38'),
('JCN-R0161', 'JCN-S3203', 'JCN-C4280' , '2017-09-09', '79'),
('JCN-R0172', 'JCN-S3204', 'JCN-C3209' , '2018-10-10', '10'),
('JCN-R0291', 'JCN-S3204', 'JCN-C3100' , '2019-11-11', '41'),
('JCN-R0118', 'JCN-S3104', 'JCN-C3100' , '2019-12-12', '32'),
('JCN-R0159', 'JCN-S3201', 'JCN-C4155' , '2020-01-10', '70'),
('JCN-R0289', 'JCN-S3102', 'JCN-C6205' , '2020-10-13', '14'),
('JCN-R2275', 'JCN-S3203', 'JCN-C7164' , '2020-11-12', '25'), 
('JCN-R1275', 'JCN-S3204', 'JCN-C7164' , '2020-11-15', '35'),
('JCN-R0185', 'JCN-S3204', 'JCN-C4280' , '2020-12-09', '27'),
('JCN-R1175', 'JCN-S3204', 'JCN-C4280' , '2020-12-15', '8'),
('JCN-R1174', 'JCN-S3200', 'JCN-C4280' , '2021-11-13', '19'),
('JCN-R0175', 'JCN-S3200', 'JCN-C4155' , '2021-12-15', '10'),
('JCN-R0200', 'JCN-S3200', 'JCN-C4155' , '2021-12-30', '11'),
('JCN-R2204', 'JCN-S3203', 'JCN-C5270' , '2022-05-15', '12'),
('JCN-R1179', 'JCN-S3101', 'JCN-C5270' , '2022-09-15', '31'),
('JCN-R1234', 'JCN-S3100', 'JCN-C3125' , '2023-01-01', '14'),
('JCN-R1212', 'JCN-S3100', 'JCN-C3125' , '2023-02-02', '15') 

INSERT INTO RentalTransactionDetail
VALUES
('JCN-R0199', 'JCN-V5100',  '1'),
('JCN-R0149', 'JCN-V5101',  '2'),
('JCN-R0189', 'JCN-V5102',  '3'),
('JCN-R0290', 'JCN-V5103',  '4'),
('JCN-R0197', 'JCN-V5110',  '5'),
('JCN-R0198', 'JCN-V5101',  '6'),
('JCN-R0292', 'JCN-V5110',  '7'),
('JCN-R0249', 'JCN-V5112',  '8'),
('JCN-R0161', 'JCN-V5113',  '9'),
('JCN-R0172', 'JCN-V5113',  '10'),
('JCN-R0291', 'JCN-V5104',  '1'),
('JCN-R0118', 'JCN-V5103',  '2'),
('JCN-R0159', 'JCN-V5102',  '3'),
('JCN-R0289', 'JCN-V5101',  '4'),
('JCN-R2275', 'JCN-V5100',  '5'),
('JCN-R1275', 'JCN-V5111',  '6'), 
('JCN-R0185', 'JCN-V5111',  '7'),
('JCN-R1175', 'JCN-V5113',  '8'),
('JCN-R1174', 'JCN-V5113',  '9'),
('JCN-R0175', 'JCN-V5114',  '10'),
('JCN-R0200', 'JCN-V5114',  '1'),
('JCN-R2204', 'JCN-V5104',  '2'),
('JCN-R1179', 'JCN-V5104',  '3'),
('JCN-R1234', 'JCN-V5101',  '4'),
('JCN-R1212', 'JCN-V5102',  '5')