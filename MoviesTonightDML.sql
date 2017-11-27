
USE movies_tonight;

#Populate MOVIES Table
INSERT INTO MOVIES (MTitle, Rating)
SELECT DISTINCT MTitle, Rating
FROM DATASHEET;

SELECT * FROM MOVIES;

#Populate THEATER Table
INSERT INTO THEATER (TName,Location,Phone)
SELECT DISTINCT TName, Location, Phone
FROM DATASHEET;

SELECT * FROM THEATER;

#Populate ARTIST Table 
INSERT INTO ARTIST (CName)
SELECT DISTINCT CName
FROM DATASHEET;

SELECT * FROM ARTIST;

#Populate SHOWTIME Table
INSERT INTO SHOWTIME (ShowTime,MovieID,TID)
SELECT DISTINCT ShowTime, Movies.MovieID, THEATER.TID
FROM THEATER JOIN DATASHEET ON DATASHEET.TName = THEATER.TName
JOIN MOVIES ON MOVIES.MTitle = DATASHEET.MTitle; 

SELECT * FROM SHOWTIME;

#Populate CREDITS Table
INSERT INTO CREDITS (CCode, AID, MovieID)
SELECT DISTINCT CCode, ARTIST.AID, MOVIES.MovieID
FROM MOVIES JOIN DATASHEET ON MOVIES.MTitle = DATASHEET.MTitle
JOIN ARTIST ON `DATASHEET`.`CName` = `ARTIST`.`CName`;

SELECT * FROM CREDITS;

SELECT TName, MTitle, Showtime, CName, CCode, COUNT(*) AS RowCount
FROM DATASHEET
GROUP BY TName, MTitle, Showtime, CName, CCode
Having RowCount > 1;

