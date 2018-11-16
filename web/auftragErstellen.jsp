<%--
    Document   : auftragErstellen
    Created on : 29.10.2018, 12:18:21
    Author     : florianhess
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mission Planet - Menü</title>
        <script src="index.js"></script>
        <link rel="stylesheet" type="text/css" href="index.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            body {
                margin: 0%;
                padding: 0%;
                font-family: arial;
                background: #DAFFEF;
                background: url(Logo.jpeg);
            }

            .hauptfenster {
                text-align: center;
            }

            #Titelauftragsliste {
              text-align: center;
            }

            #navID {

            }


            #logo {
                width: 100%;
                text-align: center;
                position:absolute;
            }
        </style>

    </head>
    <body>
        <nav class="navbar navbar-inverse" class="navbar" id="navID">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="index.jsp">Mission Planet</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="meinKonto.html">Mein Konto<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="meinKonto.jsp">Mein Konto</a></li>
            </ul>
          </li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Auftrag<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="auftragsliste.jsp">Auftrag</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="login.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
      </div>
    </nav>

      <!-- Hauptfenster der Anwendung -->
        <div class="hauptfenster">
          <h1 class="fenster-titel">Auftrag erstellen</h1>
        </div>

        <form method="POST">

          <div class="input-group">
            <span class="input-group-addon">Titel</span>
            <input id="msg" type="text" class="form-control" name="title"  placeholder="Titel des Auftrags">
          </div>
        <br>
          <div class="input-group">
            <span class="input-group-addon">Anzahl</span>
            <input id="msg" type="text" class="form-control" pattern="[0-9]" name="number"   placeholder="Anzahl der benötigten Personen">
          </div>
        <br>
          <div class="input-group">
            <span class="input-group-addon">Beschreibung</span>
            <input id="msg" type="text" class="form-control" name="description"  placeholder="Beschreibung des Auftrages">
          </div>
        <br>

          <div class="container">
              <a href="#"><button type="submit" class="btn btn-info btn-block" data-toggle="tooltip" title="JUST DO IT"> Auftrag Erstellen</button></a>
          </div>
          
        </form>

        <script>
            $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <% if (request.getMethod().equals("POST")) { %>

        <div class="container" class="table table-hover">
          <h2 id="titelAuftragsliste">Aufträge</h2>
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Titel</th>
                <th>Anzahl der Personen</th>
                <th>Beschreibung</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><%= request.getParameter("title")%></td>
                <td><%= request.getParameter("number")%></td>
                <td><%= request.getParameter("description")%></td>
              </tr>
            </tbody>
          </table>
        </div>

        <% } %>


    </body>
</html>
