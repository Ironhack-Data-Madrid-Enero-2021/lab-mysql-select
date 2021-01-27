--Challenge 1--

select au.au_id, au.au_lname, au.au_fname, tia.title_id, pub.pub_name
from authors as au
	join titleauthor as tia
		on au.au_id = tia.au_id
	join titles as ti
		on tia.title_id = ti.title_id
	left join publishers as pub
		on ti.pub_id = pub.pub_id;


--Challenge 2--

select au.au_id, au.au_lname, au.au_fname, tia.title_id, pub.pub_name, count(pub_name) as title_with
from authors as au
	join titleauthor as tia
		on au.au_id = tia.au_id
	join titles as ti
		on tia.title_id = ti.title_id
	left join publishers as pub
		on ti.pub_id = pub.pub_id
	group by au_id, pub_name


--Challenge 3--

select au.au_id, au.au_lname, au.au_fname, sum(sa.qty) as TOTAL
from authors as au
	join titleauthor as tia
		on au.au_id = tia.au_id
	join sales as sa
		on sa.title_id = tia.title_id
	group by au_id
    order by total desc limit 3


--Challenge 4--

select au.au_id, au.au_lname, au.au_fname, ifnull(sum(sa.qty), 0) as TOTAL
from authors as au
	left join titleauthor as tia
		on au.au_id = tia.au_id
	left join sales as sa
		on sa.title_id = tia.title_id
	group by au_id
    order by total desc