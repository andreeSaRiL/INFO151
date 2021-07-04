SELECT A.PassengerID AS "A_PassengerID", B.PassengerID AS "B_PassengerID", 
A.date, A.RouteNum AS "Route", A.TIMEIN AS "A_TIMEIN", A.TIMEOUT AS "A_TIMEOUT", B.TIMEIN AS "B_TIMEIN"
FROM Transport A, Transport B 
ON A.BusID = B.BusID AND A.Date = B.Date AND "B_TIMEIN" <= "A_TIMEOUT" AND "B_TIMEIN" >= "A_TIMEIN"
WHERE A.PassengerID <> B.PassengerID