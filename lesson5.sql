INSERT INTO deps(dep)
VALUES('法務部')

INSERT INTO emps(name,age,dep_id)
VALUES('大谷',28,1)

SELECT * FROM emps;

SELECT name,age FROM emps;

SELECT name,age FROM emps
WHERE 
age <= 24;

UPDATE emps
SET
age = 29
WHERE 
id = 10;

DELETE FROM deps
WHERE 
id = 6;

INSERT INTO deps(dep)
VALUES ('法務部')

INSERT INTO deps(id,dep)
VALUES(6,'宣伝部')

#1
INSERT INTO emps(name,age,dep_id)
VALUES('山田',22,1);

INSERT INTO emps
VALUES('0,田中',34,3);

SELECT * FROM deps;

UPDATE emps
SET
age = age +1
WHERE
id = 5;

DELETE FROM sales
WHERE
id = 16;

SELECT * 
FROM
sales
ORDER BY
sale DESC;

SELECT name,age
FROM
emps
ORDER BY
age DESC;

SELECT *
FROM emps
WHERE
age >= 30
AND
dep_id <> 4;

SELECT *
FROM emps
WHERE 
name NOT LIKE '%中%';

SELECT *
FROM sales
WHERE
s_data
BETWEEN
'2017-09-01'
AND
'2017-09-03';

SELECT DISTINCT e.name
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id;

/*
SELECT *(売上げている人以外も表示される
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id;
*/

/*
SELECT s.s_data,e name,s sale
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id;
*/
//例が2個あり両方稼働するが、原則はASを入れる

SELECT 
dep AS 部署名,
CASE
WHEN id IN(1,2) THEN '本社ビル7F'
WHEN id IN(3,4) THEN '本社ビル8F'
ELSE '本社ビル5F'
END AS 所在地
FROM deps;

SELECT
CASE
WHEN age <= 23 THEN concat('(新)',name)
ELSE name
END AS 名前,
age 
FROM emps;

SELECT
s_data AS 日付,
concat(format(sale*1000,0),'円') AS 売上高
FROM sales
ORDER BY sales ASC;
