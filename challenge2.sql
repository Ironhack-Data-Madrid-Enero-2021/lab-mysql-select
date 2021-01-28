USE publications;
SELECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name,  COUNT(titles.title)
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
group by authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
order by au_id desc;
