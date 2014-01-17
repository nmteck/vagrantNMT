create database if not exists books;
use books;

CREATE TABLE IF NOT EXISTS authors (id INT, name VARCHAR(20), email VARCHAR(20));

INSERT INTO authors (id,name,email) VALUES(1,"Vivek","xuz@abc.com");
INSERT INTO authors (id,name,email) VALUES(2,"Vivek","xuz@abc.com");
INSERT INTO authors (id,name,email) VALUES(3,"Vivek","xuz@abc.com");
