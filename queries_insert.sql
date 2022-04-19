/*
Create a dummy `MediaType`
*/
INSERT INTO MediaType (Name)
VALUES ("Test Media 1");

/*
Create a new `Album` record with a name of "Boy" and an
ArtistId of 150. This ArtistId is for U2
*/
INSERT INTO Album (Title, ArtistId)
VALUES ("Boy", 150);

/*
Get all of the relevant information that we need to enter all of
tracks for U2's "Boy" album
*/
SELECT AlbumId FROM Album WHERE Title = "Boy";

SELECT MediaTypeId FROM MediaType WHERE Name = "Protected AAC audio file";

SELECT GenreId FROM Genre WHERE Name = "Rock";

/*
Use the above information to create the new tracks
*/
INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("I Will Follow", 348, 2, 1, "U2", 220000, 1234, 0.99);

/*
Challenge 1 and Solution - Insert the remaining Tracks for the Album Boy (except for the last 2-3,
insert those as part of Challenge Three)
*/
INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("Twilight", 348, 2, 1, "U2", 210000, 1237, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("An Cat Dubh", 348, 2, 1, "U2", 270000, 1237, 1.29);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("Into the Heart", 348, 2, 1, "U2", 200000, 1237, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("Out of Control", 348, 2, 1, "U2", 100000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("Stories for Boys", 348, 2, 1, "U2", 150000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("The Ocean", 348, 2, 1, "U2", 175000, 1234, 0.99);

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("A Day Without Me", 348, 2, 1, "U2", 185000, 1234, 0.99);

/*
Challenge 2 and Solution - Run the following Query. It gives an error.
Read and understand the error, then fix the problem
*/
INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("Extra Track", 348, 2, 1, "U2", 185000, 1234, 0.99);

/*
Challenge 3 and Solution - Use one insert statement to insert multiple tracks at the same time
*/
INSERT INTO Track
    (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES
    ("Another Time, Another Place", 348, 2, 1, "U2", 185000, 1234, 0.99),
    ("The Electric Co.", 348, 2, 1, "U2", 185000, 1234, 0.99),
    ("Shadows and Tall Trees", 348, 2, 1, "U2", 185000, 1234, 0.99);

