SELECT COUNT(flightID) AS RegisteredFlights FROM flights;
SELECT AVG(DepDelay) AS DepartureDelay, AVG(ArrDelay) AS ArrivalDelay, Origin FROM flights GROUP BY origin;
SELECT  Origin, colYear AS Year, colMonth AS Month, AVG(ArrDelay) AS ArrivalDelay FROM flights GROUP BY origin, colYear, colMonth ORDER BY origin, colYear, colMonth;
SELECT City, colYear AS Year, colMonth AS Month, AVG(ArrDelay) AS ArrivalDelay FROM flights INNER JOIN usairports ON usairports.IATA = flights.Origin GROUP BY city, colYear, colMonth ORDER BY city, colYear, colMonth;
SELECT UniqueCarrier, COUNT(*) AS CancelledFlights FROM flights WHERE Cancelled >0 GROUP BY UniqueCarrier ORDER BY CancelledFlights DESC; 
SELECT SUM(distance) AS Distance, tailnum FROM flights GROUP BY Distance, tailnum ORDER BY Distance DESC LIMIT 10;
SELECT AVG(ArrDelay) AS Delay, Description AS Airline FROM flights AS fl INNER JOIN carriers AS cr ON cr.CarrierCode = fl.UniqueCarrier GROUP BY description HAVING Delay >10 ORDER BY Delay;  
