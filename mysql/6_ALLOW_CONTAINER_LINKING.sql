use mysql;
GRANT ALL ON *.* to root@'localhost' IDENTIFIED BY 'root'; 
GRANT ALL ON *.* to root@'127.0.0.1' IDENTIFIED BY 'your-root-password';
FLUSH PRIVILEGES; 
