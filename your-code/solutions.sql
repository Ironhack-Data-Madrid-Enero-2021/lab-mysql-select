# CHALLENGE 1
SELECT 
authors.au_id AS AUTHOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
titles.title AS TITLE,
publishers.pub_name AS PUBLISHER_NAME
FROM authors
JOIN titleauthor
	ON	authors.au_id = titleauthor.au_id
JOIN titles
	ON	titleauthor.title_id = titles.title_id
JOIN publishers
	ON	titles.pub_id = publishers.pub_id;

# CHALLENGE 2
SELECT 
authors.au_id AS AUTHOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
publishers.pub_name AS PUBLISHER,
COUNT(title) AS TITLE_COUNT 
FROM authors
JOIN titleauthor
	ON	authors.au_id = titleauthor.au_id
JOIN titles
	ON	titleauthor.title_id = titles.title_id
JOIN publishers
	ON	titles.pub_id = publishers.pub_id
GROUP BY authors.au_id

#CHALLENGE 3
SELECT 
authors.au_id AS AUTHOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
SUM(sales.qty*titles.price) AS TOTAL
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titles.title_id = titleauthor.title_id
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;

#CHALLENGE 4
SELECT 
authors.au_id AS AUTHOR_ID,
authors.au_lname AS LAST_NAME, 
authors.au_fname AS FIRST_NAME,
COALESCE(SUM(sales.qty*titles.price),0) AS TOTAL
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titles.title_id = titleauthor.title_id
JOIN sales on titles.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC;