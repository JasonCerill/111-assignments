


CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40)NOT NULL,
    hobbies TEXT,
    activate BOOLEAN NOT NULL DEFAULT 1

);


INSERT INTO user(first_name, last_name, hobbies)  VALUES("Jason", "Cerilli", "Ping Pong");

SELECT * from user;



INSERT INTO user(first_name, last_name, hobbies)   VALUES("Eric", "Cartman", "being a dick");



CREATE TABLE vehicle_type(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(64)

);


CREATE TABLE vehicle(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(45) NOT NULL,
    license_plate VARCHAR(45) NOT NULL,
    color VARCHAR(45),
    brand VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    active BOOLEAN DEFAULT 1,
    user_id INTEGER NOT NULL,
    v_type VARCHAR(45) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
    FOREIGN KEY (v_type) REFERENCES vehicle_type(id) 
);

INSERT INTO vehicle_type (description) VALUES("motorcycle");
INSERT INTO vehicle_type (description) VALUES("car");
INSERT INTO vehicle_type (description) VALUES("truck");
INSERT INTO vehicle_type (description) VALUES("SUV");

INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "red",
    "Hello",
    1,
    1,
    "honda",
    "civic"

);


INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "red",
    "Hello",
    3,
    5,
    "honda",
    "civic"

);


INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "red",
    "Hello",
    1,
    4,
    "hinhgam",
    "jacktons"

);



INSERT INTO vehicle (
    color, 
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "yellow",
    "772747",
    1,
    1,
    "mercedes",
    "sprinter"

);


SELECT user.last_name,
       user.first_name,
       user.hobbies,
       user.active,
       vehicle.license_plate,
       vehicle.color,
       vehicle_type.description,
       vehicle.brand,
       vehicle.model

FROM user
INNER JOIN vehicle ON user.id= vehicle.user_id
INNER JOIN vehicle_type ON vehicle.v_type = vehicle_type.id; 