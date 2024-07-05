-- Active: 1718014195368@@127.0.0.1@3306@huxn
-- SELECT SUBSTRING("Hello World", 7, 5);

-- SELECT SUBSTRING("Tirth", 5);
-- SELECT * FROM USER;
-- SELECT SUBSTRING(Name, 2) FROM USER;
-- SELECT SUBSTRING(Name, 2, 7) FROM USER;
-- SELECT SUBSTRING("HuXn", 3);
-- it will count till 3 but will not include 3 and will ignore spaces if any
-- SELECT REPLACE("Hello, World", "Hello,", "Bye..");

-- SELECT REPLACE(Name,"John", "John Hopkins") FROM USER;
-- SELECT REVERSE("Hello world");
-- SELECT REVERSE("Tirth Pandya");

-- SELECT CHAR_LENGTH("Hello");
-- SELECT CHAR_LENGTH(Name) FROM USER;


-- SELECT Name FROM USER ORDER BY Name ASC;
-- SELECT Name FROM USER ORDER BY NAME DESC;
-- SELECT Name FROM USER ORDER BY LENGTH(Name);


-- SELECT Name FROM USER LIMIT 5;
-- SELECT * FROM USER;


-- wildcards 
-- % wildcards matches zero or more charecters
-- _ wildcards matches exactly one character

-- SELECT * FROM USER 
-- -- WHERE Name LIKE "%J%";
-- -- j naam ka banda dhunke dega
-- WHERE Name LIKE "_u";
-- _ matlab skip aur ek hi character lega and result dega






-- SELECT COUNT(*) FROM USER;
-- SELECT COUNT(Name) FROM USER;

-- SELECT COUNT(*) FROM USER
-- WHERE Name = "HuXn";

-- SELECT MIN(Name) FROM USER;
-- SELECT MAX(Name) FROM USER;


-- SELECT AVG(Name) FROM USER;
-- lmao

-- SELECT SUM(Name) FROM USER;


-- Lets say you wanna find out the average of users grouped by their first name.

-- SELECT Name , AVG(Name) AS avg_name
-- FROM USER
-- GROUP BY Name;


-- SELECT Name
-- FROM USER
-- WHERE Name != "HuXn";
-- exclude huxn uske alawa saare naam dedo table mese


SELECT * FROM USER;
SELECT PASSWORD
FROM USER
WHERE Password != "HONDA";

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO Users (first_name, last_name, email, password, age)
VALUES
('Jane', 'Doe', 'jane@example.com', 'password4', 10),
('Michael', 'Brown', 'michael@example.com', 'password5', 20),
('Emma', 'Johnson', 'emma1@example.com', 'password6', 35),
('William', 'Davis', 'william@example.com', 'password7', 30),
('Olivia', 'Martinez', 'olivia@example.com', 'password8', 35),
('James', 'Miller', 'james@example.com', 'password9', 35),
('Sophia', 'Garcia', 'sophia@example.com', 'password10', 40),
('Benjamin', 'Rodriguez', 'benjamin@example.com', 'password11', 42),
('Amelia', 'Lopez', 'amelia@example.com', 'password12', 45),
('Elijah', 'Lee', 'elijah@example.com', 'password13', 50),
('Charlotte', 'Harris', 'charlotte@example.com', 'password14', 60),
('David', 'Clark', 'david@example.com', 'password15', 70),
('Mia', 'Lewis', 'mia@example.com', 'password16', 80),
('Alexander', 'Allen', 'alexander@example.com', 'password17', 15),
('Isabella', 'Young', 'isabella@example.com', 'password18', 18),
('Ethan', 'Wright', 'ethan@example.com', 'password19', 22),
('Ava', 'King', 'ava@example.com', 'password20', 24),
('Noah', 'Scott', 'noah@example.com', 'password21', 21),
('Liam', 'Green', 'liam@example.com', 'password22', 34),
('Emma', 'Baker', 'emma2@example.com', 'password23', 31);
-- SELECT * FROM USERS;




-- SELECT *
-- FROM users
-- -- WHERE age> 50;
-- -- WHERE age<18;
-- WHERE LENGTH(first_name) > 5;





