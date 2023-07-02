<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="jquery-3.6.0.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/mdb.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/style.css">
<link rel="stylesheet" type="text/css" href="Hilfeseite.css">
<script type="text/javascript" src="Impressum.js"></script>

 
 
</head>
<body>
    <nav class="navKat">
        <div class="container">
            <div class="logo">
                <a href="IngredientsCalc?calc=false&goTo=%2FHomepageNew.jsp"><img src="images/logo.png"></a>
            </div>
            <div id="mainListDiv" class="main_list">
                 <ul class="navlinks">
                    <li><a href="IngredientsCalc?search=Fleisch&calc=searchID&goTo=%2FKategorienNew.jsp">Fleisch</a></li>
                     <li><a href="IngredientsCalc?search=Vegetarisch&calc=searchID&goTo=%2FKategorienNew.jsp">Vegetarisch</a></li>
                     <li><a href="IngredientsCalc?search=Vegan&calc=searchID&goTo=%2FKategorienNew.jsp">Vegan</a></li>
                    <li><a href="IngredientsCalc?search=Nudeln&calc=searchID&goTo=%2FKategorienNew.jsp">Nudeln</a></li>
                     <li><a href="IngredientsCalc?search=Reis&calc=searchID&goTo=%2FKategorienNew.jsp">Reis</a></li>
                    <li><a href="NewRecipe3.jsp">+Rezept</a></li>
                    
                    <li><form class="form-inline" action="IngredientsCalc" method="get">
                            <input class="form-control" type="search" placeholder="Search" name="search" id="search" aria-label="Search">
                            <input type="hidden" name="calc" value="searchID">
							<input type="hidden" name="goTo" value="/KategorienNew.jsp">
							 
                            </form>
                       
                    </li>
                    

                     
                </ul>
            </div>
            <span class="navTriggerKat">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </div>
    </nav>
 
    <section class="homeKat">
   
        
    </section>
        <!-- just to make scrolling effect possible -->
               <div style="padding-top: 6em; max-height: 100%; background-color:lightgrey">
             <div id="test">

	<p> 
		Wilkommen zur Rezept/Einkaufapp!<br> In dieser App wollen wir es
		Ihnen einfacher machen, neue, interessante Rezepte zu entdecken und
		diese direkt in eine eingebaute Einkaufsliste zu importieren, sodass
		Sie sich um nichts kümmern müssen. Wie funktioniert das? Im Folgenden
		ist die Funktion der App beschrieben, sodass Sie direkt loslegen
		können!
	</p>
	<p><h1>Homepage</h1><br>
	Oben auf unserer Seite finden Sie eine Navigationsleiste. Hier können sie zwischen 
	den einzelnen Rezeptkategorien wechseln, um ihren Geschmack zu treffen.<br>
	Rechts neben den Kategorien finden sie ein freies Suchfeld, um spezifisch nach Rezepten
	zu suchen.<br>
	Unter der Navigationsleiste befindet sich ein zufälliges spannendes Rezept aus je einer Kategorie.<br>
	Daneben befindet sich die Einkaufsliste, die Sie auf der gesamten Website begleiten wird. Hier werden alle
	Zutaten angezeigt, die Sie für die Rezepte zum Nachkochen benötigen</p>
	<p><h1>Kategorie</h1><br>
	Hier finden Sie Rezepte aus einer Kategorie, welche Sie ausgewählt haben. Durch den " + " Button können Sie die
	Zutaten des gewünschten Rezeptes zu ihrer Einkaufsliste hinzufügen. <br>Sie finden auf der Rezeptevorschau immer ein
	Bild, den Namen, die Zubereitungsdauer uvm. </p>
	<p><h1>Rezept hinzufügen</h1><br>
	Es ist einfach ein neues Rezept auf unserer Seite hinzuzufügen. Klicken Sie einfach auf "+Rezept" in der 
	Navigationsleiste.<br> Auf der nachfolgenden Seite müssen Sie lediglich alle Informationen (Name, Zutaten, Menge, Beschreibung...)
	hinzufügen und schon ist ihr neues Rezept angelegt.</p>
	<p><h1>Rezept anzeigen</h1><br>
	Um ein Rezept vollkommen anzeigen zu lassen müssen Sie auf den Pfeil neben dem Rezept klicken und erhalten dann die vollen 
	Informationen zu dem Rezept.</p>
	<p><h1>Einkaufsliste erstellen</h1><br>
	Wenn Sie unter der Einkaufsliste auf Einkaufsliste anzeigen klicken, dann sehen Sie alle Zutaten, die Sie bisher in ihrer Einkaufsliste
	haben. Mit einem Klick auf eine Zutat wird diese Zutat gelöscht.</p>
	<br><br><br><br><br><br><br><br><br><br><br><br><br>
     </div>
           <footer class="bg-dark text-center text-white" style="bottom:0px; width:100%;">
  
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    
    		<ul class="list-unstyled mb-0">
            <li><a href="Hilfeseite.jsp" class="text-white">Hilfe</a></li>
                  
            <li><a href="Impressum.jsp" class="text-white">Impressum</a></li>
           </ul>
          2021 Reclist 
  </div>
 
</footer>
<!-- Footer -->
           
           </div>
          
</body>
<!-- Footer -->
 
  
 
<!-- Jquery needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>
 
<!-- Function used to shrink nav bar removing paddings and adding black background -->
    <script>
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
     
 
    
    </script>
</body>
</html>