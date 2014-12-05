DROP TABLE IF EXISTS growls;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	password varchar(100) NOT NULL
);

CREATE TABLE growls (
	id SERIAL PRIMARY KEY,
	growls varchar(142) NOT NULL,
	user_id integer NOT NULL
);

