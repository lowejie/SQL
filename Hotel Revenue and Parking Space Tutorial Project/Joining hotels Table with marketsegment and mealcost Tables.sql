SELECT *
FROM ( -- Combine data of 3 tables of different year into one table with subquery
    SELECT * FROM hotel2018
    UNION
    SELECT * FROM hotel2019
    UNION
    SELECT * FROM hotel2020
) AS hotels
LEFT JOIN marketsegment
on hotels.market_segment = marketsegment.market_segment
LEFT JOIN mealcost
on mealcost.meal = hotels.meal