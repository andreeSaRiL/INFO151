CREATE TABLE BusReg(
							'BusID' INTEGER PRIMARY KEY AUTOINCREMENT,
							'RegNum' TEXT,
							'WOF' TEXT);
							
CREATE TABLE Passenger(
							'PassengerID' INTEGER,
							'PassengerFName' TEXT,
							'PassengerLName' TEXT,
							'Email' TEXT,
							'Mobile' TEXT, 
							PRIMARY KEY("PassengerID"));

CREATE TABLE Transport(
							'BusID' INTEGER,
							'RouteNum' INTEGER,
							'Date' TEXT,
							'PassengerID' INTEGER,
							'TIMEIN' TEXT,
							'TIMEOUT' TEXT,
							PRIMARY KEY('BusID','Date', 'PassengerID', 'TIMEIN')
							FOREIGN KEY('BusID') REFERENCES BusReg('BusID'),
							FOREIGN KEY('PassengerID') REFERENCES Passenger('PassengerID'));
							
--4b) Transport table should be created last, as it used FOREIGN KEYS which needs REFERENCES to the other 2 tables. 
--4c) There is no relationship between the BusReg table and the Passenger table. 
--4d) One PRIMARY Key with 4 attributes, Two FOREIGN Keys.
							