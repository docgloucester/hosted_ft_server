CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON WORDPRESS.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '<yourpassword>';
