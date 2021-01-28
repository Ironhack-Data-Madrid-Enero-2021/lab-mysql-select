########### CHALLENGE_1 #############

SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME,
titles.title AS TITLE,
publishers.pub_name AS PUBLISHER
FROM authors
JOIN titleauthor
ON titleauthor.au_id = authors.au_id
JOIN titles
ON titles.title_id = titleauthor.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id;

########### CHALLENGE_2 #############

SELECT authors.au_id AS AUTHOR_ID, authors.au_lname, au_fname AS FIRST_NAME,
publishers.pub_name AS PUBLISHER,
COUNT(titles.title) AS TITLE_COUNT
FROM authors
JOIN titleauthor
ON titleauthor.au_id = authors.au_id 
JOIN titles
ON titles.title_id = titleauthor.title_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY publishers.pub_id, authors.au_id; 

########### CHALLENGE_3 #############

SELECT authors.au_id AS AUTHOR_ID, au_lname AS LAST_NAME, au_fname AS FIRST_NAME,
SUM(sales.qty) AS TOTAL
FROM authors
JOIN titleauthor
ON titleauthor.au_id = authors.au_id
JOIN titles
ON titles.title_id = titleauthor.title_id
JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;