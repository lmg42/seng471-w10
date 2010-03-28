--DROP DATABASE IF EXISTS PatientRecords;
CREATE DATABASE `PatientRecords` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `Patient`;
CREATE TABLE `Patient` (
    `familyPhysician`   VARCHAR(20),
    `email`             VARCHAR(20),
    `address`           VARCHAR(100),
    `sex`               CHAR(1), -- M - male, F - female
    `dob`               DATE,
    `fname`             VARCHAR(20),
    `mname`             VARCHAR(20),
    `lname`             VARCHAR(20),
    `ahsID`             BIGINT(10),
    `achID`             BIGINT(20) UNSIGNED,
    `dayPhone`          VARCHAR(10),
    `eveningPhone`      VARCHAR(10),
    PRIMARY KEY (`ahsID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Visit information';

DROP TABLE IF EXISTS `MedicalHistory`;
CREATE TABLE `MedicalHistory` (
    `allergies`         TEXT,
    `medicalConditions` TEXT,
   `visitNum`          INT UNSIGNED,
   `ahsID`             INT UNSIGNED,
    PRIMARY KEY (`ahsID`, `visitNum`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Visit information';


DROP TABLE IF EXISTS `Visits`;
CREATE TABLE `Visits` (
    `doctorName`        VARCHAR(40) NOT NULL,
    `images`            VARCHAR(40),
    `prescription`      TEXT,
    `labTests`          TEXT,
    `triage`            TEXT,
    `symptoms`          TEXT,
    `visitNum`          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`visitNum`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Visit information';


DROP TABLE IF EXISTS `Personnel`;
CREATE TABLE `Personnel` (
    `username`          VARCHAR(20) NOT NULL UNIQUE,
    `password`          VARCHAR(40) NOT NULL,
    `privilegeLevel`    INT UNSIGNED,
    PRIMARY KEY (`username`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='User information';
