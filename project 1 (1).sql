create database if not exists ecommerse;
use ecommerse;
# qtion 03 :
desc users_data;
# Qtion 04 :
select * from users_data limit   100;
# Qtion 05 :
select distinct country from users_data; 
select distinct language from users_data;
select count(distinct country),count(distinct language) from users_data;
# qtion 06 :
select gender, sum(socialnbfollowers) total_fallowers from users_data group by gender;
# qtion 07 :
select hasprofilepicture ,count(*) from users_data group by hasprofilepicture; 
select hasanyapp ,count(*) from users_data group by hasanyapp;
select hasandroidapp , count(*) from users_data group by hasandroidapp;
select hasiosapp ,count(*) from users_data group by hasiosapp;
# qtion 08 :
select country,count(*) total_buyers from users_data  where productsbought >= 1 group by country order by total_buyers desc ;
# qtion 09 :
select country ,count(*) total_sellers from users_data where productssold >= 1 group by country order by total_sellers asc ;
# qtion 10 : 
# two ways considering single maximum or overall persentage
select country ,max(productspassrate) total_products_passrate from users_data group by country order by total_products_passrate desc limit 10;
select country ,sum(productspassrate) total_products_passrate from users_data group by country order by total_products_passrate desc limit 10;
# qtion  11 :
select language ,count(*) total_users_in_each_language from users_data group by language order by total_users_in_each_language desc ;
# qtion 12 :
select 'products liked'as female ,count(socialproductsliked)  from users_data where gender = 'f' and socialproductsliked > 0 union  select 'product wished' ,count(productswished)  from users_data where gender = 'f' and productswished > 0;
# qtion 13 :
select 'sellers' male, count(productssold) from users_data where gender = 'm' and productssold >=1 union select 'buyers', count(productsbought) from users_data where gender = 'm' and productsbought >= 1;
# qtion 14 :
select country ,count(*) total_buyers from users_data where productsbought >=1 group by country order by total_buyers desc ;
# qtion 15 :
select country ,sum(productssold) total_sold from users_data group by country order by total_sold asc limit 10;
# qtion 16 :
select * from users_data where dayssincelastlogin <= 11 limit 110; 
# qtion 17 :
select count(*)female_users_not_loggedin_since_last_100days from users_data where dayssincelastlogin = 100 and gender = 'f' ; 
# qtion 18 :
select country, count(*) female_users from users_data where gender = 'f' group by country order by female_users desc;
# qtion 19 :
select country, count(*) male_users from users_data where gender = 'm' group by country order by male_users desc;
# qtion 20 : 
# there are two cases considering all data or considering only atleast one product bought or sold :
select COUNTRY,avg(productssold) avg_products_sold,avg(productsbought) avg_products_bought from users_data where gender = 'm'and productssold >=1 and productsbought >=1 GROUP BY COUNTRY;

select COUNTRY,avg(productssold) avg_products_sold,avg(productsbought) avg_products_bought from users_data where gender = 'm' group by country;
select coalesce(type) from users_data;














