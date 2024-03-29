use hotel_reserve;


SELECT COUNT(Booking_ID) 
AS Total_Reservations 
FROM hotel;


SELECT type_of_meal_plan, COUNT(*) AS Total_Count
FROM hotel
GROUP BY type_of_meal_plan
ORDER BY Total_Count DESC
LIMIT 1;


SELECT AVG(avg_price_per_room) AS Average_Price
FROM hotel
WHERE no_of_children > 0;

SELECT COUNT(Booking_ID) AS Total_Reservations
FROM hotel
WHERE EXTRACT(YEAR FROM arrival_date) = 2018;


SELECT room_type_reserved, COUNT(*) AS Total_Count
FROM hotel
GROUP BY room_type_reserved
ORDER BY Total_Count DESC
LIMIT 1;

SELECT COUNT(*) AS Weekend_Reservations
FROM hotel
WHERE no_of_weekend_nights > 0;


SELECT MAX(lead_time) AS Highest_Lead_Time, 
MIN(lead_time) AS Lowest_Lead_Time
FROM hotel;


SELECT market_segment_type, COUNT(*) AS Total_Count
FROM hotel
GROUP BY market_segment_type
ORDER BY Total_Count DESC
LIMIT 1;


SELECT COUNT(*) AS Confirmed_Reservations
FROM hotel
WHERE booking_status = 'Not_Canceled';


SELECT SUM(no_of_adults) AS Total_Adults, 
SUM(no_of_children) AS Total_Children
FROM hotel;


SELECT AVG(no_of_weekend_nights) AS Avg_Weekend_Nights
FROM hotel
WHERE no_of_children > 0;


SELECT EXTRACT(MONTH FROM arrival_date) AS Month, COUNT(*) AS Reservations
FROM hotel
GROUP BY EXTRACT(MONTH FROM arrival_date)
ORDER BY Month;


SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS Avg_Nights
FROM hotel
GROUP BY room_type_reserved;


SELECT room_type_reserved, AVG(avg_price_per_room) AS Avg_Price
FROM hotel
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY COUNT(*) DESC
LIMIT 1;



SELECT market_segment_type, AVG(avg_price_per_room) AS Avg_Price_Per_Room
FROM hotel
GROUP BY market_segment_type
ORDER BY Avg_Price_Per_Room DESC
LIMIT 1;






