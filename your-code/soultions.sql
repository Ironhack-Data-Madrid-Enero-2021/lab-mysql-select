-- Challenge 1

SELECT a.au_id, au_lname, au_fname, title, pub_name
FROM authors AS a
	JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	JOIN titles AS t
		ON ta.title_id = t.title_id
	JOIN publishers AS p
		ON t.pub_id = p.pub_id;   

-- Challenge 2

SELECT a.au_id, au_lname, au_fname, pub_name,
	COUNT(title)
FROM authors AS a
	JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	JOIN titles AS t
		ON ta.title_id = t.title_id
	JOIN publishers AS p
		ON t.pub_id = p.pub_id
GROUP BY a.au_id, pub_name;

-- Challenge 3

SELECT a.au_id, au_lname, au_fname,
	SUM(ytd_sales) AS Total_sales
FROM authors AS a
	JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	JOIN titles AS t
		ON ta.title_id = t.title_id
GROUP BY a.au_id
ORDER BY Total_sales DESC
LIMIT 3;

-- Challenge 4

SELECT a.au_id, au_lname, au_fname,
	IFNULL(SUM(ytd_sales), 0) AS Total_sales
FROM authors AS a
	LEFT JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	LEFT JOIN titles AS t
		ON ta.title_id = t.title_id
GROUP BY a.au_id
ORDER BY Total_sales DESC;

-- Bonus Challenge

SELECT a.au_id, au_lname, au_fname,
	SUM(advance * (royaltyper / 100)) + SUM((royalty * ytd_sales) * (royaltyper / 100)) AS Total_profits
FROM authors AS a
	JOIN titleauthor as ta
		ON a.au_id = ta.au_id
	JOIN titles AS t
		ON ta.title_id = t.title_id
GROUP BY a.au_id
ORDER BY Total_profits DESC;