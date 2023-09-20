-- A script that prepares a MySQL server AirBnB_clone_v2
-- SQL Statement to setup database
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- SQL Statement to create new user hbnb_test
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost'
IDENTIFIED BY 'hbnb_test_pwd';

-- SQL Statement to grant basic usage
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';

-- SQL Statement to grant select privelges on performance shema
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';

-- SQL Statement to grant all privileges on hbnbh_test
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost';
