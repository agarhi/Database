Create table okddb.user (userid INT AUTO_INCREMENT, name varchar(10), password varchar(10), PRIMARY KEY (userid));
Create table okddb.phrase (phraseid INT AUTO_INCREMENT, userid int(10), content varchar(100), created DATE, PRIMARY KEY (phraseid), FOREIGN KEY fk_user(userid) REFERENCES user(userid));
Create user "test" identified by "test";
grant select, insert, update, delete on okddb.user to test;
grant select, insert, update, delete on okddb.phrase to test;
Insert into okddb.user (name,password) values ("Asif","asif");

