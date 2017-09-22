<?php

    if(isset($_POST['opret'])) {
        $error=[];
        if($user->checkUsername($_POST['username'])) {
            $error['username'] = 'Dette brugernavn er taget';
            print_r($error);
        } 
        
        if(sizeof($error) === 0) {
            if($user->newUser($_POST['username'], $_POST['email'], $_POST['password'])){
                header('Location: ?p=login');
            }
        }
    }
?>
<div class="row">
<form class="col s12" method="post">
  <div class="row">
    <div class="input-field col s12">
      <i class="material-icons prefix">account_circle</i>
      <input id="username" name="username" type="text">
      <label for="username">Username</label>
    </div>
    <div class="input-field col s12">
      <i class="material-icons prefix">email</i>
      <input id="email" name="email" type="email">
      <label for="email">Email</label>
    </div>
    <div class="input-field col s12">
      <i class="material-icons prefix">vpn_key</i>
      <input id="password" name="password" type="password">
      <label for="password">Password</label>
    </div>
  </div>
  

        <button class="btn waves-effect waves-light col s12" type="submit" name="opret">
            Opret bruger
        </button>

</form>
</div>