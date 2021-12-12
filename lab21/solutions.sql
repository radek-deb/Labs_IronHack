SELECT * FROM publications.authors;
SELECT * FROM publications.titleauthor;
SELECT * FROM publications.publishers;
SELECT * FROM publications.titles;
SELECT count(au_id) FROM publications.titleauthor;


-- Challange 1
SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, title, pub_name as Publisher
FROM publications.authors authos
RIGHT JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
LEFT JOIN publications.publishers publis 
ON titls.pub_id = publis.pub_id;

select count(Author_ID) from (
-- Challange 1
SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, title, pub_name as Publisher
FROM publications.authors authos
INNER JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
LEFT JOIN publications.publishers publis 
ON titls.pub_id = publis.pub_id
) as tmp;

-- Challange 2
SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, count(title) as Num_pub, pub_name as Publisher
FROM publications.authors authos
RIGHT JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
LEFT JOIN publications.publishers publis 
ON titls.pub_id = publis.pub_id
GROUP BY Author_ID
;

-- To check if it is correct
SELECT sum(Num_pub) FROM
(SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, count(title) as Num_pub, pub_name as Publisher
FROM publications.authors authos
RIGHT JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
LEFT JOIN publications.publishers publis 
ON titls.pub_id = publis.pub_id
GROUP BY Author_ID)
as Total_title;

-- Challange 3
SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, sum(ytd_sales) as Total_sales
FROM publications.authors authos
RIGHT JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
GROUP BY Author_ID
ORDER BY Total_sales DESC
LIMIT 3;

-- Challenge 4
SELECT authos.au_id as Author_ID, au_lname as `Last Name`, au_fname as `First Name`, IFNULL(sum(ytd_sales), 0) as Total_sales
FROM publications.authors authos
LEFT JOIN publications.titleauthor ta
ON authos.au_id = ta.au_id
LEFT JOIN publications.titles titls
ON ta.title_id = titls.title_id
GROUP BY Author_ID
ORDER BY Total_sales DESC
;