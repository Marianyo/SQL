SELECT COUNT(flightID) AS RegisteredFlights FROM flights;
SELECT AVG(DepDelay) AS DepartureDelay, AVG(ArrDelay) AS ArrivalDelay, Origin FROM flights GROUP BY origin;
SELECT AVG(ArrDelay) AS ArrivalDelay, Origin, colMonth AS Month FROM flights GROUP BY origin, ColMonth;
SELECT AVG(ArrDelay) AS ArrivalDelay, colMonth, City FROM flights INNER JOIN usairports ON usairports.IATA = flights.Origin GROUP BY city ORDER BY Origin;
SELECT UniqueCarrier, COUNT(*) AS CancelledFlights FROM flights WHERE Cancelled >0 GROUP BY UniqueCarrier, Cancelled ORDER BY CancelledFlights DESC; 
SELECT distance, flightID FROM flights ORDER BY distance DESC LIMIT 10;
SELECT AVG(ArrDelay) AS Delay, Description AS Airline FROM flights AS fl INNER JOIN carriers AS cr ON cr.CarrierCode = fl.UniqueCarrier GROUP BY UniqueCarrier HAVING Delay >10;  