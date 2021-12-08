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
