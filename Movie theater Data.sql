-- Movies Data
insert into movies2(
	movie_id,
	movie_name,
	movie_rating
)VALUES(
	15152,
	'Howls Moving Castle',
	'PG'	
);

insert into movies2(
	movie_id,
	movie_name,
	movie_rating
)VALUES(
	25895,
	'Spirited Away',
	'PG'
);

-- Theater Data
insert into theater2(
	theater_id,
	theater_capacity,
	movie_id
)VALUES(
	28977,
	250,
	15152
);

insert into theater2(
	theater_id,
	theater_capacity,
	movie_id
)VALUES(
	24789,
	250,
	25895
);

-- Concessions Data
insert into concessions2(
	item_id,
	amount,
	prod_name
)VALUES(
	25894,
	150,
	'Sour Punch Straws'
);

insert into concessions2(
	item_id,
	amount,
	prod_name
)VALUES(
	14987,
	150,
	'Icee'
);

-- Showing Data
insert into showing2(
	showing_time,
	theater_id,
	movie_id
)VALUES(
	'230PM',
	24789,
	15152
);

insert into showing2(
	showing_time,
	theater_id,
	movie_id
)VALUES(
	'4PM',
	28977,
	25895
);


-- Tickets Data
insert into tickets2(
	ticket_id,
	movie_id,
	theater_id,
	showing_time
)VALUES(
	248457,
	25895,
	28977,
	'4PM'
);

insert into tickets2(
	ticket_id,
	movie_id,
	theater_id,
	showing_time
)VALUES(
	248975,
	15152,
	24789,
	'230PM'
);

-- Customers Data
insert into customers2(
	customer_id,
	first_name,
	last_name,
	ticket_id,
	movie_id,
	item_id
)VALUES(
	28759,
	'Sebastian',
	'Keb',
	248457,
	25895,
	25894
);

insert into customers2(
	customer_id,
	first_name,
	last_name,
	ticket_id,
	movie_id,
	item_id
)VALUES(
	27654,
	'Juniper',
	'Keb',
	248975,
	15152,
	14987
);

update customers2 
set item_id = 25894
where item_id = 14987;