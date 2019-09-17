CREATE DATABASE main;

CREATE TABLE agencies
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Phone_number varchar(100) NOT NULL,
	Email varchar(100) NOT NULL,
	Name_of_GD varchar(100) NOT NULL,
	City_id varchar(100) NOT NULL
);


INSERT INTO agencies (Name, Phone_number, Email, Name_of_GD, City_id)
	VALUES ('ООО Азбука', '+79006574083', 'azbuka@azb.com', 'Петров Никита Сергеевич', 1);

INSERT INTO agencies (Name, Phone_number, Email, Name_of_GD, City_id)
	VALUES ('ООО Креатив', '+79007389235', 'creativeOOO@mail.com', 'Смирнов Александр Валентинович', 2);

INSERT INTO agencies (Name, Phone_number, Email, Name_of_GD, City_id)
	VALUES ('ООО Амега Плюс', '+78008364822', 'plusplus@rambler.ru', 'Шматко Олег Николаевич', 3);

INSERT INTO agencies (Name, Phone_number, Email, Name_of_GD, City_id)
	VALUES ('ООО Отдыхай', '+78007006060', 'traveltrue@ttr.ru', 'Иванова Александра Александровна', 4);

INSERT INTO agencies (Name, Phone_number, Email, Name_of_GD, City_id)
	VALUES ('ООО TravelMaster', '+78834959357', 'mtravel@travel.com', 'Сергеев Роман Константинович', 5);

CREATE TABLE cities
(
	City_id int PRIMARY KEY,
	City varchar(100)
);

INSERT INTO cities (City_id, City)
	VALUES (1, 'Москва');

INSERT INTO cities (City_id, City)
	VALUES (2, 'Санкт-Петрбург');

INSERT INTO cities (City_id, City)
	VALUES (3, 'Мытищи');

INSERT INTO cities (City_id, City)
	VALUES (4, 'Сергиев Посад');

INSERT INTO cities (City_id, City)
	VALUES (5, 'Тула');

CREATE TABLE offices
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Agencies_id int NOT NULL,
	Office_name varchar(100) NOT NULL,
	Adress varchar(100) NOT NULL
);