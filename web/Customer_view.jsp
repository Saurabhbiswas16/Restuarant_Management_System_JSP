<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="NavBackend.css">
    </head>
    <body>
            
                    <div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar"> 
                         <button onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
                    <a href="Beverage.jsp" class="w3-bar-item w3-button">Beverage</a>
                    <a href="Soup.jsp" class="w3-bar-item w3-button">Soup</a>
                    <a href="Starter.jsp" class="w3-bar-item w3-button">Starter</a>
                            <a href="Maincourse.jsp" class="w3-bar-item w3-button">Main course</a>
                             <a href="Desert.jsp" class="w3-bar-item w3-button">Desert</a>
                            
                            <a href="Bill.jsp" class="w3-bar-item w3-button">Bill</a>
                  </div>
                   <div class="w3-teal">
                    <button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">=</button>
                    <div class="w3-container">
                      <h1>Welcome to paradise</h1>
                    </div></div>
                    <script>
                            function w3_open() {
                              document.getElementById("mySidebar").style.display = "block";
                            }

                            function w3_close() {
                              document.getElementById("mySidebar").style.display = "none";
                            }
                            </script>
                          
        
    </body>
</html>
