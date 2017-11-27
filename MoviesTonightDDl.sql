CREATE DATABASE `movies_tonight`;

USE `movies_tonight`;

CREATE TABLE THEATER (
 TID int(11) NOT NULL auto_increment,
 TName varchar(255) default NULL,
 Location varchar(255) default NULL,
 Phone varchar(12) default NULL,
 PRIMARY KEY (TID)
);

CREATE TABLE MOVIES (
 MOVIEID int(11) NOT NULL auto_increment,
 MTitle varchar(255) default NULL,
 Rating varchar(255) default NULL,
 PRIMARY KEY (MOVIEID)
);

CREATE TABLE ARTIST (
 AID int(11) NOT NULL auto_increment,
 CName varchar(255) default NULL,
 
 PRIMARY KEY (AID)
);

CREATE TABLE SHOWTIME (
 SID int(11) NOT NULL auto_increment,
 MOVIEID int(11) default NULL,
 TID int(11) default NULL,
 ShowTime Time default NULL,
 PRIMARY KEY (SID)
);

CREATE TABLE CREDITS (
CID int(11) NOT NULL auto_increment,
MOVIEID int(11) default NULL,
AID int(11) default NULL,
CCode int(1) default NULL,
PRIMARY KEY (CID)
);

ALTER TABLE `SHOWTIME`  
  ADD FOREIGN KEY Show_Theater (`TID`)
    REFERENCES `THEATER` (`TID`);
    
ALTER TABLE `SHOWTIME`  
  ADD FOREIGN KEY Show_MOVIES (`MOVIEID`)
    REFERENCES `MOVIES` (`MOVIEID`);
    
ALTER TABLE `CREDITS`  
  ADD FOREIGN KEY CREDITS_MOVIES (`MOVIEID`)
    REFERENCES `MOVIES` (`MOVIEID`);
    
ALTER TABLE `CREDITS`  
  ADD FOREIGN KEY CREDITS_ARTIST (`AID`)
    REFERENCES `ARTIST` (`AID`);
    
show tables;
describe movies;
describe credits;
describe theater;
describe artist;
describe ShowTime;