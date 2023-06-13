USE pushpast;


/* 
SYNTAX For Table CREATION 

-- Involves PK, FK
CREATE TABLE IF NOT EXISTS table_name (
    CN datatype Auto_INCREMENT PRIMARY KEY, 
    FCN datatype,
    FOREIGN KEY (FCN) REFERENCES foreigntablename (foreigntablePrimarykey)
)



*/

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
);

-- Activity Table 
CREATE TABLE IF NOT EXISTS activity(
    act_id INT AUTO_INCREMENT PRIMARY KEY,
    act_day VARCHAR(10),
    act_name VARCHAR(50),
    act_set INT,
    act_loc VARCHAR(20),
    act_type VARCHAR(20),
    act_equip VARCHAR(20),
    act_date DATE,
    userid INT,
    workoutid INT,
    FOREIGN KEY (userid) REFERENCES user(u_id),
    FOREIGN KEY (workoutid) REFERENCES workout(w_id)
);

-- Workout Table
CREATE TABLE IF NOT EXISTS workout(
    w_id INT AUTO_INCREMENT PRIMARY KEY,
    w_name VARCHAR(50),
    w_muscle VARCHAR(50)
);

-- Set Table
CREATE TABLE IF NOT EXISTS sets(
    s_id INT AUTO_INCREMENT PRIMARY KEY,
    s_no INT,
    s_count INT,
    s_weight DECIMAL,
    s_restime INT,
    s_date DATE,
    activityid INT,
    FOREIGN KEY (activityid) REFERENCES activity(a_id)
    
)