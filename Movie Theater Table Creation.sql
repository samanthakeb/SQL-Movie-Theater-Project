-- Movies table creation
create table movies2(
	movie_id SERIAL primary key,
	movie_name VARCHAR(150),
	movie_rating VARCHAR(10)
);

-- Theater table creation
create table theater2(
	theater_id SERIAL primary key,
	theater_capacity INTEGER,
	movie_id INTEGER,
	foreign key(movie_id) references movies2(movie_id)
);

-- Concessions table creation
create table concessions2(
	item_id SERIAL primary key,
	amount numeric(5,2),
	prod_name VARCHAR(100)
);

-- Showing table creation
create table showing2(
	showing_time VARCHAR(100) primary key,
	theater_id INTEGER,
	movie_id INTEGER,
	foreign key(theater_id) references theater2(theater_id),
	foreign key(movie_id) references movies2(movie_id)
);

-- Tickets table creation
create table tickets2(
	ticket_id SERIAL primary key,
	movie_id INTEGER,
	theater_id INTEGER,
	showing_time VARCHAR(100),
	foreign key(movie_id) references movies2(movie_id),
	foreign key(theater_id) references theater2(theater_id),
	foreign key(showing_time) references showing2(showing_time)
);

-- Customers table creation
create table customers2(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	ticket_id INTEGER,
	movie_id INTEGER,
	item_id INTEGER,
	foreign key(ticket_id) references tickets2(ticket_id),
	foreign key(movie_id) references movies2(movie_id),
	foreign key(item_id) references concessions2(item_id)
);
