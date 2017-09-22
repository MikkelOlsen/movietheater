<?php
    if(isset($_POST['opret'])) {
        header('Location: ?p=opret');
    } else if(isset($_POST['submit'])) {
        $user->login($_POST['username'], $_POST['password']);
        header('Location: ?p=home');
    }
    
?>

<div class="row">
<form class="col s12" method="post">
  <div class="row">
    <div class="input-field col s12">
      <i class="material-icons prefix">account_circle</i>
      <input id="username" name="username" type="text" class="validate">
      <label for="username">Username</label>
    </div>
    <div class="input-field col s12">
      <i class="material-icons prefix">vpn_key</i>
      <input id="password" name="password" type="password" class="validate">
      <label for="password">Password</label>
    </div>
  </div>
  
  <button class="btn waves-effect waves-light col s5" type="submit" name="submit">
      Login
  </button>

        <button class="btn waves-effect waves-light col s5 right" type="submit" name="opret">
            Opret bruger
        </button>

</form>
</div>
<section class="center row">
    <img src="http://placehold.it/325x150" alt="">
</section>