-- A script that prepares a MySQL server AirBnB_clone_v2
-- SQL Statement to setup database
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- SQL Statement to create new user hbnb_dev
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- SQL Statement to grant basic usage
GRANT USAGE ON *.* TO 'hbnb_dev'@'localhost';

-- SQL Statement to grant select privelges on performance shema
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost';

-- SQL Statement to grant all privileges on hbnbh_dev
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost';
