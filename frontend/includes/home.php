<?php
    $random = $movies->getRand()[0];
?>
<section class="row">
    <div class="col s5">
        <img src="./image/plakater/<?= $random->img_path ?>" alt="">
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