**This is repo with my answers for Lab18: SQL Queries**
   
   
**1. What are the different genres?**
The genres that I found using SQL are presented below\
   
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
      
  
**2. Which is the genre with the most apps rated?**
To answer that question I chose the sum of votes grouped by genres and I selected the one with the highest number of total votes, which was **Games**.
| prime_genre | sum(rating_count_tot) |
|-------------|-----------------------|
| Games       | 8717381               |
  
  
**3. Which is the genre with most apps?**
I selected the top count of track_name grouped by genre
The genre with most apps is **Games**.
  
  
| prime_genre | count(track_name) |
|-------------|-------------------|
| Games       | 169               |
    
  
 **4. Which is the one with least?**
 The genre with least apps is **Medical**.
   
| prime_genre | count(track_name) |
|-------------|-------------------|
| Medical     | 1                 |
  
  
**5. Find the top 10 apps most rated.**
Below are top 10 apps with the highest number of votes. 
  
  
| track_name                                     | rating_count_tot |
|------------------------------------------------|------------------|
| Facebook                                       | 2974676          |
| Pandora - Music & Radio                        | 1126879          |
| Pinterest                                      | 1061624          |
| Bible                                          | 985920           |
| Angry Birds                                    | 824451           |
| Fruit Ninja Classic                            | 698516           |
| Solitaire                                      | 679055           |
| PAC-MAN                                        | 508808           |
| Calorie Counter & Diet Tracker by MyFitnessPal | 507706           |
| The Weather Channel: Forecast, Radar & Alerts  | 495626           |
  
  
**6. Find the top 10 apps best rated by users.**
Below are 10 apps with the highest rating from the useres equal to 5.

