-- DROP TABLE IF EXISTS customer CASCADE;
-- CREATE TABLE customer(
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(100),
--     last_name VARCHAR(100),
--     email VARCHAR(100),
--     phone_number VARCHAR(13)
-- );

-- DROP TABLE IF EXISTS staff CASCADE;
-- CREATE TABLE staff(
--     staff_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(100),
--     last_name VARCHAR(100),
--     email VARCHAR(100),
--     phone_number VARCHAR(13)
-- );

-- DROP TABLE IF EXISTS movie CASCADE;
-- CREATE TABLE movie(
--     movie_id SERIAL PRIMARY KEY,
--     title VARCHAR(100),
--     genre VARCHAR(50),
--     rating VARCHAR(50)
-- );

-- DROP TABLE IF EXISTS ticket CASCADE;
-- CREATE TABLE ticket(
--     ticket_id SERIAL PRIMARY KEY,
--     price INTEGER NOT NULL,
--     ticket_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
--     ticket_type VARCHAR(50),
--     customer_id INTEGER NOT NULL,
--     staff_id INTEGER NOT NULL,
--     movie_id INTEGER NOT NULL,
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
--     FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
--     FOREIGN KEY(movie_id) REFERENCES movie(movie_id) 
-- );

-- DROP TABLE IF EXISTS concession CASCADE;
-- CREATE TABLE concession(
--     concession_id SERIAL PRIMARY KEY,
--     food_item VARCHAR(100),
--     food_desc TEXT,
--     price INTEGER NOT NULL
-- );

-- DROP TABLE IF EXISTS actor CASCADE;
-- CREATE TABLE actor(
--     actor_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(100),
--     last_name VARCHAR(100),
--     age INTEGER NOT NULL
-- );

-- DROP TABLE IF EXISTS customer_concession CASCADE;
-- CREATE TABLE customer_concession(
--     customer_id INTEGER NOT NULL,
--     concession_id INTEGER NOT NULL,
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
--     FOREIGN KEY(concession_id) REFERENCES concession(concession_id)
-- );

-- DROP TABLE IF EXISTS movie_actor CASCADE;
-- CREATE TABLE movie_actor(
--     movie_id INTEGER NOT NULL,
--     actor_id INTEGER NOT NULL,
--     FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
--     FOREIGN KEY(actor_id) REFERENCES actor(actor_id)
-- );


