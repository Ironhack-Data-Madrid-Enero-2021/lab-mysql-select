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

USE Ironhack;
SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME', 
authors.au_fname AS 'FIRST NAME',

SUM(sales.qty * titles.price) AS 'TOTAL'

FROM authors

JOIN titleauthor
	ON	authors.au_id = titleauthor.au_id
JOIN titles
	ON	titleauthor.title_id = titles.title_id
JOIN sales
	ON	titles.title_id = sales.title_id

GROUP BY authors.au_id
ORDER BY 'TOTAL' DESC
LIMIT 3

-- Challenge 4

USE Ironhack;
SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME', 
authors.au_fname AS 'FIRST NAME',

COALESCE (SUM(sales.qty * titles.price),0) AS 'TOTAL'

FROM authors

JOIN titleauthor
	ON	authors.au_id = titleauthor.au_id
JOIN titles
	ON	titleauthor.title_id = titles.title_id
JOIN sales
	ON	titles.title_id = sales.title_id

GROUP BY authors.au_id
ORDER BY TOTAL DESC