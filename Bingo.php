<?php

    session_start();
    
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="img/png" href="img/bingo.png"> 
    <link rel="stylesheet" href="style.css">
    <title>Bingo</title>
</head>
<body>

    <form method="post">
    
    <input type="submit" value="sortear" name="bt-sortear">
    <input type="submit" value="limpar" name="bt-limpar">
    
    </form>
    <div class="bingo">
    <h2>b</h2>
    <h2>i</h2>
    <h2>n</h2>
    <h2>g</h2>
    <h2>o</h2>
    </div>

    <div class="sorteio">
    <?php

if(isset($_POST['bt-limpar'])){
   $_SESSION['numeros'] = array();
}
if(isset($_POST['bt-sortear'])){

    if(!isset($_SESSION['numeros'])){
        $_SESSION['numeros'] = array();
}

  do{
      $sorteado = rand(1, 50);
  }while(in_array($sorteado, $_SESSION['numeros']));


  $tamanho = sizeof($_SESSION['numeros']);

  $_SESSION['numeros'][$tamanho] = $sorteado;

  sort($_SESSION['numeros']);

  foreach ($_SESSION['numeros'] as $num) {
      echo "<p>$num</p>";

          
  }
}

    ?>

</div>
</body>
</html>