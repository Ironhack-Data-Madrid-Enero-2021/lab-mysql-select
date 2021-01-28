CHALLENGE 1 

USE IRONHACK;
SELECT authors.au_id AS `AUTHOR ID`, au_lname AS `LAST NAME`, au_fname AS `FIRST NAME`, title AS `TITLE`, pub_name AS `PUBLISHER`
FROM authors
        JOIN titleauthor ON authors.au_id = titleauthor.au_id
        JOIN titles ON titleauthor.title_id = titles.title_id
        JOIN publishers ON  titles.pub_id = publishers.pub_id


CHALLENGE 2 

USE IRONHACK;
SELECT authors.au_id AS `AUTHOR ID`, au_lname AS `LAST NAME`, au_fname AS `FIRST NAME`,COUNT(title) AS `TITLE COUNT`
FROM authors
        JOIN titleauthor ON authors.au_id = titleauthor.au_id
        JOIN titles ON titleauthor.title_id = titles.title_id
        JOIN publishers ON  titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, au_lname, au_fname,pub_name;

CHALLENGE 3 

USE IRONHACK;
SELECT authors.au_id AS `AUTHOR ID`, au_lname AS `LAST NAME`, au_fname AS `FIRST NAME`,SUM(qty*price) AS `TOTAL`
FROM authors
        JOIN titleauthor ON authors.au_id = titleauthor.au_id
        JOIN titles ON titleauthor.title_id = titles.title_id
        JOIN sales ON  titles.title_id = sales.title_id
GROUP BY authors.au_id, au_lname, au_fname
ORDER BY TOTAL DESC
LIMIT 3;

CHALLENGE 4

USE IRONHACK;
SELECT authors.au_id AS `AUTHOR ID`, au_lname AS `LAST NAME`, au_fname AS `FIRST NAME`,SUM(qty*price) AS `TOTAL`
FROM authors
        JOIN titleauthor ON authors.au_id = titleauthor.au_id
        JOIN titles ON titleauthor.title_id = titles.title_id
        JOIN sales ON  titles.title_id = sales.title_id
GROUP BY authors.au_id, au_lname, au_fname
ORDER BY TOTAL DESC;

```En este último challenge me quede sin terminarlo por no consegia sacar los valores nulos. Me gustaría saber como sacarlo.'''