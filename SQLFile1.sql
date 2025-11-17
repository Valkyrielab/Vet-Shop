-- =========================
-- Store Table
-- =========================
CREATE TABLE Store (
    StoreID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

-- =========================
-- Dog Food Brands
-- =========================
CREATE TABLE RoyalCanin (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    SellByDate DATE
);

CREATE TABLE Montego (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    SellByDate DATE
);

CREATE TABLE UltraPet (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    SellByDate DATE
);

CREATE TABLE Hills (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    SellByDate DATE
);

CREATE TABLE VetBrand (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    SellByDate DATE
);

-- =========================
-- Accessories & Related
-- =========================
CREATE TABLE Accessories (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE BathTime (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Supplements (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Toys (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Leash (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Color VARCHAR(50),
    Material VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Collar (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Color VARCHAR(50),
    Material VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Bed (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Blankets (
    BarCode VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Size VARCHAR(50),
    Price DECIMAL(10,2),
    AccessoryBarCode VARCHAR(50),
    FOREIGN KEY (AccessoryBarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- =========================
-- Linking Store to Products
-- =========================
CREATE TABLE StoreDogFood (
    StoreID INT,
    BarCode VARCHAR(50),
    Brand VARCHAR(50),
    PRIMARY KEY (StoreID, BarCode),
    FOREIGN KEY (StoreID) REFERENCES Store(StoreID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (BarCode) REFERENCES RoyalCanin(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE StoreAccessories (
    StoreID INT,
    BarCode VARCHAR(50),
    PRIMARY KEY (StoreID, BarCode),
    FOREIGN KEY (StoreID) REFERENCES Store(StoreID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (BarCode) REFERENCES Accessories(BarCode)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

