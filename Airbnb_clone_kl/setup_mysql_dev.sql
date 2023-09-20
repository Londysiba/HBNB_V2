-- a script that prepares the MYSQL Server
-- sets up the database
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- creates new user hbnb_dev in the database
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- grant basic usage to the database
GRANT USAGE ON *.* TO 'hbnb_dev'@'localhost';

-- grant select privelges on performance shema in the database
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost';

-- grant all privileges on hbnbh_dev database
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost';
