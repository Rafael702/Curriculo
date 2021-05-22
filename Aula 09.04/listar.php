<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="listar.css">
    <title>Listar</title>
</head>
<body>
    <h1><a href="incluir.php">Incluir Contato</a> </h1>

    
    <?php
    
    require('connect.php');

    $contatos = mysqli_query($con, "Select * from  tb_contatos");

    

    while($contato = mysqli_fetch_array($contatos)){
        echo "<div class=\"card\">";
        echo "<p class=\"box importante\">Nome: $contato[nome]</p>";
        echo "<p class=\"box\">Email: $contato[email]</p>";
        echo "<p class=\"box\">Telefone: $contato[telefone]</p>";
        echo "<p class=box>
        <img src=\"$contato[foto]\">
        </p>";
        echo "</div>";
        
    }


    ?>
    

</body>
</html>