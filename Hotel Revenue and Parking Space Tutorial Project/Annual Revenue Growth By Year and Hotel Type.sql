-- Calculate annual revenue growth through weekday and weekend stays and adr
SELECT 
    arrival_date_year,
    hotel,
    ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr),2) AS revenue
FROM ( -- Combine data of 3 tables of different year into one table with subquery
    SELECT * FROM hotel2018
    UNION
    SELECT * FROM hotel2019
    UNION
    SELECT * FROM hotel2020
) AS hotels
GROUP BY arrival_date_year, hotel;

SELECT * FROM marketsegment;

