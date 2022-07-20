
CREATE TABLE Books_hs (
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INTEGER
),

CREATE TABLE Users_hs (
    Id INT PRIMARY KEY,
    F_name TEXT,
    L_name TEXT,
    Email TEXT
)
ALTER TABLE Users_hs
MODIFY COLUMN Email VARCHAR(200) UNIQUE NOT NULL;

CREATE TABLE Checkout_hs (
    Id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    checkout_date TEXT,
    return_date DATETIME,
    FOREIGN KEY (book_id) REFERENCES
    Books_hs(Id),
    FOREIGN KEY (user_id) REFERENCES
    Users_hs(Id)
)

INSERT INTO Books_hs (id, title, genre, author)
VALUES (1, "The Old Man and The Sea", "Fiction", "Ernest Hemingway" )

SELECT * FROM Books_hs

UPDATE Books_hs
SET QTY = 1000
WHERE id = 1

INSERT INTO Books_hs
VALUES
(2, "Tuesday with Maury", "Fiction", "Mitch Albom", 2000),
(3, "Rich Dad Poor Dad", "Self Help", "Robert Kiyosaki", 200),
(4, "Tales of 2 Cities", "Fiction", "Charles Dickens", 1 )

SELECT Title 
FROM Books_hs
WHERE Genre = 'Fiction'

SELECT Title
FROM Books_hs
WHERE Genre in ('Fiction', 'Self Help')


UPDATE Books_hs
SET QTY = 1000
WHERE id = 1