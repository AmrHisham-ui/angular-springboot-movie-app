
INSERT INTO `movies`
(`id`, `title`, `imdb_id`, `year`, `director`, `plot`, `poster`)
VALUES
(1, 'Inception', 'tt1375666', 2010, 'Christopher Nolan', 'A thief who enters the dreams of others to steal secrets faces his toughest mission yet.', 'https://m.media-amazon.com/images/M/MV5BMTM2NTI5ODExNV5BMl5BanBnXkFtZTcwNjAwOTU0Mw@@._V1_SX300.jpg'),
(2, 'Interstellar', 'tt0816692', 2014, 'Christopher Nolan', 'A group of explorers travel through a wormhole in space to ensure humanity\'s survival.', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNzM2MF5BMl5BanBnXkFtZTgwNzQ1MzE3MTE@._V1_SX300.jpg'),
(3, 'The Dark Knight', 'tt0468569', 2008, 'Christopher Nolan', 'Batman battles the Joker, who seeks to create chaos in Gotham City.', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODI4Nl5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg'),
(4, 'The Matrix', 'tt0133093', 1999, 'Lana Wachowski, Lilly Wachowski', 'A hacker discovers the shocking truth about his reality and his role in a rebellion.', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3NzAtNDMwZC00MTJhLWIxM2EtOTQ4YzM4ZDNkZmNjXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),
(5, 'Fight Club', 'tt0137523', 1999, 'David Fincher', 'A disillusioned white-collar worker forms an underground fight club with a charismatic soap salesman.', 'https://m.media-amazon.com/images/M/MV5BMmEzNTk2ZmUtYTAwMi00ZjYyLTk1YjgtYzUxNWNmNjNkOWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg');

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`) VALUES
(1, 'alice', '$2a$10$.QgonuU.e6ljUnNGcfhcSubPnRdh4iXsWkNLt40nywUkA8.8DFnSe', 'ROLE_USER', 'alice@example.com'),

(2, 'admin1', '$2a$10$jMhMsAsli4aJOciycf24J.KRBjZBpuNyl3T4454Q8ep3NS8jSf8Yq', 'ROLE_ADMIN', 'admin1@example.com');

INSERT INTO `ratings` (`id`, `user_id`, `movie_id`, `rating`) VALUES
(1, 1, 1, 4.5),
(2, 2, 2, 3.8),
(3, 1, 2, 5.0),
(4, 1, 1, 4.2),
(5, 2, 5, 3.5);

