<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>LIQUIDACIONES</title>
  <link rel="stylesheet" href="css/style.css">

  <style>
  select {
    width: 45%;
    padding: 5px 10px;
    border: none;
    border-radius: 8px;
    background-color: #f1f1f1;
  }
  </style>

</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Derivacion</h1>
      <form method="post" action="nexoadministrador.php">
        <label>Empresa: </label>
        <select name="grupo" id="grupo">
          <option value="edesur">Edesur</option>
          <option value="metrogas">Metrogas</option>
          <option value="telecomunicaciones">Telecomunicaciones</option>
          <option value="todos">Todas las empresas</option>
        </select>

        </p>
        <p class="submit"><input type="submit" name="boton" value="Ir"></p>

      </form>
    </div>
  </section>


</body>
</html>