<?php
    $random = $movies->getRand()[0];
?>
<section class="row">
    <div class="col s5">
        <a href="?p=movie&id=<?= $random->movie_id ?>"><img src="./image/plakater/<?= $random->img_path ?>" alt=""></a>
    </div>
    <div class="col s7">
        <h3><?= $random->movie_name ?></h3>
        <p><?= $random->movie_desc ?></p>
        <p>Rating</p>
    </div>  
</section>
<section class="center row">
    <img src="http://placehold.it/325x150" alt="">
</section>