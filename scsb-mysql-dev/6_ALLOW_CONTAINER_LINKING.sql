use mysql;
GRANT ALL ON *.* to etl@'%' IDENTIFIED BY 'etl', recap@'%' IDENTIFIED BY 'recap'; 
FLUSH PRIVILEGES;
