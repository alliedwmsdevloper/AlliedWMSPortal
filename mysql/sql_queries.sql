CREATE AlliedWMSDB;
USE AlliedWMSDB;

create table record (

	username varchar(45) NOT NULL,
	password varchar(45) NOT NULL,
       accountnumber  int(7) NOT NULL,
        zipcode  int(5) NOT NULL,
	PRIMARY KEY (username)
);


INSERT INTO `BankingDB`.`record` (`username`, `password`, `accountnumber`, `zipcode`) VALUES ('Alex', 'Wang', '7898061', '20148');
INSERT INTO `BankingDB`.`record` (`username`, `password`, `accountnumber`, `zipcode`) VALUES ('Andrew', 'Masters', '7898062', '20149');


create table customer(

firstname varchar(45) NOT NULL,
lastname varchar(45) NOT NULL,
age  int(4) NOT NULL,
city varchar(45) NOT NULL,
state varchar(45) NOT NULL,
company varchar(45) NOT NULL,
zipcode  int(5) NOT NULL,
PRIMARY KEY (firstname)
);











