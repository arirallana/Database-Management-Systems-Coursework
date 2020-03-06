
/* Create a table called STUDENTS */
CREATE TABLE STUDENTS(sid char(10) PRIMARY KEY, name char(20) , login char(20) , age int, gpa real);

/* Create few records in this table */
INSERT INTO STUDENTS VALUES(53666,'Jones', 'jones@cs', 18, 3.4);
INSERT INTO STUDENTS VALUES(53688,'Smith', 'smith@eecs', 18, 3.2);
INSERT INTO STUDENTS VALUES(53650,'Smith', 'smith@math', 19, 3.8);

/* Update a record in the table */
UPDATE STUDENTS	
SET	gpa	=	2.8
WHERE sid = '53688';

/* Print from table */
SELECT STUDENTS.name, STUDENTS.login
FROM STUDENTS
WHERE age = '18';

/* Delete from table */
DELETE FROM STUDENTS
WHERE name = 'Smith';

/* Print table */
SELECT *
FROM STUDENTS;

