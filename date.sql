--CURDATE - give current date
CURDATE()

--CURTIME - give current time
CURTIME()

--NOW - give current datetime
NOW()


INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES
('Microwave', CURDATE(), CURTIME(), NOW());

--Formatting Dates and times

DAY()
DAYNAME()
DAYOFWEEK()
DAYOFYEAR()

MONTH()
MONTHNAME()

HOUR()
MINUTE()
SECOND()

"2017-04-21"

CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate));

"April 21 2017"

--better way DATEFORMAT() best to use

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');
   
 -->      SUNDAY OCTOBER 2009
 
 --DATE MATH
 
 --DATEDIFF()
 SELECT DATEDIFF('2007-12-31 23:59:59', '2007-12-30');
 
 -->      1
 
 --DATE_ADD()
 
SELECT DATEADD('2008-12-31 23:59:59', INTERVAL 1 SECOND);
--> '2009-01-01 00:00:00'

--  +/-
SELECT '2008-12-31 23:59:59' +  INTERVAL 1 SECOND;
--> '2009-01-01 00:00:00'

SELECT '2008-12-31 23:59:59' +  INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;
-->   +---------------------------------------------------------------+
| '2008-12-31 23:59:59' +  INTERVAL 15 MONTH + INTERVAL 10 HOUR |
+---------------------------------------------------------------+
| 2010-04-01 09:59:59                                           |
| 2010-04-01 09:59:59                                           |
| 2010-04-01 09:59:59                                           |
+---------------------------------------------------------------+

--TIMESTAMP
CREATE TABLE comments(content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

CREATE TABLE comments2 (
content VARCHAR(100),
changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP --ALSO USE NOW() INSTEAD OF CURRENT_TIMESTAMP
);