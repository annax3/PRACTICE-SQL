-- FILTERING ON GROUPS
-- UNDERSTANDING JOINS WITH VLOOKUP IN SPREADSHEET
-- JOINS IN SQL
-- LEFT/RIGHT JOINS
-- AGGREGATIONS WITH JOINS

-- ENTERING THE DATABASE
USE masai;

-- READ THE TABLE
SELECT * FROM student_marks;


SELECT class,section, maths FROM student_marks WHERE class =1;


SELECT class,section, maths FROM student_marks WHERE class =1
GROUP BY class,section
ORDER BY Class, Section;

-- FIND THE MAX IN MATH FOR EACH CLASS AND SECTION
SELECT class,section, MAX(maths) FROM student_marks WHERE class =1
GROUP BY class,section
ORDER BY Class, Section;

-- HOW MANY ROWS ? - 12 Classes* 4 Sections = 48 Combinations / Groups
-- HOW MANY COLUMNS ? 3 (Classes,Section,Max(Maths)


-- PROBLEM : PRINT ONLY THOSE CLASS AND SECTION RECORDS WHERE MAX IN MATHS IS LESS THAN 80 ?

SELECT class,section,MAX(maths) FROM student_marks
WHERE MAX(MATHS) >80
GROUP BY class,section,maths
ORDER BY Class, Section ;

-- WHY WE GET AN ERROR ?
-- YOU CANNOT FILTER ON GROUPS USING WHERE CLAUSE
-- YOU CAN ONLY USE WHERE CLAUSE TO FILTER ON ROWS AND COLUMNS
-- BASE COLUMNS ? - COLUMNS STORED IN THE RAW TABLE
-- INTRODUCING HAVING CLAUSE : FILTER ON GROUPS 

SELECT class,section,MAX(maths) FROM student_marks
GROUP BY class,section
HAVING MAX(maths) < 80
ORDER BY Class, Section ;
-- continue from 15

-- SELECT class,section,maths FROM student_marks
-- GROUP BY class,section,maths
-- HAVING MAX(maths)  BETWEEN 80 AND 90
-- ORDER BY Class, Section ;













