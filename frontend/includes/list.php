<section class="container">
<?php
    foreach($movies->getAll() as $value) {
?>
    <div class="row">
        <a href="?p=movie&id=<?= $value->movie_id ?>"><img src="./image/plakater/<?= $value->img_path ?>" width="65" class="col s4" alt=""></a>
        <div class="col s8">
            <h4><?= $value->movie_name ?></h4>
            <i class="material-icons">star</i>
            <i class="material-icons">star</i>
            <i class="material-icons">star_half</i>
            <i class="material-icons">star_border</i>
            <i class="material-icons">star_border</i>
        </div>
    </div>
<?php
    }
?>


</section>