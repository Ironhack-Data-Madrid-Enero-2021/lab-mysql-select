CHALLENGE 1:


SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name 
FROM Ironhack.authors 
	JOIN Ironhack.titleauthor ON Ironhack.authors.au_id = Ironhack.titleauthor.au_id 
	JOIN Ironhack.titles ON Ironhack.titleauthor.title_id = Ironhack.titles.title_id 
    	JOIN Ironhack.publishers ON Ironhack.titles.pub_id = Ironhack.publishers.pub_id;

CHALLENGE 2 :

SELECT 
	authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name, count(*) as "TITLE COUNT"
	FROM authors 
	LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id 
	LEFT JOIN titles ON titleauthor.title_id = titles.title_id 
	LEFT JOIN publishers ON titles.pub_id = publishers.pub_id
	GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
	ORDER BY "TITLE COUNT" DESC ;

CHALLENGE 3:

SELECT au.au_id, au.au_lname, au.au_fname, sum(t.ytd_sales) as 'TOTAL' 
FROM Ironhack.authors as au
LEFT JOIN Ironhack.titleauthor as ta ON au.au_id = ta.au_id 
LEFT JOIN Ironhack.titles as t ON ta.title_id = t.title_id 
GROUP BY au.au_id, au.au_lname, au.au_fname
ORDER BY TOTAL DESC
LIMIT 3;

CHALLENGE 4: 

SELECT au.au_id, au.au_lname, au.au_fname, sum(t.ytd_sales) as 'TOTAL' 
FROM Ironhack.authors as au
LEFT JOIN Ironhack.titleauthor as ta ON au.au_id = ta.au_id 
LEFT JOIN Ironhack.titles as t ON ta.title_id = t.title_id 
GROUP BY au.au_id, au.au_lname, au.au_fname
ORDER BY TOTAL DESC;


