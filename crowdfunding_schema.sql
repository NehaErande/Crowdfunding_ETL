DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Subcategory;

CREATE TABLE Campaign(
	cf_id INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL
);

CREATE TABLE Contacts(
	contact_id INTEGER PRIMARY KEY NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL	
);

CREATE TABLE Category(
	category_id VARCHAR PRIMARY KEY NOT NULL,
	category VARCHAR NOT NULL
);

CREATE TABLE Subcategory(
	subcategory_id VARCHAR PRIMARY KEY NOT NULL,
	subcategory VARCHAR NOT NULL
);


ALTER TABLE Campaign ADD FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id);
ALTER TABLE Campaign ADD FOREIGN KEY (category_id) REFERENCES Category(category_id);
ALTER TABLE Campaign ADD FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id);

SELECT * FROM Campaign
SELECT * FROM Contacts
SELECT * FROM Category
SELECT * FROM Subcategory