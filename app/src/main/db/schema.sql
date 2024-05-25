CREATE DATABASE bankSystem;
USE bankSystem;

-- CREATE TABLE signup(
--   form_no VARCHAR(30),
--   name VARCHAR(30),
--   father_name VARCHAR(30),
--   DB VARCHAR(30),
--   gender VARCHAR(30),
--   email VARCHAR(60),
--   marital_status VARCHAR(30),
--   address VARCHAR(60),
--   city VARCHAR(30),
--   pincode VARCHAR(30),
--   state VARCHAR(50)
-- );

CREATE TABLE bank (
    pin VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    transaction_type ENUM('Withdrawal', 'Deposit') NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (pin, date, transaction_type)
);

CREATE TABLE login (
    formno INT NOT NULL,
    cardno VARCHAR(16) NOT NULL,
    pin VARCHAR(10) NOT NULL,
    PRIMARY KEY (formno)
);

CREATE TABLE signup (
    formno INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    fname VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    PRIMARY KEY (formno)
);

CREATE TABLE signupthree (
    formno INT NOT NULL,
    atype VARCHAR(20) NOT NULL,
    cardno VARCHAR(16) NOT NULL,
    pin VARCHAR(10) NOT NULL,
    fac VARCHAR(50) NOT NULL,
    PRIMARY KEY (formno)
);

CREATE TABLE signuptwo (
    formno INT NOT NULL,
    rel VARCHAR(50) NOT NULL,
    cate VARCHAR(50) NOT NULL,
    inc DECIMAL(15, 2) NOT NULL,
    edu VARCHAR(50) NOT NULL,
    occ VARCHAR(50) NOT NULL,
    pan VARCHAR(10) NOT NULL,
    addhar VARCHAR(12) NOT NULL,
    scitizen ENUM('Yes', 'No') NOT NULL,
    eAccount ENUM('Yes', 'No') NOT NULL,
    PRIMARY KEY (formno)
);
