SELECT PSNGR.Date, PSNGR."A_PassengerID", PSNGR."B_PassengerID", count(PSNGR.A_passengerID || PSNGR.B_passengerID) AS "Number of Times Contacted"
FROM(
		SELECT T1.PassengerID AS "A_passengerID", T2.PassengerID AS "B_passengerID", T1.Date, 
		T1.RouteNum AS "Route", T1.TIMEIN AS "A_TimeIN", T1.TIMEOUT AS "A_TimeOut", T2.TIMEIN AS "B_TimeIN"
		FROM Transport T1 JOIN Transport T2
		ON T1.date = T2.date
		WHERE(T1.TIMEIN < T2.TIMEIN AND T2.TIMEIN < T1.TIMEOUT) AND T1.Date = T2.date AND T1.PassengerID != T2.PassengerID) PSNGR
GROUP BY PSNGR.date, PSNGR."A_PassengerID", PSNGR."B_PassengerID";	