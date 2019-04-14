Create table okddb.user (id INT AUTO_INCREMENT, name varchar(10), PRIMARY KEY (id));
Create table okddb.phrase (id INT AUTO_INCREMENT, userid int(10), content varchar(100), created DATE, PRIMARY KEY (id), FOREIGN KEY fk_user(userid) REFERENCES user(id));
Create user "test" identified by "test";
grant select, insert, update, delete on okddb.user to test;
grant select, insert, update, delete on okddb.phrase to test;
Insert into user (name) values ("Asif");

