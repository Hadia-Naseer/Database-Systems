CREATE DATABASE book_store;
CREATE TABLE Books(book_id INT PRIMARY KEY,title VARCHAR(50) NOT NULL
 ,genre VARCHAR(50) NOT NULL ,price INT NOT NULL);
 CREATE TABLE Authors(author_id INT PRIMARY KEY,name VARCHAR(50) NOT NULL ,country VARCHAR(50)NOT NULL );
 CREATE TABLE Sales (sales_id INT PRIMARY KEY ,book_id INT ,FOREIGN KEY(book_id) REFERENCES Books(book_id),
 quantities INT NOT NULL);
 INSERT INTO Books(book_id ,title ,genre  ,price)
 values(425366,'DATABASE','Course book',1700),
 (52637,'peerekamil','fiction',1200),(42653,'harry potter','fiction',17000);
 INSERT INTO Authors(author_id ,name ,country  )
 values(526363,'m morris','america'),(62773,'umera ahmed','Pakistan'),(62728,'robert ','america');

 Insert into Sales (sales_id  ,book_id ,quantities )
 VALUES(6533,425366,77),(62838,52637,88),(7818238,42653,1700);

 SELECT* FROM Books;
 SELECT*FROM Authors;
 USE book_store;
 SELECT title FROM Books;
 SELECT title FROM Books
 WHERE genre='fiction';
 SELECT name FROM authors;
 INSERT INTO Books(title)
 VALUES('HALIM');

 DELETE  FROM BOOKS
 WHERE title='harry potter';
 DELETE FROM Authors
 WHERE author_id =62773;
 SELECT* FROM Sales
 WHERE sales_id=7818238;