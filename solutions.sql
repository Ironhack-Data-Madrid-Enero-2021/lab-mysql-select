

#Challenge1

SELECT 
	au.au_id as AuthorID,
    au.au_lname as "Last name",
    au.au_fname as "First name",
    tt.title as Title,
    p.pub_name as Publisher
    
FROM authors AS au
	join titleauthor AS tt ON au.au_id = tt.au_id
    join titles AS t on t.title_id = tt.title_id
    join publishers AS p on p.pub_id = t.pub_id ;

    
#Challenge2

SELECT 
	au.au_id as AuthorID,
    au.au_lname as "Last name",
    au.au_fname as "First name",
    p.pub_name as Publisher,
    COUNT(t.title) as "Title Count"
    
FROM authors AS au
	join titleauthor AS tt ON au.au_id = tt.au_id
    join titles AS t on t.title_id = tt.title_id
    join publishers AS p on p.pub_id = t.pub_id

GROUP BY t.title;


#Challenge3

SELECT 
	au.au_id as AuthorID,
    au.au_lname as "Last name",
    au.au_fname as "First name",
    SUM(s.qty * t.price) as "TOTAL"
    
FROM authors AS au
	join titleauthor AS tt ON au.au_id = tt.au_id
    join titles AS t on t.title_id = tt.title_id
    join sales AS s on t.title_id = s.title_id

GROUP BY AuthorID
ORDER BY TOTAL DESC
LIMIT 3;


#Challenge4

SELECT 
	au.au_id as AuthorID,
    au.au_lname as "Last name",
    au.au_fname as "First name",
    COALESCE (SUM(s.qty * t.price),0) as "TOTAL"
    
FROM authors AS au
	join titleauthor AS tt ON au.au_id = tt.au_id
    join titles AS t on t.title_id = tt.title_id
    join sales AS s on t.title_id = s.title_id
GROUP BY au.au_id
ORDER BY TOTAL DESC;



#BONUS

SELECT
	au.au_id as AuthorID,
    au.au_lname as "Last name",
    au.au_fname as "First name",
	((t.advance + rs.royalty) * tt.royaltyper) as Profit
FROM
	authors AS au
    join titleauthor AS tt ON au.au_id = tt.au_id
	JOIN roysched AS rs on rs.title_id = tt.title_id
    JOIN titles AS t on t.title_id  = tt.title_id

ORDER BY Profit DESC
LIMIT 3;