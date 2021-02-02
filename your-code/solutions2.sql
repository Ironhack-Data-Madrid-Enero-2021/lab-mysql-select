-- Challenge 1
-- SELECT authors.au_id, au_lname, au_fname, titles.title_id, pub_name FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id;

-- Challenge 2
-- SELECT authors.au_id, au_lname, au_fname, pub_name, COUNT(pub_name) FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id
    GROUP BY pub_name, titleauthor.au_id
	order by authors.au_id desc;
-- to check = 

-- CHALLENGE 3
SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(qty) FROM authors   
	JOIN titleauthor 
		ON authors.au_id = titleauthor.au_id
    JOIN titles 
		ON titles.title_id = titleauthor.title_id
    JOIN sales 
		ON sales.title_id = titles.title_id;
    

    





