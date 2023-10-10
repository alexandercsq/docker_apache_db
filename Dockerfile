version: '3'

services:
  web:
    image: php:7.4-apache
    volumes:
      - ./html:/var/www/html
    ports:
      - "8080:80"
    depends_on:
      - db
    environment:
      MYSQL_HOST: db

  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword
      MYSQL_DATABASE: mydb
      MYSQL_USER: user
      MYSQL_PASSWORD: password
    volumes:
      - db_data:/var/lib/mysql

volumes:
  db_data: $(pwd):mysql
