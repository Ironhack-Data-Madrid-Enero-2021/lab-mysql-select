## Challenge 1 - Who Have Published What At Where?

SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME',a.au_fname AS 'FIRST NAME', t.title AS 'TITLE', pub.pub_name AS 'PUBLISHER'
FROM titleauthor as ta
	JOIN authors as a
		on a.au_id = ta.au_id
	JOIN titles as t
		on ta.title_id = t.title_id
	JOIN publishers as pub
		on pub.pub_id = t.pub_id;
        
## Challenge 2 - Who Have Published How Many At Where?

SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME',a.au_fname AS 'FIRST NAME', pub.pub_name AS 'PUBLISHER',  COUNT(t.title) AS 'TITLE_COUNT'
FROM titleauthor as ta
	JOIN authors as a
		on a.au_id = ta.au_id
	JOIN titles as t
		on ta.title_id = t.title_id
	JOIN publishers as pub
		on pub.pub_id = t.pub_id
GROUP BY  a.au_id, a.au_lname, a.au_fname, pub.pub_name;

## Challenge 3 - Best Selling Authors

SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME',a.au_fname AS 'FIRST NAME', SUM(qty) AS 'TOTAL'
FROM titleauthor as ta
	JOIN authors as a
		on a.au_id = ta.au_id
	JOIN titles as t
		on ta.title_id = t.title_id
	JOIN publishers as pub
		on pub.pub_id = t.pub_id
	JOIN sales AS s
		on s.title_id = t.title_id
GROUP BY a.au_id
ORDER BY `TOTAL`DESC 

## Challenge 4 - Best Selling Authors Ranking