| track_name                                                                        | user_rating |
|-----------------------------------------------------------------------------------|-------------|
| The Photographer's Ephemeris                                                      | 5           |
| J&J Official 7 Minute Workout                                                     | 5           |
| Daily Audio Bible App                                                             | 5           |
| Plants vs. Zombies                                                                | 5           |
| Learn English quickly with MosaLingua                                             | 5           |
| Domino's Pizza USA                                                                | 5           |
| Kurumaki Calendar -month scroll calendar-                                         | 5           |
| Fragment's Note                                                                   | 5           |
| Dragon Island Blue                                                                | 5           |
| TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF | 5           |
  
  
In fact, this may be a little missleading because there is more apps with maximum rating of 5. That is why we cannot really talk about top 10. Belowe are all the apps (20 )with rating of 5.
  
  
| track_name                                                                        | user_rating |
|-----------------------------------------------------------------------------------|-------------|
| :) Sudoku +                                                                       | 5           |
| TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF | 5           |
| Plants vs. Zombies                                                                | 5           |
| Learn to Speak Spanish Fast With MosaLingua                                       | 5           |
| Plants vs. Zombies HD                                                             | 5           |
| The Photographer's Ephemeris                                                      | 5           |
| Sudoku +                                                                          | 5           |
| Learn English quickly with MosaLingua                                             | 5           |
| Kurumaki Calendar -month scroll calendar-                                         | 5           |
| Domino's Pizza USA                                                                | 5           |
| Daily Audio Bible App                                                             | 5           |
| Infect Them All : Vampires                                                        | 5           |
| Timeshare+                                                                        | 5           |
| Headspace                                                                         | 5           |
| Pumped: BMX                                                                       | 5           |
| Sworkit - Custom Workouts for Exercise & Fitness                                  | 5           |
| Fieldrunners 2                                                                    | 5           |
| Dragon Island Blue                                                                | 5           |
| Fragment's Note                                                                   | 5           |
| J&J Official 7 Minute Workout                                                     | 5           |
  
  
**7.Take a look at the data you retrieved in question 5. Give some insights.**
In order to gat insides into top voted apps I run additional query. Results are shown below 
  
  
| track_name                                     | rating_count_tot | user_rating | ver    | prime_genre       |
|------------------------------------------------|------------------|-------------|--------|-------------------|
| Facebook                                       | 2974676          | 3.5         | 95     | Social Networking |
| Pandora - Music & Radio                        | 1126879          | 4           | 8.4.1  | Music             |
| Pinterest                                      | 1061624          | 4.5         | 6.26   | Social Networking |
| Bible                                          | 985920           | 4.5         | 7.5.1  | Reference         |
| Angry Birds                                    | 824451           | 4.5         | 7.4.0  | Games             |
| Fruit Ninja Classic                            | 698516           | 4.5         | 2.3.9  | Games             |
| Solitaire                                      | 679055           | 4.5         | 4.11.2 | Games             |
| PAC-MAN                                        | 508808           | 3           | 6.3.5  | Games             |
| Calorie Counter & Diet Tracker by MyFitnessPal | 507706           | 4.5         | 7.16   | Health & Fitness  |
| The Weather Channel: Forecast, Radar & Alerts  | 495626           | 3.5         | 8.11   | Weather           |
  
  
The table shows that the most voted apps are not the ones with the highest raiting. Some of them are pretty advanced i.e. Facebook has 95 versions, which means that this app has been for a long time in the store and this is why it has a lot of votes. The most voted apps are conected to our free time i.e. most of them belong to genres Games, Social Networking.
  
  
**8. Take a look at the data you retrieved in question 6. Give some insights.**
In order to get some insides I've run additional query. 
  
  
| track_name                                                                        | user_rating | ver        | prime_genre      |
|-----------------------------------------------------------------------------------|-------------|------------|------------------|
| :) Sudoku +                                                                       | 5           | 5.2.6      | Games            |
| TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF | 5           | 2.8.2      | Business         |
| Plants vs. Zombies                                                                | 5           | 1.9.13     | Games            |
| Learn to Speak Spanish Fast With MosaLingua                                       | 5           | 9.2        | Education        |
| Plants vs. Zombies HD                                                             | 5           | 1.9.12     | Games            |
| The Photographer's Ephemeris                                                      | 5           | 3.14.1     | Photo & Video    |
| Sudoku +                                                                          | 5           | 5.4        | Games            |
| Learn English quickly with MosaLingua                                             | 5           | 9.2        | Education        |
| Kurumaki Calendar -month scroll calendar-                                         | 5           | 2.6        | Productivity     |
| Domino's Pizza USA                                                                | 5           | 4.2.0      | Food & Drink     |
| Daily Audio Bible App                                                             | 5           | 4.6.0      | Lifestyle        |
| Infect Them All : Vampires                                                        | 5           | 3.1        | Games            |
| Timeshare+                                                                        | 5           | 6.6        | Finance          |
| Headspace                                                                         | 5           | 2.13.2     | Health & Fitness |
| Pumped: BMX                                                                       | 5           | 1.6        | Games            |
| Sworkit - Custom Workouts for Exercise & Fitness                                  | 5           | 5.4.1      | Health & Fitness |
| Fieldrunners 2                                                                    | 5           | 1.9.177609 | Games            |
| Dragon Island Blue                                                                | 5           | 1.1.0      | Games            |
| Fragment's Note                                                                   | 5           | 1.05       | Games            |
| J&J Official 7 Minute Workout                                                     | 5           | 2.6.3      | Health & Fitness |
  
  
Here I showed all of the apps with rating of 5 (I explained why above). There are apps which are early versions which suggests that there is probably not a lot of votes. They are mainly connected to our free time as genres as Games, Health and Fitness are the most popular among them.

**9. Now compare the data from questions 5 and 6. What do you see?**
Direct comaprison is shown in tables below. 
Firstly, for top voted apps and their user rating. 
  
| track_name                                     | rating_count_tot | user_rating |
|------------------------------------------------|------------------|-------------|
| Facebook                                       | 2974676          | 3.5         |
| Pandora - Music & Radio                        | 1126879          | 4           |
| Pinterest                                      | 1061624          | 4.5         |
| Bible                                          | 985920           | 4.5         |
| Angry Birds                                    | 824451           | 4.5         |
| Fruit Ninja Classic                            | 698516           | 4.5         |
| Solitaire                                      | 679055           | 4.5         |
| PAC-MAN                                        | 508808           | 3           |
| Calorie Counter & Diet Tracker by MyFitnessPal | 507706           | 4.5         |
| The Weather Channel: Forecast, Radar & Alerts  | 495626           | 3.5         |
  
As it was mentioned before. The apps with most votes do not have the highest rating among users.
  
