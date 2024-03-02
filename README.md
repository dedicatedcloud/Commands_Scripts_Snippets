# Commands
Common Commands
<details>
  <summary>Install LAMP on Apache Commands</summary>
  ```
sudo apt update && sudo apt -y upgrade
```
```
sudo apt -y install apache2
```
```
sudo ufw app list
```
```
sudo ufw allow in "Apache"
```
```
sudo apt -y install mysql-server
```
```
sudo mysql
```
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```
```
sudo mysql_secure_installation
```
```
sudo apt -y install php libapache2-mod-php php-mysql bcmath bz2 Core ctype curl date dom exif fileinfo filter ftp gd hash iconv imagick json libxml mbstring mysqli mysqlnd openssl   PDO pdo_mysql pdo_sqlite Phar posix readline Reflection session SimpleXML SPL sqlite3 standard tokenizer wddx xml xmlreader xmlwriter xsl zip zlib

```
```
sudo mkdir /var/www/your_domain
```
```
sudo chown -R $USER:$USER /var/www/your_domain
```
```
sudo nano /etc/apache2/sites-available/your_domain.conf
```
```
<VirtualHost *:80>
    ServerName your_domain
    ServerAlias www.your_domain
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/your_domain
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
```
sudo a2ensite your_domain
```
```
sudo a2dissite 000-default
```
```
sudo apache2ctl configtest
```
```
sudo systemctl reload apache2
```
```
nano /var/www/your_domain/index.html
```
```
<html>
  <head>
    <title>your_domain website</title>
  </head>
  <body>
    <h1>Hello World!</h1>

    <p>This is the landing page of <strong>your_domain</strong>.</p>
  </body>
</html>
```
```
CREATE DATABASE example_database;
```
```
CREATE USER 'example_user'@'%' IDENTIFIED BY 'password';
```
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```
```
GRANT ALL ON example_database.* TO 'example_user'@'%';
```

</details>
