<!DOCTYPE html>
<html>
   <head>
       <meta charset="utf-8" />
       <title>Mission Planet - Login</title>
       <script src="index.js"></script>
       <link rel="stylesheet" href="login.css" />
       <link rel="stylesheet" href="app.css" />

       <meta name="viewport" content="width=device-width, initial-scale=1.0">

       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

       <script>
       html, body {
           margin: 0;
       }

       body {
           font-family: sans-serif;
           font-size: 12pt;
           background: url(Logo.jpeg);
           margin: 0;
           padding: 0;
           background-color: rgb(212, 227, 237);
       }

       .loginbox {
         width: 320px;
         heigth: 420px;
         background: #000;
         color: #fff;
         top: 50%;
         left: 50%;
         position: absolute;
         transform: translate(-50%, -50%);
         box-sizing: border-box;
         padding: 70px 30px;

       }

       .avatar {
         width: 100px;
         height: 100px;
         border-radius: 50%;
         position: absolute;
         top: -50px;
         left: 110px;;
       }

       h1 {
         margin: 0;
         padding: 0 0 20px;
         text-align: center;
         font-size: 22px;
       }

       .loginbox p {
         margin: 0;
         padding: 0;
         font-weight: bold;
       }

       .loginbox input {
         width: 100%;
         margin-bottom: 20px;
       }

       .loginbox input[type="text"], input[type="password"]
       {
          border: none;
          border-bottom: 1px solid #fff;
          background: transparent;
          outline: none;
          height: 40px;
          color: #fff;
          font-size: 16px;
       }

       .loginbox input[type="submit"]
       {
         border: none;
         outline: none;
         heigth: 40px;
         background: green;
         color: black;
         font-size: 18px;
         border-radius: 20px;
         text-align: center;
       }

       .loginbox input[type="submit"]:hover
       {
         cursor: pointer;
         background: #ffc107;
         color: #000;
       }

       .loginbox a {
         text-decoration: none;
         font-size: 12px;
         line-height: 20px;
         color: darkgrey;
       }

       .loginbox a:hover
       {
         color: #ffc107;

       }
       </script>
   </head>
   <body>
     <div class="loginbox">
       <img src="avatar.jpg" class="avatar">
         <h1>Login Here</h1>
         <form>
           <p>Username</p>
           <input type="text" name="" placeholder="Username">
           <p>Passwort</p>
           <input type="password" name="" placeholder="Enter password">
           <!--<input type="submit" name="" value="Login"> -->
           <a href="index.html"><button type="button" class="btn btn-primary btn-block">Anmelden</button><br></a>
           <a href="kontoAnlegen.html"> Don´t have an account?</a>
         </form>
     </div>
   </body>
</html>
