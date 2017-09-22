<footer class="page-footer">
    <div class="container">   
        <ul class="row center-align">
            <li class="col s2">
                <a href="?p=tilbud"><i class="material-icons">monetization_on</i></a>
                <span class="">Tilbud</span>
            </li>
            <li class="col s2">
                <a href="?p=list"><i class="material-icons">view_list</i></a>
                <span>Liste</span>
            </li>
            <?php
                if(isset($_SESSION['username'])) {
            ?>
                <li class="col s2 right">
                    <a href="?p=profil"><i class="material-icons" style="color:green">account_circle</i></a>
                    <span>Profil</span>
                </li>
            <?php

                } else {
            ?>
            <li class="col s2 right">
                <a href="?p=login"><i class="material-icons">account_circle</i></a>
                <span>Login</span>
            </li>

            <?php
                }
            ?>

        </ul>
    </div>
</footer>