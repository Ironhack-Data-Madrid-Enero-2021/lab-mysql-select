SELECT authors.au_id, au_lname, au_fname, title, pub_name FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id;

SELECT authors.au_id, au_lname, au_fname, pub_name, COUNT(pub_name) FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id
    GROUP BY pub_name, titleauthor.au_id
	order by authors.au_id desc;
 
 SELECT authors.au_id, au_lname, au_fname, au_ord, SUM(au_ord) FROM authors   
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN sales ON sales.title_id = titles.titles_id;
    

    





