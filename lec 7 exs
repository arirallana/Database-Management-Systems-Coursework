CREATE TABLE Sailors(Sid integer PRIMARY KEY, Sname string, Rating integer, Age real);

INSERT INTO Sailors VALUES(22, 'Dustin', 7, 45.0);
INSERT INTO Sailors VALUES(29,'Brutus', 1, 33.0);
INSERT INTO Sailors VALUES(31,'Lubber', 8, 55.5);
INSERT INTO Sailors VALUES(32,'Andy', 8, 25.5);
INSERT INTO Sailors VALUES(58,'Rusty', 10, 35.0);
INSERT INTO Sailors VALUES(64,'Horatio', 7, 35.0);
INSERT INTO Sailors VALUES(71, 'Zorba', 10, 16.0);
INSERT INTO Sailors VALUES(74, 'Horatio', 9, 35.0);
INSERT INTO Sailors VALUES(85,'Art', 3, 25.5);
INSERT INTO Sailors VALUES(95,'Bob', 3, 63.5);

CREATE TABLE Boats(Bid integer PRIMARY KEY, Bname string, Color string);

INSERT INTO Boats VALUES(101, 'Interlake', 'Blue');
INSERT INTO Boats VALUES(102,'Interlake', 'Red');
INSERT INTO Boats VALUES(103,'Clipper', 'Green');
INSERT INTO Boats VALUES(104,'Marine', 'Red');

CREATE TABLE Reserves(Sid integer, Bid integer, Day date,
PRIMARY KEY (Sid, Bid),
FOREIGN KEY (Sid) REFERENCES Sailors,
FOREIGN KEY (Bid) REFERENCES Boats);

INSERT INTO Reserves VALUES(22, 101, '10/10/98');
INSERT INTO Reserves VALUES(22, 102, '10/10/98');
INSERT INTO Reserves VALUES(22, 103, '10/8/98');
INSERT INTO Reserves VALUES(22, 104, '10/7/98');
INSERT INTO Reserves VALUES(31, 102, '11/10/98');
INSERT INTO Reserves VALUES(31, 103, '11/6/98');
INSERT INTO Reserves VALUES(31, 104, '11/12/98');
INSERT INTO Reserves VALUES(64, 101, '9/5/98');
INSERT INTO Reserves VALUES(64, 102, '9/8/98');
INSERT INTO Reserves VALUES(74, 103, '9/8/98');


SELECT * FROM Sailors;
SELECT * FROM Boats;
SELECT * FROM Reserves;

SELECT Sname, Rating
FROM Sailors
WHERE Rating>8;

SELECT Sname, Age
FROM Sailors;

SELECT DISTINCT Sname, Age
FROM Sailors;

SELECT Sname
FROM Sailors S, Reserves R
WHERE S.Sid = R.Sid AND R.Bid=103;

SELECT DISTINCT R.Sid
FROM Boats B, Reserves R
WHERE B.Bid = R.Bid AND B.Color = 'Red';

SELECT R.Sid
FROM Boats B, Reserves R
WHERE B.Bid = R.Bid AND B.Color = 'Red';

SELECT DISTINCT S.Sname
FROM Sailors S, Reserves R, Boats B
WHERE S.Sid = R.Sid AND R.Bid = B.Bid AND B.Color = 'Red';

SELECT S.Sname
FROM Sailors S, Reserves R, Boats B
WHERE S.Sid = R.Sid AND R.Bid = B.Bid AND B.Color = 'Red';

SELECT S.Age
FROM Sailors S
WHERE S.Sname LIKE 'B_%B';

SELECT DISTINCT S.Sname, S.Rating+1 AS Rating
FROM Sailors S, Reserves R1, Reserves R2
WHERE S.Sid = R1.Sid AND S.Sid = R2.Sid AND R1.Day = R2.Day AND R1.Bid <>R2.Bid;

SELECT S.Sname
FROM Sailors S, Reserves R, Boats B
WHERE S.Sid = R.Sid AND R.Bid = B.Bid AND B.Color = 'Red' 
UNION
SELECT S2.Sname
FROM Sailors S2, Reserves R2, Boats B2
WHERE S2.Sid = R2.Sid AND R2.Bid = B2.Bid AND B2.Color = 'Green'  

(write after union)


SELECT S.Sname
FROM Sailors S
WHERE S.Sid IN (SELECT R.Sid 
                FROM Reserves R
                WHERE R.Bid = 103);
                
SELECT S.Sname
FROM Sailors S
WHERE S.Sid NOT IN (SELECT R.Sid 
                FROM Reserves R
                WHERE R.Bid = 103);
                
SELECT S.Sname
FROM Sailors S
WHERE S.Sid IN (SELECT R.Sid 
                FROM Reserves R
                WHERE R.Bid IN (SELECT B.Bid 
                                FROM Boats B
                                WHERE B.Color = 'Red'));
                                
SELECT S.Sname
FROM Sailors S
WHERE S.Sid NOT IN (SELECT R.Sid 
                FROM Reserves R
                WHERE R.Bid IN (SELECT B.Bid 
                                FROM Boats B
                                WHERE B.Color = 'Red'));
                                
SELECT S.Sname
FROM Sailors S
WHERE S.Sid IN (SELECT R.Sid 
                FROM Reserves R
                WHERE R.Bid NOT IN (SELECT B.Bid 
                                FROM Boats B
                                WHERE B.Color = 'Red'));
                                
SELECT S.Sname
FROM Sailors S
WHERE EXISTS (SELECT *
            FROM Reserves R
            WHERE R.Bid=103
            AND R.Sid = S.Sid);
            
SELECT S.Sname
FROM Sailors S
WHERE NOT EXISTS (SELECT *
            FROM Reserves R
            WHERE R.Bid=103
            AND R.Sid = S.Sid);
            

SELECT S.Sname
FROM Sailors S
WHERE S.Rating > ANY(SELECT S2.Rating
                    FROM Sailors S2
                    WHERE S2.Sname = 'Dustin'); 
                    
SELECT S.Sname
FROM Sailors S
WHERE S.Rating > ALL(SELECT S2.Rating
                    FROM Sailors S2
                    WHERE S2.Sname = 'Dustin'); 
                    
SELECT S.Sname
FROM Sailors S
WHERE S.Rating >= ALL(SELECT S2.Rating
                    FROM Sailors S2);


SELECT S.Sname
FROM Sailors S, Reserves R, Boats B
WHERE S.Sid = R.Sid AND R.Bid = B.Bid AND B.Color='Red' AND S.Sid
IN(SELECT S2.Sid
    FROM Sailors S2,Reserves R2, Boats B2
    WHERE S2.Sid = R2.Sid AND R2.Bid = B2.Bid AND B2.Color='Green');
                

