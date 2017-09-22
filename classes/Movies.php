<?php

class Movies extends \PDO {
    private $db = null;

    public function __construct(DB $db) {
        $this->db = $db;
    }

    public function getAll() : array
    {
        return $this->db->toList("SELECT movie_id, movie_name, movie_desc, images.img_path
                                  FROM movies
                                  INNER JOIN images
                                  ON images.fk_movie_id = movies.movie_id");
    }

    public function getRand() : array
    {
        return $this->db->toList("SELECT movie_id, movie_name, movie_desc, images.img_path
                                    FROM movies
                                    INNER JOIN images
                                    ON images.fk_movie_id = movies.movie_id
                                    ORDER BY RAND()
                                    LIMIT 1");
    }

    public function getOne(int $id)
    {
        return $this->db->single("SELECT movie_id, movie_name, movie_desc, images.img_path
                                    FROM movies
                                    INNER JOIN images
                                    ON images.fk_movie_id = movies.movie_id
                                    WHERE movie_id = :id", [':id' => $id]);
    }
    

    public function genreAll() : array
    {
        return $this->db->toList("SELECT * FROM `genre`");
    }

    public function changeFavGenre(int $genreID, int $userID)
    {
        $this->db->query("UPDATE `users` SET `fk_favGenre` = :genre WHERE user_id = :id", [':genre' => $genreID, ':id' => $userID]);
    }
}