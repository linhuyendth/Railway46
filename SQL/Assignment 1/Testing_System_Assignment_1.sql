CREATE DATABASE Test1
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;
USE Test1;
CREATE TABLE Department (
DepartmentID int NOT NULL AUTO_INCREMENT,
DepartmentName varchar(50) NOT NULL,
PRIMARY KEY(DepartmentID)
);
CREATE TABLE Position (
PositionID int NOT NULL AUTO_INCREMENT,
PositionName varchar(50) NOT NULL,
PRIMARY KEY(PositionID)
);
CREATE TABLE Account (
AccountID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Email varchar(50) NOT NULL,
Username varchar(20) NOT NULL,
Fullname varchar(50) NOT NULL,
DepartmentID int NOT NULL,
PositionID int NOT NULL,
CreateDate datetime NOT NULL
);
CREATE TABLE Group_nhom (
GroupID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
GroupName varchar(50) NOT NULL,
CreatorID int NOT NULL,
CreateDate datetime NOT NULL
);
CREATE TABLE GroupAccount (
GroupID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
AccountID int NOT NULL,
JoinDate datetime NOT NULL
);
CREATE TABLE TypeQuestion (
TypeID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
TypeName varchar(100) NOT NULL
);
CREATE TABLE CategoryQuestion (
CategoryID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
CategoryName varchar(100) NOT NULL
);
CREATE TABLE Question (
QuestionID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Content varchar(200) NOT NULL,
CategoryID int NOT NUll,
TypeID int NOT NULL,
CreatorID int NOT NUll,
CreateDate datetime NOT NUll
);
CREATE TABLE Answer (
AnswerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Content varchar(200) NOT NULL,
QuestionID int NOT NULL,
isCorrect TINYTEXT
);
CREATE TABLE Exam (
ExamID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Code varchar(20) NOT NULL,
Title varchar(100) NOT NULL,
CategoryID int NOT NULL,
Duration varchar(20) NOT NULL,
CreatorID int NOT NULL,
CreateDate datetime
);
CREATE TABLE ExamQuestion (
ExamID int NOT NULL,
QuestionID int NOT NULL
);