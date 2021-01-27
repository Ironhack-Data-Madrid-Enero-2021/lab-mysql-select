--Challenge 1 - Who Have Published What At Where?--

select au.au_id, au.au_lname, au.au_fname, tia.title_id, pub.pub_name
from authors as au
	join titleauthor as tia
		on au.au_id = tia.au_id
	join titles as ti
		on tia.title_id = ti.title_id
	left join publishers as pub
		on ti.pub_id = pub.pub_id;


--Challenge 2 - Who Have Published How Many At Where?--

select au.au_id, au.au_lname, au.au_fname, tia.title_id, pub.pub_name, count(pub_name) as title_with
from authors as au
	join titleauthor as tia
		on au.au_id = tia.au_id
	join titles as ti
		on tia.title_id = ti.title_id
	left join publishers as pub
		on ti.pub_id = pub.pub_id
	group by au_id, pub_name


--Challenge 3 - Best Selling Authors--
--No estoy muy seguro de cual es la columna de ventas, si qty en sales o ytd_sales en tittles.
--Entiendo que es esta última, tiene como más sentido para mí...

select au.au_id, au.au_lname, au.au_fname, sum(ti.ytd_sales)as TOTAL
from authors as au
	left join titleauthor as tia
		on au.au_id = tia.au_id
	left join titles as ti
		on tia.title_id = ti.title_id
	group by au_id
    order by total desc limit 3


-- Challenge 4 - Best Selling Authors Ranking --

select au.au_id, au.au_lname, au.au_fname, ifnull(sum(ti.ytd_sales), 0) as TOTAL
from authors as au
	left join titleauthor as tia
		on au.au_id = tia.au_id
	left join titles as ti
		on tia.title_id = ti.title_id
	group by au_id
    order by total desc


-- Bonus Challenge - Most Profiting Authors --

select au.au_id, au.au_lname, au.au_fname, sum((ti.ytd_sales*ti.price*(ti.royalty/100)+ti.advance)*(tia.royaltyper/100)) as Profit
from authors as au
	left join titleauthor as tia
		on au.au_id = tia.au_id
	left join titles as ti
		on tia.title_id = ti.title_id
	group by au.au_id
    order by Profit desc limit 3