<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar</title>
</head>
<body>
    
    <?php
    
    require('connect.php');

    $contatos = mysqli_query($con, "Select * from  tb_contatos");

    while($contato = mysqli_fetch_array($contatos)){
        echo "<p class=\"box\">Nome $contato[nome]</p>";
        echo "<p class=\"box\">Email $contato[email]</p>";
        echo "<p class=\"box\">Telefone $contato[telefone]</p>";
        echo "<p class=\"box\">Foto $contato[foto]</p>";
        echo "<p class=\"box\">
        <img src=\"$contato[foto]\">
        </p>";
        
    }


    ?>


</body>
</html>