USE pushpast;

-- Account Table
CREATE TABLE IF NOT EXISTS account(
a_id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(50),
password VARCHAR(20),
isactive BOOLEAN,
created_date DATETIME,
modified_date DATETIME
);

-- Users Table
CREATE TABLE IF NOT EXISTS user(
    u_id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    dob DATE,
    age INT,
    height DECIMAL,
    weight DECIMAL,
    acc_id INT,
    FOREIGN KEY (acc_id) REFERENCES account(a_id)
)