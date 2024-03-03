# Commands
## How To Use Expanding Sections
<details>
  <summary>Expand Tricks</summary>
  # How to add a collapsible section in markdown
## 1. Example
<details>
  <summary>Click me</summary>

  ### Heading
  1. Foo
  2. Bar
     * Baz
     * Qux

  ### Some Javascript
  ```js
  function logSomething(something) {
    console.log('Something', something);
  }
  ```
</details>


## 2. Code/Markdown
````md
<details>
  <summary>Click me</summary>
  
  ### Heading
  1. Foo
  2. Bar
     * Baz
     * Qux

  ### Some Javascript
  ```js
  function logSomething(something) {
    console.log('Something', something);
  }
  ```
</details>
````

## 3. Tips & Tricks
Discover some handy customizations for your collapsible sections.

### 3.1 Expand by Default
To have a collapsible section expanded by default, simply include the 'open' attribute within the `<details>` tag:

<details open>
  <summary>Hello</summary>
  World!
</details>

```
<details open>
  <summary>Hello</summary>
  World!
</details>
```

### 3.2 Customize Clickable Text
You can modify the appearance of the clickable text by adding styling inside the `<summary>` tags:

<details>
  <summary><i>Wow, so fancy</i></summary>
  <b>WOW, SO BOLD</b>
</details>

```
<details>
  <summary><i>Wow, so fancy</i></summary>
  <b>WOW, SO BOLD</b>
</details>
```

### 3.3 Nested Collapsible Sections
NB: When including headings within collapsible sections, remember to add a new line after the `<summary>` tag.

<details>
<summary>Section A</summary>
<details>
<summary>Section A.B</summary>
<details>
<summary>Section A.B.C</summary>
<details>
<summary>Section A.B.C.D</summary>
  Done!
</details>
</details>
</details>
</details>

```
<details>
<summary>Section A</summary>
<details>
<summary>Section A.B</summary>
<details>
<summary>Section A.B.C</summary>
<details>
<summary>Section A.B.C.D</summary>
  Done!
</details>
</details>
</details>
</details>
```

## Troubleshooting
- If certain markdown or styling, such as `# My Title`, fails to render in the collapsible section, try adding a line break after the `</summary>` tag.
- If your section fails to render, it might be malformed. Consider copying the functional examples provided here and building from there!

  
</details>

### Commands for various tasks

<details>
  <summary>Php Extentions</summary>

  ```
sudo apt-get install -y php8.3-simplexml
sudo apt-get install -y php8.3-dom
sudo apt-get install -y php8.3-mbstring
sudo apt-get install -y php8.3-mbstring
sudo apt-get install -y php8.3-mb
sudo apt-get install -y php8.3-curl
sudo apt-get install -y php8.3-gd
sudo apt-get install -y php8.3-zip
sudo apt-get install -y php8.3-bcmath
sudo apt-get install -y php8.3-pdo_sqlite
sudo apt-get install -y php8.3-intl
sudo apt-get install -y php8.3-libxml 
sudo apt-get install -y php8.3-mbstring 
sudo apt-get install -y php8.3-mysqli 
sudo apt-get install -y php8.3-mysqlnd 
sudo apt-get install -y php8.3-openssl 
sudo apt-get install -y php8.3-PDO 
sudo apt-get install -y php8.3-pdo_mysql 
sudo apt-get install -y php8.3-pdo_sqlite
sudo apt-get install -y php8.3-sqlite
```
</details>

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
sudo apt -y install php libapache2-mod-php php-mysql bcmath bz2 Core ctype curl date dom exif fileinfo filter ftp gd hash iconv imagick json libxml mbstring mysqli mysqlnd openssl PDO pdo_mysql pdo_sqlite Phar posix readline Reflection session SimpleXML SPL sqlite3 standard tokenizer wddx xml xmlreader xmlwriter xsl zip zlib
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
