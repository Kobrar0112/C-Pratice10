CREATE DATABASE EMIAC
GO

USE EMIAC
GO

--Таблица админа
CREATE TABLE Administrator(
	ID_Administrator INT PRIMARY KEY IDENTITY(1,1),
	AdminSurname NVARCHAR(50) NOT NULL,
	AdminName NVARCHAR(50) NOT NULL,
	AdminMiddleName NVARCHAR(50) NULL,
	AdminEnterLogin NVARCHAR(50) NOT NULL,
	AdminEnterPassword NVARCHAR(50) NOT NULL
);
GO

--логин и пароль - admin admin
INSERT INTO Administrator(AdminSurname, AdminName, AdminMiddleName, AdminEnterLogin, AdminEnterPassword)
VALUES
(N'Пилькевич',N'Дмитрий',N'Павлович', N'admin',N'123')
SELECT * FROM Administrator
GO

--Таблица пациента
CREATE TABLE Patient(
	ID_Patient INT PRIMARY KEY IDENTITY(1,1),
	OMS BIGINT NOT NULL, --Полис ОМС для входа в ЕМИАС (16 символов должно быть)
	PatientSurname NVARCHAR(50) NOT NULL,
	PatientName NVARCHAR(50) NOT NULL,
	PatientMiddleName NVARCHAR(50) NULL,
	PatientBirthDate DATE NOT NULL,
	PatientAddress NVARCHAR(255) NOT NULL,
	PatientLivingAddress NVARCHAR(255) NULL,
	PatientPhoneNumber NVARCHAR(11) NULL,
	PatientEmail NVARCHAR(50) NULL,
	PatientNickName NVARCHAR(50) NULL
);
GO

--наш крутой пациент
INSERT INTO Patient(OMS, PatientSurname, PatientName, PatientMiddleName, PatientBirthDate, PatientAddress, PatientLivingAddress, 
PatientPhoneNumber, PatientEmail, PatientNickName)
VALUES
(7856345917543817, N'Абрамов',N'Роман',N'Александрович',N'01.12.2006', N'Москва', N'Москва', 
N'89754567211', N'patient@gmail.com', N'Midl')
SELECT * FROM Patient
GO

--Таблица специальностей
CREATE TABLE Speciality(
	ID_Speciality INT PRIMARY KEY IDENTITY(1,1),
	NameOfSpeciality NVARCHAR(50) NOT NULL
);
GO

--для заполнения врача
INSERT INTO Speciality(NameOfSpeciality)
VALUES
(N'Офтальмолог')
SELECT * FROM Speciality
GO

--Таблица направлений
CREATE TABLE Direction (
	ID_Directions INT PRIMARY KEY IDENTITY(1,1),
	Speciality_ID INT NOT NULL,
	FOREIGN KEY (Speciality_ID) REFERENCES Speciality(ID_Speciality),
	Patient_ID INT NOT NULL,
	FOREIGN KEY (Patient_ID) REFERENCES Patient(ID_Patient)
);
GO

--Таблица докторов
CREATE TABLE Doctor(
	ID_Doctor INT PRIMARY KEY IDENTITY(1,1),
	DoctorSurname NVARCHAR(50) NOT NULL,
	DoctorName NVARCHAR(50) NOT NULL,
	DoctorMiddleName NVARCHAR(50) NULL,
	Speciality_ID INT NOT NULL,
	FOREIGN KEY (Speciality_ID) REFERENCES Speciality(ID_Speciality),
	DoctorEnterLogin NVARCHAR(50) NOT NULL,
	DoctorEnterPassword NVARCHAR(50) NOT NULL,
	WorkAddress NVARCHAR(50) NOT NULL
);
GO

INSERT INTO Doctor(DoctorSurname, DoctorName, DoctorMiddleName, Speciality_ID, DoctorEnterLogin, DoctorEnterPassword, WorkAddress)
VALUES
(N'Иванов',N'Иван',N'Иванович',1, N'doctor', N'doctor', N'Улица Колотушкина')
SELECT * FROM Doctor
GO

--Таблица статусов
CREATE TABLE Statusik(
	ID_Statusik INT PRIMARY KEY IDENTITY(1,1),
	StatusName NVARCHAR(50) NOT NULL
);
GO

INSERT INTO Statusik(StatusName)
VALUES
(N'Активная запись'),
(N'Архивная запись')
SELECT * FROM Statusik
GO

--Таблица записей
CREATE TABLE Appointment(
	ID_Appointment INT PRIMARY KEY IDENTITY(1,1),
	Patient_ID INT NULL,
	FOREIGN KEY (Patient_ID) REFERENCES Patient(ID_Patient),
	Doctor_ID INT NOT NULL,
	FOREIGN KEY (Doctor_ID) REFERENCES Doctor(ID_Doctor),
	AppoitmentDate DATE NOT NULL,
	AppointmentTime TIME NOT NULL,
	Statusik_ID INT NULL,
	FOREIGN KEY (Statusik_ID) REFERENCES Statusik(ID_Statusik)
);
GO

--таблица приемов
CREATE TABLE AppointmentDocument (
    ID_AppointmentDocument INT PRIMARY KEY IDENTITY(1,1),
	ID_Appointment INT NOT NULL,
	FOREIGN KEY (ID_Appointment) REFERENCES Appointment(ID_Appointment),
    ContentAppointmentRTF NVARCHAR(MAX) NOT NULL
);

--таблица анализов
CREATE TABLE AnalysDocument (
    ID_AnalysDocument INT PRIMARY KEY IDENTITY(1,1),
	ID_Appointment INT NOT NULL,
	FOREIGN KEY (ID_Appointment) REFERENCES Appointment(ID_Appointment),
    ContentAnalysRTF NVARCHAR(MAX) NOT NULL
);

--таблица исследований
CREATE TABLE ResearchDocument (
    ID_ResearchDocument INT PRIMARY KEY IDENTITY(1,1),
	ID_Appointment INT NOT NULL,
	FOREIGN KEY (ID_Appointment) REFERENCES Appointment(ID_Appointment),
    ContentResearchRTF NVARCHAR(MAX) NOT NULL,
	Attachment BINARY NULL 
);
