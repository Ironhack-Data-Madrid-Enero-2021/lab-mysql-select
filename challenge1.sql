USE Publications;
SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
from authors
join titleauthor on authors.au_id = titleauthor.au_id
join titles on titleauthor.title_id = titles.title_id
join publishers on titles.pub_id = publishers.pub_id
order by au_id asc;