CREATE TABLE users(
					id INT NOT NULL PRIMARY KEY ,
					name varchar(50),
					email_id varchar(50),
					password varchar(50),
					mobilenumber int,
					created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
					updated_at DATETIME DEFAULT CURRENT_TIMESTAMP );

CREATE TABLE forget_password(
							id INT NOT NULL PRIMARY KEY,
							userid INT FOREIGN KEY REFERENCES users(id) ON UPDATE CASCADE,
							new_password varchar(50),
							confirm_password varchar(50),
							created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
							updated_at DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE recipe_contains(
					id INT NOT NULL PRIMARY KEY,
					recipe_contid INT FOREIGN KEY REFERENCES users(id) ON UPDATE CASCADE,
					banner_image varbinary(max),
					title varchar(50),
					description varchar(50),
					ingredients varchar(50),
					process varchar(50),
					link varchar(2083),
					created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
					updated_at DATETIME DEFAULT CURRENT_TIMESTAMP );


INSERT INTO users(id,name,email_id,password,mobilenumber) VALUES
	(3,'SHAMIT','SHAMIT@ABC.COM',1234,82000)

UPDATE recipe_contains SET title='new' where id=5;

INSERT INTO recipe_contains(id,recipe_contid,title,description,ingredients,process,link) VALUES
	(5,1,'recipe','almaldm','ssdkd,skdk','andkjnmc','google.com')

SELECT * FROM users;
SELECT * FROM recipe_contains;


