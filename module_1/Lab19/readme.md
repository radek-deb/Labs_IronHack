**These are my answers for Lab19**
  
  
 **1. From the order_items table, find the price of the highest priced order and lowest price order.**
   
   
 Highest priced order: 
| order_id                         | price |
|----------------------------------|-------|
| 0812eb902a67711a1cb742b3cdaa65ae | 6735  |
  
  
Lowest priced ordder:
| order_id                         | price |
|----------------------------------|-------|
| 3ee6513ae7ea23bdfab5b9ab60bffcb5 | 0.85  |
  
  
**2. From the order_items table, what is range of the shipping_limit_date of the orders?**  
  
  Range will be the difference between the first and the last date.
    First date: 
| shipping_limit_date |
|---------------------|
| 19/09/2016 02:15    |
    
    Last date:
| shipping_limit_date |
|---------------------|
| 10/04/2020 00:35    |
  
  
 **3. From the customers table, find the states with the greatest number of customers.**
   
   States with the highest number of customers (top 10)
| customer_state | Number of customers |
|----------------|---------------------|
| SP             | 41746               |
| RJ             | 12852               |
| MG             | 11635               |
| RS             | 5466                |
| PR             | 5045                |
| SC             | 3637                |
| BA             | 3380                |
| DF             | 2140                |
| ES             | 2033                |
| GO             | 2020                |
  
  
**4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.**
  
  Cities with the greatest number of customers
| customer_city         | Number of customers |
|-----------------------|---------------------|
| sao paulo             | 15540               |
| campinas              | 1444                |
| guarulhos             | 1189                |
| sao bernardo do campo | 938                 |
| santo andre           | 796                 |
| osasco                | 746                 |
| santos                | 713                 |
| sao jose dos campos   | 691                 |
| sorocaba              | 633                 |
| jundiai               | 565                 |
| ribeirao preto        | 510                 |
| barueri               | 433                 |
| mogi das cruzes       | 383                 |
| piracicaba            | 369                 |
| sao jose do rio preto | 335                 |
| carapicuiba           | 328                 |
| maua                  | 323                 |
| praia grande          | 311                 |
| taboao da serra       | 296                 |
| diadema               | 286                 |
  
  
  **5. From the closed_deals table, how many distinct business segments are there (not including null)?**
    
    
  Distincr business segments (without null):
    | business_segment                |
|---------------------------------|
| pet                             |
| car_accessories                 |
| home_appliances                 |
| food_drink                      |
| health_beauty                   |
| computers                       |
| household_utilities             |
| construction_tools_house_garden |
| toys                            |
| sports_leisure                  |
| stationery                      |
| food_supplement                 |
| home_decor                      |
| bed_bath_table                  |
| watches                         |
| fashion_accessories             |
| jewerly                         |
| party                           |
| small_appliances                |
| audio_video_electronics         |
| other                           |
| bags_backpacks                  |
| home_office_furniture           |
| music_instruments               |
| books                           |
| baby                            |
| air_conditioning                |
| phone_mobile                    |
| handcrafted                     |
| perfume                         |
| gifts                           |
| religious                       |
| games_consoles                  |
    
    
 **6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).**
   
   Below are 3 business segments with the highest declared monthly revenue
| business_segment                | sum(declared_monthly_revenue) |
|---------------------------------|-------------------------------|
| construction_tools_house_garden | 50695006                      |
| phone_mobile                    | 8000000                       |
| home_decor                      | 710000                        |
  
  
**7. From the order_reviews table, find the total number of distinct review score values.**
  Total number of review score values:
  
| Total review number |
|---------------------|
| 99173               |
  
  
  Total number of review score values by score:
  
    
| review_score | count(DISTINCT review_id) |
|--------------|---------------------------|
| 5            | 57000                     |
| 4            | 19062                     |
| 3            | 8203                      |
| 2            | 3196                      |
| 1            | 11712                     |
  
**8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.**

Table with new column
  
| review_score | count(review_score) | Description_review |
|--------------|---------------------|--------------------|
| 5            | 57420               | Very Good!         |
| 4            | 19200               | Good               |
| 1            | 11858               | Terrible           |
| 3            | 8287                | Acceptable         |
| 2            | 3235                | Bad                |
  
  Rows in Table are ordered so the most frequent category is Very Good!
  
**9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs.**
The most frequently occurs review_score of 5. Its occurance is equal to 57420.
  
| review_score | Frequency | Description_review |
|--------------|-----------|--------------------|
| 5            | 57420     | Very Good!         |
  
