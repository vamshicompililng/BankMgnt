

CREATE DATABASE bankmanagementsystem;
USE bankmanagementsystem;


CREATE TABLE signup (
    formno VARCHAR(20),
    name VARCHAR(50),
    fname VARCHAR(50),
    dob VARCHAR(20),
    gender VARCHAR(10),
    email VARCHAR(50),
    marital VARCHAR(15),
    address VARCHAR(100),
    city VARCHAR(30),
    pincode VARCHAR(10),
    state VARCHAR(30)
);

CREATE TABLE signup2 (
    formno VARCHAR(20),
    religion VARCHAR(20),
    category VARCHAR(20),
    income VARCHAR(30),
    education VARCHAR(30),
    occupation VARCHAR(30),
    pan VARCHAR(20),
    aadhar VARCHAR(20),
    scitizen VARCHAR(5),
    eaccount VARCHAR(5)
);

CREATE TABLE signup3 (
    formno VARCHAR(20),
    account_type VARCHAR(50),
    card_number VARCHAR(20),
    pin VARCHAR(10),
    services VARCHAR(200)
);


USE bankmanagementsystem;
ALTER TABLE signup MODIFY marital VARCHAR(30);

USE bankmanagementsystem;

ALTER TABLE signup2 MODIFY eAccount VARCHAR(5);
ALTER TABLE signup2 MODIFY sCitizen VARCHAR(5);


DESCRIBE signup;
USE bankmanagementsystem;
CREATE TABLE login (
    formno VARCHAR(20),
    card_number VARCHAR(20),
    pin VARCHAR(10)
);
ALTER TABLE login 
ADD COLUMN usertype ENUM('Customer', 'Employee') DEFAULT 'Customer';

ALTER TABLE login ADD COLUMN aadhar VARCHAR(20);



USE bankmanagementsystem;

INSERT INTO login (formno, card_number, pin, usertype) 
VALUES ('EMP001', '9999888877776666', '1234', 'Employee');



USE bankmanagementsystem;

CREATE TABLE bank (
    pin VARCHAR(10),
    date DATETIME,
    type VARCHAR(20),
    amount VARCHAR(20)
);



CREATE TABLE user_access (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aadhar VARCHAR(20) UNIQUE NOT NULL,
    pan VARCHAR(20) NOT NULL,
    role ENUM('Customer', 'Employee') NOT NULL,
    access_granted BOOLEAN DEFAULT TRUE
);

CREATE TABLE signup_requests (
    formno VARCHAR(20),
    aadhar VARCHAR(20),
    pan VARCHAR(20),
    status ENUM('PENDING', 'APPROVED', 'DENIED') DEFAULT 'PENDING',
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE account (
    formno VARCHAR(20),
    account_type VARCHAR(50)
);

SET SQL_SAFE_UPDATES = 0;

UPDATE signup_requests SET status = 'APPROVED' WHERE formno = '6324';
UPDATE signup_requests SET status = 'DENIED' WHERE formno = '2547';


select * from login;
SELECT * FROM signup_requests;
