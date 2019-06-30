SELECT 
CONCAT(SUBSTRING(title, 1, 10), '...') AS 'Short Title'

FROM 
books;


SELECT REPLACE (title, 'e', '3') FROM books;

SELECT
SUBSTRING(
REPLACE (title, 'e', 3),1, 10
) AS 'weird string'


FROM
books;

SELECT REVERSE ('Hello World');

SELECT CHAR_LENGTH ('Hello World');