 SELECT authors.au_id, au_lname, au_fname, au_ord, SUM(au_ord) FROM authors   
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN sales ON sales.title_id = titles.title_id;
  GROUP BY authors.au_id
    