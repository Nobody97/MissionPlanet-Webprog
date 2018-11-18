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
        <meta charset="windows-1252">
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

            #container {
              text-align: center;
            }

            #table {
              text-align: center;
              width: 100%;
              padding: 20xp;

            }

          #head {
            background-color: mediumseagreen;
          }

          #body {
            background-color: white;
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
          <li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
      </div>
    </nav>

      <!-- Hauptfenster der Anwendung -->
        <div class="hauptfenster">
          <h1 class="fenster-titel">Auftrag erstellen</h1>
        </div>


          <div class="container" id="container" class="input-group">

            <div class="tab tab-2">


              Title: <input type="text" name="title" id="title">
              Anzahl: <input type="text" name="number" id="number">
              Beschreibung: <input type="text" name="description" id="description">

              <button onclick="addHtmlTableRow();">Add</button>
              <button onclick="editHtmlTbleSelectedRow();">Edit</button>
              <button onclick="removeSelectedRow();">Remove</button>
          </div>

          <br>

          <div class="tab tab-1">
            <table id="table" border="1">
              <tr id="head">
                <td>Titel</td>
                <td>Anzahl</td>
                <td>Beschreibung</td>
              </tr>

              <tr id="body">
                <th></th>
                <th></th>
                <th></th>
              </tr>
            </table>
          </div>

        <script>

            var rIndex,
               table = document.getElementById("table");

           // check the empty input
           function checkEmptyInput()
           {
               var isEmpty = false,
                   title = document.getElementById("title").value,
                   number = document.getElementById("number").value,
                   description = document.getElementById("description").value;

               if(title === ""){
                   alert("Bitte gib für den Auftrag einen Titel ein!");
                   isEmpty = true;
               }
               else if(number === ""){
                   alert("Bitte gib für den Auftrag die Anzahl der Auftragnehmer ein");
                   isEmpty = true;
               }
               else if(description === ""){
                   alert("Bitte füge deinem Auftrag eine kurze Beschreibung hinzu!");
                   isEmpty = true;
               }
               return isEmpty;
           }

           // add Row
           function addHtmlTableRow()
           {
               // get the table by id
               // create a new row and cells
               // get value from input text
               // set the values into row cell's
               if(!checkEmptyInput()){
                 //get input values
                 var title = document.getElementById('title').value;
                 var number = document.getElementById('number').value;
                 var description = document.getElementById('description').value;

                 //get the html table
                 var table = document.getElementsByTagName('table')[0];

                 //add new empty row to table
                 var newRow = table.insertRow(1);

                 //add cells to row
                 var cel1 = newRow.insertCell(0);
                 var cel2 = newRow.insertCell(1);
                 var cel3 = newRow.insertCell(2);

                 //add values to the cells
                 cel1.innerHTML = title;
                 cel2.innerHTML = number;
                 cel3.innerHTML = description;
               // call the function to set the event to the new row
               selectedRowToInput();
           }
           }

           // display selected row data into input text
           function selectedRowToInput()
           {

               for(var i = 1; i < table.rows.length; i++)
               {
                   table.rows[i].onclick = function()
                   {
                     // get the seected row index
                     rIndex = this.rowIndex;
                     document.getElementById("title").value = this.cells[0].innerHTML;
                     document.getElementById("number").value = this.cells[1].innerHTML;
                     document.getElementById("description").value = this.cells[2].innerHTML;
                   };
               }
           }
           selectedRowToInput();

           function editHtmlTbleSelectedRow()
           {
               var title = document.getElementById("title").value,
                  number = document.getElementById("number").value,
                   description = document.getElementById("description").value;
              if(!checkEmptyInput()){
               table.rows[rIndex].cells[0].innerHTML = title;
               table.rows[rIndex].cells[1].innerHTML = number;
               table.rows[rIndex].cells[2].innerHTML = description;
             }
           }

           function removeSelectedRow()
           {
               table.deleteRow(rIndex);
               // clear input text
               document.getElementById("title").value = "";
               document.getElementById("number").value = "";
               document.getElementById("description").value = "";
           }
        </script>


    </body>
</html>
