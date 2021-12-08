**This is repo with my answers for Lab18: SQL Queries**
\
\
**1. What are the different genres?**
The genres that I found using SQL are presented below\
\
| prime_genre       |
|-------------------|
| Games             |
| Productivity      |
| Weather           |
| Shopping          |
| Reference         |
| Finance           |
| Music             |
| Utilities         |
| Travel            |
| Social Networking |
| Sports            |
| Business          |
| Photo & Video     |
| Navigation        |
| Entertainment     |
| Education         |
| Lifestyle         |
| Food & Drink      |
| News              |
| Health & Fitness  |
| Medical           |
| Book              |
\
**Which is the genre with the most apps rated?**
To answer that question I chose the sum of votes grouped by genres and I selected the one with the highest number of total votes, which was **Games**.
\| prime_genre | sum(rating_count_tot) |
|-------------|-----------------------|
| Games       | 8717381               |\
