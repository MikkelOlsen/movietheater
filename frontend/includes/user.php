<?php
    if(isset($_POST['tilmeld'])) {
        if($_SESSION['newsletter'] === '1') {
            $user->newsletter($_SESSION['userid'], '0');
            $_SESSION['newsletter'] = '0';
        } else {
            $user->newsletter($_SESSION['userid'], '1');
            $_SESSION['newsletter'] = '1';
        }

    }

    if(isset($_POST['savePass'])) {
        $user->passChange($_POST['password'], $_SESSION['userid']);
    }
    if(isset($_POST['genre'])) {
        $movies->changeFavGenre($_POST['favGenre'], $_SESSION['userid']);
        $_SESSION['favGenreID'] = $_POST['favGenre'];
    }

    if(isset($_POST['usersettings'])) {
        $user->userSettings($_POST['username'], $_POST['email'], $_SESSION['userid']);
            $_SESSION['username'] = $_POST['username'];
            $_SESSION['email'] = $_POST['email'];
        
    }

    //print_r($_POST);
    $checked = "";
    $tilmeld = "Tilmeld dig nu!";
    if($_SESSION['newsletter'] === "1") {
        $checked = 'checked="checked"';
        $tilmeld = "Tilmeldt."; 
    }
?>
<section class="container profile">
    <div class="row valign-wrapper">
        <i class="medium material-icons col s4">person_outline</i><h3 class="col s8 center-align"><?= $_SESSION['username'] ?></h3>
    </div>
    <div class="row valign-wrapper"> 
        <i class="medium material-icons col s4">mode_edit</i><h3 class="col s8 center-align"><?= $_SESSION['email'] ?></h3>
    </div>
    <div class="row valign-wrapper">
        <i class="medium material-icons col s4">local_movies</i>
        <button data-target="favGenre" class="col s8 center-align btn modal-trigger">Favorit genre</button>
    </div>
    <div class="row valign-wrapper">
        <i class="medium material-icons col s4">lock_outline</i><button data-target="password" class="col s8 center-align btn modal-trigger">Ændre kodeord</button>
    </div>
    <div class="row valign-wrapper">
        <i class="medium material-icons col s4">mail_outline</i><h3 class="col s8 center-align">Nyhedsbrev</h3>
        
    <form id="news" method="post">
        <p>
            <input type="hidden" name="tilmeld">
            <input type="checkbox" <?= $checked ?> onChange="document.getElementById('news').submit(); " id="test5" />
            <label for="test5"><?= $tilmeld ?></label>
        </p>
    </form>
    </div>
    <div class="row valign-wrapper">
        <a href="?p=logout" class="col s5">
            <button class="btn waves-effect waves-light">
                Log ud
            </button>
        </a>
            <button data-target="usersettings" class="btn waves-effect waves-light right col s7 modal-trigger">
                Oplysninger
            </button>
    </div>
</section>

 <!-- Modal Structure -->
 <div id="password" class="modal bottom-sheet">
    <div class="modal-content">
        <div class="row">
            <form class="col s12" id="newpass" method="post">
            <input type="hidden" name="savePass">
                <div class="row">
                    <div class="input-field col s12">
                        <input style="color:black" id="password" name="password" type="text">
                        <label for="password">Nyt kodeord</label>
                    </div>
                </div>
                <div class="row">
                    <a onClick="document.getElementById('newpass').submit()" class="modal-action modal-close waves-effect waves-green btn col s12">Gem</a>
                </div>
            </form>
        </div>
    </div>
</div>

 <!-- Modal Structure -->
 <div id="favGenre" style="overflow: visible" class="modal bottom-sheet">
    <div class="modal-content">
        <div class="row">
            <form class="col s12" id="genre" method="post">
            <input type="hidden" name="genre">
                <div class="row">
                    <div class="input-field col s12">
                        <select name="favGenre"  class="black-text" id="favGenre" onChange="document.getElementById('genre').submit()">
                            <?php
                                foreach ($movies->genreAll() as $key => $value) { 
                                    $selected = "";
                                    if($value->genre_id === $_SESSION['favGenreID']) {
                                        $selected = "selected";
                                    }
                                    
                            ?>
                            <option <?= $selected ?> value="<?= $value->genre_id ?>"><?=$value->genre_name ?></option>
                            <?php
                                }
                            ?>
                        </select>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

 <!-- Modal Structure -->
 <div id="usersettings" class="modal bottom-sheet">
    <div class="modal-content">
        <div class="row">
            <form class="col s12" id="settings" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="username" class="black-text" name="username" value="<?= $_SESSION['username'] ?>" type="text">
                        <label for="username">Username</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="email" class="black-text" value="<?= $_SESSION['email'] ?>" name="email" type="email">
                        <label for="email">Email</label>
                    </div>
                </div>
                <div class="row">
                    <button type="submit" name="usersettings" class="modal-action modal-close waves-effect waves-green btn col s12">Gem</button>
                </div>
            </form>
        </div>
    </div>
</div>