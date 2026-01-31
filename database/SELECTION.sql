use FOOD_DELIVERY
--SELECT chosen_item , item_id,quantity from Orders;
select *from Orders;
SELECT chosen_item  from Orders ORDER BY Order_ID DESC;
SELECT *FROM Restaurants;
SELECT *FROM FoodItems;
SELECT *FROM Admins;
SELECT *FROM Delivery;
SELECT *FROM DeliveryPerson;
SELECT *FROM DriverDeliverySchedule;
SELECT *FROM Feedback;
SELECT *FROM Logins;
SELECT *FROM Users;
DELETE FROM logins;