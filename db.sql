CREATE TABLE vehicle (
id INT AUTO_INCREMENT, 
brand VARCHAR (15) ,
model VARCHAR (15) ,
number_plate VARCHAR(50) ,
PRIMARY KEY (id)

);

CREATE TABLE vehicle_type(
id INT AUTO_INCREMENT,
v_type VARCHAR (50) ,
PRIMARY KEY (id)
);


CREATE TABLE registration(
id INT AUTO_INCREMENT,
odo INT NOT NULL,
reg_date DATE NOT NULL,
reg_expiry DATE NOT NULL,
service DATE NOT NULL,
extinguisher_expiry DATE NOT NULL, 
vehicle INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (vehicle) REFERENCES vehicle(id)
);

CREATE TABLE driver(
id INT NOT NULL AUTO_INCREMENT,
name1 VARCHAR (25) NOT NULL,
surname VARCHAR (25) NOT NULL,
phone_number VARCHAR (9),
vehicle INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(vehicle) REFERENCES vehicle(id)
);

/
INSERT INTO vehicle(brand,model,number_plate)
VALUES ('Alfa Romeo', 'Giulietta', 'K81-0-367');

INSERT INTO vehicle_type(v_type)
VALUES ('Car');

INSERT INTO driver(name1,surname,phone_number,vehicle)
VALUES ('Buzz', 'Lightyear', '061887996','1');

INSERT INTO registration(odo,reg_date,reg_expiry,service,extinguisher_expiry,vehicle)
VALUES ('15777', '2020-03-30', '2021-03-30', '2020-04-30', '2025-12-15', '1');





SELECT registration.reg_date, registration.reg_expiry, registration.service, vehicle.brand, vehicle.model, vehicle.number_plate AS 'Vehicle type'
FROM registration
INNER JOIN vehicle ON registration.vehicle = vehicle.id
INNER JOIN vehicle_type on vehicle_type.v_type = vehicle_type.id;



INSERT INTO vehicle(brand,model,number_plate)
VALUES('Alfa Romeo', 'Mito', 'E59-J-262');

SELECT vehicle.id, vehicle.brand, vehicle.model, vehicle.number_plate AS 'Vehicle type'
FROM vehicle
JOIN  vehicle_type ON vehicle_type.v_type = vehicle_type.id;

SELECT * FROM registration;
INSERT INTO registration(odo,reg_date,reg_expiry,service,extinguisher_expiry,vehicle)
VALUES (25541,'2019-12-25','2020-12-25','2019-12-20','2025-10-12',2) ;

SELECT driver.id AS 'Driver ID', vehicle.id AS 'Vehicle ID' 
FROM DRIVER
JOIN vehicle ON driver.vehicle = vehicle.id
JOIN vehicle_type ON vehicle = vehicle_type.id;



INSERT INTO driver(name1, surname, phone_number,vehicle)
VALUES('Hai', 'Allan','061577997', 2);
