# Challeng 1
select 
authors.au_id as "AUTOR ID", 
au_lname as "LAST NAME",
au_fname as "FIRS NAME", 
title as "TITLE",
pub_name as "PUBLISHER" 
from authors 
	join titleauthor 
    on authors.au_id = titleauthor.au_id    
    join titles 
    on titleauthor.title_id  = titles.title_id
    join publishers 
    on titles.pub_id = publishers.pub_id  ;

# Challeng 2
select authors.au_id as "AUTOR ID", 
au_lname as "LAST NAME",
au_fname as "FIRST NAME",
publishers.pub_name as "PUBLISHER", 
count(title) as "TITLE COUNT" 
from authors
	join titleauthor 
    on authors.au_id = titleauthor.au_id    
    join titles 
    on titleauthor.title_id = titles.title_id  
    join publishers 
    on titles.pub_id = publishers.pub_id
group by authors.au_id,publishers.pub_name;

# Challeng 3
sselect 
authors.au_id as "AUTHOR ID",
au_lname as "LAST NAME", 
au_fname as "FIRST NAME",
sum(qty * price) as "TOTAL"
from authors
	join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join sales
	on titles.title_id = sales.title_id
group by authors.au_id
order by TOTAL desc
limit 3;

    