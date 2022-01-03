create database myfirstquery;
-- Here I check the content of the Table by limiting it to showing only first 5 rows
SELECT * FROM myfirstquery.applestore
LIMIT 5;

-- Question nr 1. What are the diffrent genres?
SELECT prime_genre FROM myfirstquery.applestore GROUP BY prime_genre;

-- Question nr 2. Which is the genre with the most app rated 
-- I find it by calculating the sum of total count ranting grouped by genre and ordered by the sum of total count 
SELECT prime_genre, sum(rating_count_tot) FROM myfirstquery.applestore GROUP BY prime_genre ORDER BY sum(rating_count_tot) DESC;
-- Then I limit it to only one result so I have the most rated app.
SELECT prime_genre, sum(rating_count_tot) FROM myfirstquery.applestore GROUP BY prime_genre ORDER BY sum(rating_count_tot) DESC LIMIT 1;

-- Question nr 3. Which is the genre with most apps?
-- First I count app names grouped by genre
SELECT prime_genre, count(track_name) FROM myfirstquery.applestore GROUP BY prime_genre ORDER BY count(track_name);
-- In order to be sure that I obtained the right results I check if my result is correct for medical (1app) and  Book (4apps)
SELECT prime_genre, track_name FROM myfirstquery.applestore where prime_genre = 'Medical';
SELECT prime_genre, track_name FROM myfirstquery.applestore where prime_genre = 'Book';
-- Then I put a limit to show only the genre with most apps
SELECT prime_genre, count(track_name) FROM myfirstquery.applestore GROUP BY prime_genre ORDER BY count(track_name) DESC LIMIT 1;

-- Question 4. Which is the one with least?
-- I use the previous code but with ASC order. I already know that the answer is Medical.
SELECT prime_genre, count(track_name) FROM myfirstquery.applestore GROUP BY prime_genre ORDER BY count(track_name) ASC LIMIT 1;

-- Question 5. Find the top 10 apps most rated.
SELECT track_name, rating_count_tot FROM myfirstquery.applestore ORDER BY rating_count_tot DESC LIMIT 10;
 
 -- Question 6. Find the top 10 apps best rated by users.
 SELECT track_name, user_rating FROM myfirstquery.applestore ORDER BY user_rating DESC LIMIT 10;
 -- since there is actually more app with rating 5 below I show all of them as it is hard to say that these are top 10
 SELECT track_name, user_rating FROM myfirstquery.applestore WHERE user_rating = '5';
 
 -- Question 7. Take a look at the data you retrieved in question 5. Give some insights.
  -- I add additional columns in order to have more insights into the question
  SELECT track_name, rating_count_tot, ver, prime_genre FROM myfirstquery.applestore ORDER BY rating_count_tot DESC LIMIT 10;
  
  -- Question 8. Take a look at the data you retrieved in question 6. Give some insights.
  -- I add additional columns in order to have more insights into the question
   SELECT track_name, user_rating, ver, prime_genre FROM myfirstquery.applestore WHERE user_rating = '5';
 
 -- Question 9. Now compare the data from questions 5 and 6. What do you see?
 -- First I want to see how where rated by the user most rated apps
 SELECT track_name, rating_count_tot, user_rating FROM myfirstquery.applestore ORDER BY rating_count_tot DESC, user_rating DESC LIMIT 10;
 -- Secondly, I want to see how voted where the apps with the highest user rating
 SELECT track_name, user_rating, Rating_count_tot FROM myfirstquery.applestore WHERE user_rating = '5' ORDER BY rating_count_tot DESC;
 
 -- Question 10. How could you take the top 3 regarding both user ratings and number of votes?
 -- My answer would be to take top 3 apps with the highest user rating and with the highest number of votes. This way I can be sure that a lot of users gave the highest rating to the app.
 SELECT track_name, user_rating, Rating_count_tot FROM myfirstquery.applestore WHERE user_rating = '5' ORDER BY rating_count_tot DESC LIMIT 3;
 
 -- Question 11. Do people care about the price of an app?
 -- First I want to check the most expensive apps (first 10), thier user rating with number of votes
 SELECT track_name, price, user_rating, rating_count_tot, prime_genre FROM myfirstquery.applestore ORDER BY price DESC LIMIT 10;
 -- Now I want to check if the most voted apps (top 15) with the highest user rating are free or paied. 
  SELECT track_name, user_rating, Rating_count_tot, price FROM myfirstquery.applestore WHERE user_rating = '5' ORDER BY rating_count_tot DESC LIMIT 15;