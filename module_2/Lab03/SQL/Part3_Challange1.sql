CREATE DATABASE mod2_lab3;
USE mod2_lab3;

CREATE TABLE challange1 (student_id int, score int);

INSERT INTO mod2_lab3.challange1
VALUES
(1, 91),
(2,	72),
(3,	98),
(4,	62),
(5,	62),
(6,	95),
(7,	83),
(8,	86),
(9,	56),
(10, 97),
(11, 58),
(12, 71),
(13, 87),
(14, 83),
(15, 98);

-- SUM
SELECT sum(score) as Total_Score FROM challange1;

-- MEAN
SELECT ROUND(AVG(score),2) as Mean_Score FROM challange1;

-- MIN
SELECT min(score) as Min_Score FROM challange1;

-- MAX
SELECT max(score) as Max_Score FROM challange1;

-- STANDARD DEVIATION
SELECT ROUND(stddev(score),2) as STD_Score FROM challange1;

-- VARIANCE
SELECT ROUND(variance(score),2) as Variance_Score FROM challange1;


