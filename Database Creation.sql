create database food_wastage_management;

use food_wastage_management;


CREATE TABLE providers (
    Provider_ID INT PRIMARY KEY auto_increment,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Address VARCHAR(200),
    City VARCHAR(50),
    Contact VARCHAR(50)
);


CREATE TABLE receivers (
    Receiver_ID INT PRIMARY KEY auto_increment,
    Name VARCHAR(100),
    Type VARCHAR(50),
    City VARCHAR(50),
    Contact VARCHAR(50)
);



CREATE TABLE food_listings (
    Food_ID INT PRIMARY KEY auto_increment,
    Food_Name VARCHAR(100),
    Quantity INT,
    Expiry_Date DATE,
    Provider_ID INT,
    Provider_Type VARCHAR(50),
    Location VARCHAR(50),
    Food_Type VARCHAR(50),
    Meal_Type VARCHAR(50),
    FOREIGN KEY (Provider_ID) REFERENCES providers(Provider_ID)
);



CREATE TABLE claims (
    Claim_ID INT PRIMARY KEY auto_increment,
    Food_ID INT,
    Receiver_ID INT,
    Status VARCHAR(50),
    Timestamp DATETIME,
    FOREIGN KEY (Food_ID) REFERENCES food_listings(Food_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES receivers(Receiver_ID)
);