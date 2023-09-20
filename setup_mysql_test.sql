-- a script that prepares the MYSQL Server
-- sets up the database
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- creates new user hbnb_dev in the database
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost'
IDENTIFIED BY 'hbnb_test_pwd';

-- grant basic usage to the database
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';

-- grant select privelges on performance shema in the database
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';

-- grant all privileges on hbnbh_dev database
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost';
