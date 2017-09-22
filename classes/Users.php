<?php

class Users extends \PDO{
    private $db = null;
    
    public function __construct(DB $db) {
        $this->db = $db;
    }

    public function newUser(string $username, string $email, string $password) : void
    {
        $password = password_hash($password, PASSWORD_BCRYPT);
        $this->db->query(
            "INSERT INTO `users`(`username`, `email`, `password`, `fk_userrole`, `fk_favGenre`, `point`, `newsletter`) 
            VALUES (:username, :mail, :password, :fkUser, :fkGenre, :point, :newsletter)",
            [
                ':username' => $username,
                ':password' => $password,
                ':mail' => $email,
                ':fkUser' => NULL,
                ':fkGenre' => NULL,
                ':point' => 0,
                ':newsletter' => 'No'
            ]
        );
    }

    public function checkUsername(string $username)
    {
        return $this->db->single("SELECT username FROM users WHERE username = :username", [':username' => $username]);
    }

    public function login(string $username, string $password)
    {
        $check = $this->db->single("SELECT user_id, email, username, password, newsletter, genre.genre_id, genre.genre_name
                                    FROM users
                                    INNER JOIN genre
                                    ON users.fk_favGenre = genre.genre_id
                                    WHERE username = :username", 
                                    [
                                        ':username' => $username
                                    ]);
        if(password_verify($password, $check->password)) {
            $_SESSION['username'] = $check->username;
            $_SESSION['email'] = $check->email;
            $_SESSION['userid'] = $check->user_id;
            $_SESSION['favGenreID'] = $check->genre_id;
            $_SESSION['favGenre'] = $check->genre_name;
            $_SESSION['newsletter'] = $check->newsletter;
        }
    }
    
    
    public function loginCheck (int $check) : bool
    {
			if($this->db->single("SELECT user_id FROM users WHERE user_id = :id", [':id' => $check]) ) {
                return true;
            } else {
                return false;
            }
    }

    public function newsletter(int $id, string $news) : void
    {
            $this->db->query("UPDATE `users` SET `newsletter` = :newsletter WHERE user_id = :id", [':newsletter' => $news, ':id' => $id]);

    }

    public function passChange(string $password, int $id) : void
    {
        $password = password_hash($password, PASSWORD_BCRYPT);
        $this->db->query("UPDATE `users` SET `password` = :password WHERE user_id = :id", [':password' => $password, ':id' => $id]);
    }

    public function userSettings(string $username, string $mail, int $id) : void
    {
        $this->db->query("UPDATE `users` SET `username` = :username, `email` = :email WHERE user_id = :id", [':username' => $username, ':email' => $mail, ':id' => $id]);
    }

   
}