SELECT a.au_id AS 'AUTHOR ID', au_lname AS 'LAST NAME', au_fname AS 'FIRST NAME', title as 'TITLE'
FROM authors as a
	JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	JOIN title as t
		ON t.title_id = ta.title_id