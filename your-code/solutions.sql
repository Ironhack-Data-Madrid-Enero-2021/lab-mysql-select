SELECT authors.au_id, au_lname, au_fname, pub_name FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id
    
SELECT authors.pub_name, authors.au_id, COUNT(*) FROM authors
GROUP BY authors.pub_name ORDER BY authors.pub_name desc;




CHALLENGE 
SELECT authors.au_id, au_lname, au_fname FROM authors
JOIN titleauthor ON titleauthor.au_id = authors.au_id

SELECT authors.au_id, au_lname, au_fname, title_id FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id

SELECT authors.au_id, au_lname, au_fname, title FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id;

SELECT authors.au_id, au_lname, au_fname, title, pub_name FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id;

SELECT authors.au_id, au_lname, au_fname, pub_name FROM authors
	JOIN titleauthor ON titleauthor.au_id = authors.au_id
    JOIN titles ON titles.title_id = titleauthor.title_id
    JOIN publishers ON publishers.pub_id = titles.pub_id
    
SELECT authors.pub_name, authors.au_id, COUNT(*) FROM authors
GROUP BY authors.pub_name ORDER BY authors.pub_name desc;