-- SELECT *
-- FROM USERS
-- -- WHERE age < 50;
-- -- WHERE age < 18;
-- WHERE LENGTH(first_name) < 5;





-- SELECT *
-- FROM USERS 
-- -- WHERE age < 50 AND LENGTH(first_name) < 5;
-- WHERE first_name = "Emma" AND last_name = "Johnson";








-- SELECT *
-- FROM users
-- WHERE age  BETWEEN 18 AND 30;
-- Between new operator
-- WHERE age IN (25, 30, 35)
-- Between age 25, 30, 35
-- -- WHERE age < 10 OR age > 15;
-- WHERE first_name = "Emma" OR last_name = "Johnson";
-- WHERE first_name in ("Jane", "Emma", "Olivia");





-- SELECT first_name, age,
-- CASE 
--     WHEN AGE < 30 THEN "Young."  
--     WHEN AGE <= 40 THEN "Okaish."
--     WHEN AGE < 50 THEN "Senior."
--     ELSE  "LOl"
-- END AS age_group
-- FROM USERS;


CREATE TABLE SERIES(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    release_year INT,
    genre VARCHAR(50)
);

INSERT INTO SERIES(title, release_year, genre)
VALUES("Stranger thing", 2016, "Sceince friction"),
("Game of thrones", 2011, "Fanstasy"),
("Game of thrones", 2011, "Fantasy")


-- SELECT * FROM series;
CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_age INT,
    emp_name VARCHAR(100),
    emp_salary INT
);

INSERT INTO employee(emp_id,emp_age, emp_name, emp_salary)
VALUES(1,20, "HuXn", 20000.0)

SELECT * FROM employee;


-- altering the table final topic
ALTER TABLE employee 
DROP COLUMN emp_salary;
-- salary wala section remove ho gya.


ALTER TABLE employee
MODIFY COLUMN emp_name VARCHAR(225)
-- varchar ab 100 se 225 ho gya


ALTER TABLE employee
CHANGE COLUMN emp_name Name VARCHAR(50)
-- emp_name ab Name ho gya!!



-------------------------------------------------


-- foreign key:
-- label that connects one tables data to another tables data it ensures a value in one data exist in another tables data.

-- relationships in database because my SQL is a relational databse system
-- one to one
-- one record corresponds to exaclty one record in another table.
-- one to many
-- one recrod corresponds to multiple records in other tables.
-- many to many
-- 











CREATE TABLE task(
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    taske_name VARCHAR(100),
    profession VARCHAR(100),
    email VARCHAR(100),
    FOREIGN KEY (task_id) REFERENCES enginee (eng_id)
);

CREATE TABLE engineer(
    eng_id INT AUTO_INCREMENT PRIMARY KEY,
    eng_name VARCHAR(100),
    profession VARCHAR(100),
    email VARCHAR(100)
);


INSERT INTO engineer(eng_name, profession, email)
VALUES("HuXn", "Full stack UI/UX designer", "Huxnwebdev@gmail.com"),
("HuXn", "Full stack UI/UX designer", "Huxnwebdev@gmail.com"),
("FuXn", "AI/ML Engineer", "gamololol@gmail.com"),
("LolXn", "Software Engineer", "Huxnwebdev@gmail.com")




-- SELECT * FROM engineer;
INSERT INTO task(taske_name, profession, email)
VALUES("Figma", "Do something about it","vivvovme@gmail.com"),
("Sigma", "Do nothing about it","vidndeippqoeoicmmslxvme@gmail.com"),
("Ligment", "Do -- about it","vopwpwpqowpcndnvreubvefmacoancvme@gmail.com");








-- ------------------------CROSS JOIN
-- a cross join is a type of join opreation that combines earch row from one table with every row from another table, it essentialy creates a new result set containing combination of rows from the joined table.

-- SELECT * FROM engineer CROSS JOIN task;
-- SELECT * FROM engineer, task










-- ----------------------- INNER JOIN
-- an inner join selects that have matching values in both tables.


