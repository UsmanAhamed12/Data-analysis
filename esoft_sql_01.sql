CREATE DATABASE E;

USE E

CREATE TABLE A(
	indexid INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
    )
    
ALTER TABLE A
ADD gender VARCHAR(25); 

ALTER TABLE A
DROP COLUMN gender;

CREATE TABLE B_NOT_NULL(
	indexid INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
)

CREATE TABLE C_UNIQUE(
	indexid INT UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
    )


CREATE TABLE D_PRIMARYKEY(
	indexid INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
    )


CREATE TABLE E_FOREIGNKEY(
	orderid INT NOT NULL PRIMARY KEY,
    items VARCHAR(25),
    pid INT FOREIGN KEY REFERENCES D_PRIMARYKEY(indexid)
    );


#sql foreign key on alter table
#SQL FOREIGN KEY ON ALTER TABLE

ALTER TABLE D_PRIMARYKEY
ADD FOREIGN KEY (age) REFERENCES E_FOREIGNKEY(orderid);


CREATE TABLE F_CHECK(
	inedexid INT NOT NULL PRIMARY KEY,
    firdt_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50)
    );
    
ALTER TABLE D_PRIMARYKEY
ADD CHECK (18 <age> 45);
    
CREATE TABLE G_IDENTITY(
	indexid INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
    );
    
    
CREATE VIEW view_name AS
SELECT first_name,last_name
FROM G_IDENTITY
WHERE age >= 18;


SELECT * FROM view_name;

DROP VIEW view_name;





