USE codeup_test_db;

# Selects all albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;

# Deletes albums released after 1991
DELETE FROM albums WHERE release_date > 1991;

# Selects all albums that have the genre disco
SELECT * FROM albums WHERE genre = 'disco';

# Deletes albums with the genre disco
DELETE FROM albums WHERE genre = 'disco';

# Selects all albums released by Nirvana
SELECT * FROM albums WHERE artist = 'Whitney Houston';

# Deletes albums by the artist Nirvana
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;