SELECT * FROM engineer
INNER JOIN task ON engineer.eng_id = task.task_id


-- can also be written as 
-- SELECT * FROM engineer e 
-- INNER JOIN task t ON e.eng_id = t.task_id








-- SELECT eng_name,  FROM engineer e
-- JOIN task t ON e.eng_id = t.task_id








-- LEFT JOIN
-- a left join returns all records from the lest side and the matched records from the right side.
-- if theres no match, the result is NULL from the right side.


SELECT * FROM engineer e 
LEFT JOIN task t ON e.eng_id = t.task_id


-- RIGHT JOIN
-- A right join returns all records from the right side and  the matched records from the right side.

SELECT * FROM engineer e 
RIGHT JOIN task t ON e.eng_id = t.task_id




CREATE TABLE final_movies(
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(50) NOT NULL,
    genre VARCHAR(100) NOT NULL
);


CREATE TABLE person(
    person_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(225),
    gender VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);




CREATE TABLE comment(
    comment_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    comment_content VARCHAR(100) NOT NULL,
    movie_id INT NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES final_movies (movie_id),
    FOREIGN KEY (person_id) REFERENCES person (person_id)
);



INSERT INTO final_movies(title, year,director, genre)
VALUES("The shawshank redemption", 1994, "Frank Dumb", "Drama"),
('The Godfather',1972,'Francis Ford Coppola','Crime'),
('The Godfather: Part II',1974,'Francis Ford Coppola','Crime'),
('The Dark Knight',2008,'Christopher Nolan','Action'),
('12 Angry Men',1957,'Sidney Lumet','Drama'),
('Schindler''s List',1993,'Steven Spielberg','Drama'),
('Pulp Fiction',1994,'Quentin Tarantino','Crime'),
('The Lord of the Rings: The Return of the King',2003,'Peter Jackson','Action'),
('The Good, the Bad and the Ugly',1966,'Sergio Leone','Western'),
('Fight Club',1999,'David Fincher','Drama');

-- SELECT * FROM final_movies;



INSERT INTO PERSON(name,age,email,gender,country)
VALUES ('Tom Hanks', 63, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Brad Pitt', 59, 'U7lZD@example.com', 'Male', 'United States'),
    ('Leonardo DiCaprio', 47, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Margot Robbie', 35, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Kate Winslet', 32, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Christian Bale', 45, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Heath Ledger', 49, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Gary Oldman', 51, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Tom Cruise', 47, 'Vx5uZ@example.com', 'Male', 'United States');




INSERT INTO PERSON(name,age,email,gender,country)
VALUES ('Tom Hanks', 63, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Brad Pitt', 59, 'U7lZD@example.com', 'Male', 'United States'),
    ('Leonardo DiCaprio', 47, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Margot Robbie', 35, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Kate Winslet', 32, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Christian Bale', 45, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Heath Ledger', 49, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Gary Oldman', 51, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Tom Cruise', 47, 'Vx5uZ@example.com', 'Male', 'United States');


INSERT INTO comment(movie_id, person_id,comment_content)
VALUES(1, 1, "I really like this one"),
(2, 2, "I really like this one"),
(3, 3, "I really like this one"),
(4, 4, "I really like this one"),
(5, 5, "I really like this one"),
(6, 6, "I really like this one"),
(7, 7, "I really like this one"),
(8, 8, "I really like this one"),
(9, 9, "I really like this one");


SELECT * FROM final_movies m 
RIGHT JOIN person p ON m.movie_id = p.person_id


DELETE FROM final_movies
WHERE title = "Fight Club"


SELECT * FROM final_movies 


DELETE FROM final_movies
WHERE title = "12 Angry Men"




CREATE TABLE commands(
    name VARCHAR(50),
    id INT AUTO_INCREMENT PRIMARY KEY,
    section VARCHAR(50)
);

INSERT INTO commands(name, section)
VALUES("Termin", "OBC"),
("HuXn", "Superior"),
("Sagar", "General"),
("Waganor", "BC"),
("Hawa", "Female")

SELECT * FROM commands

DELETE FROM commands
WHERE id = 6

DESC commands