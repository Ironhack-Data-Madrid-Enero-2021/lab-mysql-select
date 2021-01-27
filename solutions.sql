-- Challenge1
USE Ironhack;
SELECT
authors.au_id AS "AUTHOR ID",
authors.au_lname AS "LAST NAME", 
authors.au_fname AS "FIRST NAME",
titles.title AS "TITLE",
publishers.pub_name AS "PUBLISHER"
FROM authors
JOIN titleauthor
    ON  authors.au_id = titleauthor.au_id
JOIN titles
    ON  titleauthor.title_id = titles.title_id
JOIN publishers
    ON  titles.pub_id = publishers.pub_id;
-- Challenge2
USE Ironhack;
SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME', 
authors.au_fname AS 'FIRST NAME',
publishers.pub_name AS 'PUBLISHER',

COUNT(title) AS 'TITLE_COUNT' 

FROM authors

JOIN titleauthor
	ON	authors.au_id = titleauthor.au_id
JOIN titles
	ON	titleauthor.title_id = titles.title_id
JOIN publishers
	ON	titles.pub_id = publishers.pub_id

GROUP BY authors.au_id, pub_name;
-- Challenge3