Second table, shows the top rated apps with thier number of votes. 
  
  
| track_name                                                                        | user_rating | Rating_count_tot |
|-----------------------------------------------------------------------------------|-------------|------------------|
| Plants vs. Zombies                                                                | 5           | 426463           |
| Domino's Pizza USA                                                                | 5           | 258624           |
| Plants vs. Zombies HD                                                             | 5           | 163598           |
| TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF | 5           | 28388            |
| Sworkit - Custom Workouts for Exercise & Fitness                                  | 5           | 16819            |
| Fieldrunners 2                                                                    | 5           | 14214            |
| Headspace                                                                         | 5           | 12819            |
| :) Sudoku +                                                                       | 5           | 11447            |
| Dragon Island Blue                                                                | 5           | 9119             |
| Sudoku +                                                                          | 5           | 5397             |
| J&J Official 7 Minute Workout                                                     | 5           | 4861             |
| Pumped: BMX                                                                       | 5           | 1164             |
| Infect Them All : Vampires                                                        | 5           | 826              |
| Daily Audio Bible App                                                             | 5           | 796              |
| The Photographer's Ephemeris                                                      | 5           | 663              |
| Kurumaki Calendar -month scroll calendar-                                         | 5           | 34               |
| Learn to Speak Spanish Fast With MosaLingua                                       | 5           | 9                |
| Learn English quickly with MosaLingua                                             | 5           | 7                |
| Timeshare+                                                                        | 5           | 1                |
| Fragment's Note                                                                   | 5           | 1                |
  
  
This shows that some of these apps are fresh and their high rating is thanks to the low number of votes.
  
  
**10. How could you take the top 3 regarding both user ratings and number of votes?**
In order to find top 3 apps, we need to take into acount both user rating and number of votes.
The top 3 apps are:
  
| track_name            | user_rating | Rating_count_tot |
|-----------------------|-------------|------------------|
| Plants vs. Zombies    | 5           | 426463           |
| Domino's Pizza USA    | 5           | 258624           |
| Plants vs. Zombies HD | 5           | 163598           |
  
  
**11. Do people care about the price of an app?**
To answer that question I've run two queries. Firstly I wanted to check what is the rating of apps with the highest price and what they are used for. 
  
   
| track_name                              | price  | user_rating | rating_count_tot | prime_genre   |
|-----------------------------------------|--------|-------------|------------------|---------------|
| Proloquo2Go - Symbol-based AAC          | 249.99 | 4           | 773              | Education     |
| STEINS;GATE                             | 24.99  | 4           | 16               | Games         |
| iStatVball 2 iPad Edition               | 19.99  | 4.5         | 193              | Sports        |
| Gaia GPS Classic                        | 19.99  | 4.5         | 2429             | Navigation    |
| Notion                                  | 14.99  | 4           | 929              | Music         |
| FiLMiC Pro                              | 14.99  | 3           | 1478             | Photo & Video |
| FL Studio Mobile                        | 13.99  | 3.5         | 818              | Music         |
| iAnnotate PDF                           | 9.99   | 4.5         | 11156            | Productivity  |
| Jesus Calling Devotional by Sarah Young | 9.99   | 2.5         | 1685             | Book          |
| Notability                              | 9.99   | 4           | 17594            | Productivity  |

  These apps have rather high rating, which shows that users are weeling to pay for the app if they are useful. Top 2 aps with highets price and highest number of votes are used for Productivity.
  
Secondly, I wanted to check if the most popular apps (which also have a lot of votes) are free or paied. 
  
  
| track_name                                                                        | user_rating | Rating_count_tot | price |
|-----------------------------------------------------------------------------------|-------------|------------------|-------|
| Plants vs. Zombies                                                                | 5           | 426463           | 0.99  |
| Domino's Pizza USA                                                                | 5           | 258624           | 0     |
| Plants vs. Zombies HD                                                             | 5           | 163598           | 0.99  |
| TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF | 5           | 28388            | 4.99  |
| Sworkit - Custom Workouts for Exercise & Fitness                                  | 5           | 16819            | 0     |
| Fieldrunners 2                                                                    | 5           | 14214            | 2.99  |
| Headspace                                                                         | 5           | 12819            | 0     |
| :) Sudoku +                                                                       | 5           | 11447            | 2.99  |
| Dragon Island Blue                                                                | 5           | 9119             | 0.99  |
| Sudoku +                                                                          | 5           | 5397             | 4.99  |
| J&J Official 7 Minute Workout                                                     | 5           | 4861             | 0     |
| Pumped: BMX                                                                       | 5           | 1164             | 1.99  |
| Infect Them All : Vampires                                                        | 5           | 826              | 0.99  |
| Daily Audio Bible App                                                             | 5           | 796              | 0.99  |
| The Photographer's Ephemeris                                                      | 5           | 663              | 8.99  |
  
  It seems that the most popular apps are paied, but they cost a little and they are used for entertainment.
