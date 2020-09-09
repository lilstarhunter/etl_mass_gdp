CREATE TABLE gdp(
	id serial PRIMARY KEY,
	year VARCHAR(4) NOT NULL,
	country_code VARCHAR(3) NOT NULL,
	country_name VARCHAR NOT NULL,
	gdp numeric
);

CREATE TABLE mass_protest(
	id serial PRIMARY KEY,
	country VARCHAR NOT NULL,
	year VARCHAR(4) NOT NULL,
	protest int NOT NULL
);