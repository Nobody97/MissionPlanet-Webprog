<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Registration</title>
</head>
<body>
  <div class="container">
  <h3>Anmeldung</h3>
  <p>Hier kannst du dich bei Mission Planet anmelden.</p>

  <form>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon">Name</span>
      <input id="msg" type="text" class="form-control" name="msg" placeholder="Name">
    </div>
    <div class="input-group">
      <span class="input-group-addon">Vorname</span>
      <input id="msg" type="text" class="form-control" name="msg" placeholder="Vorname">
    </div>
    <div class="input-group">
      <span class="input-group-addon">Geburtsdatum</span>
      <input id="msg" type="text" class="form-control" name="msg" placeholder="TT.MM.JJJJ">
    </div>
  </form>
  <br>
</form>

  <div class="container">
    <a href="index.jsp" data-toggle="tooltip" title="JUST DO IT"><button type="button" class="btn btn-info btn-block">Anmelden</button></a>
  </div>

  <script>
    $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
    });
  </script>

</body>
</html>
