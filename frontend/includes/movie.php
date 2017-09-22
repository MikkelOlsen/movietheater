<?php
    $thisMovie = $movies->getOne($_GET['id']);
?>

<section class="row">
    <div class="col s5">
        <img src="./image/plakater/<?= $thisMovie->img_path ?>" alt="">
    </div>
    <div class="col s7">
        <h3><?= $thisMovie->movie_name ?></h3>
        <p><?= $thisMovie->movie_desc ?></p>
    </div>  
</section>
<section class="moviestar">
    <i class="material-icons">star</i>
    <i class="material-icons">star</i>
    <i class="material-icons">star_half</i>
    <i class="material-icons">star_border</i>
    <i class="material-icons">star_border</i>
</section>

<section class="review">
    <div class="container">
        <div class="row">
            <p>Bruger: John Doe</p>
            <p>'Dette er en random anmeldelse.'</p>
        </div>
        <div class="row">
            <p>Bruger: John Doe</p>
            <p>'Dette er en random anmeldelse.'</p>
        </div>
    </div>
</section>

