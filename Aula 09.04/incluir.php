<!DOCTYPE html>

<html lang="pt-br">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta nome="viewport" content="width-device-width, initial-scale-1.0">
    <link rel="stylesheet" href="incluir.css">
    <title> Incluir Contato</title>    
</head>

<body>

    <form action="incluir.act.php" method="post" enctype="multipart/form-data">
    <p>Nome</p>
    <p><input type="text" name="nome" id=""></p>
    <p>Telefone</p>
    <p><input type="text" name="telefone" id=""></p>
    <p>Email</p>
    <p><input type="text" name="email" id=""></p>
    <p>Foto</p>
    <p><input type="file" name="foto" id=""></p>
    <p><input type="submit" value="Enviar" id=""></p>

<?php

    echo time();

?>
    
</body>


</html>