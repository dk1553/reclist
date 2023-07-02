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
<link rel="stylesheet" type="text/css" href="KategorienNew.css">
<script type="text/javascript" src="KategorienNew.js"></script>



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
  
  
  
  	
	<jsp:useBean id="rezept" class="beans.RezeptVorschau" scope="session"/> <!-- Ändern zur "session" -->
 	<input type="hidden" id="thisRecipe" value="${rezept.searchID}" >
 	<input type="hidden" id="sort" value="${rezept.sortData}" >
	
 <div id="test">	
           
            	<table class="bigTable" >
		<tr><td><h2 id="title">KATEGORIE</h2>
		<form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="changeSort">

<input type="hidden" name="goTo" value="/KategorienNew.jsp">
<input type="submit" id="rev" >
</form></td>
<td>  
<img id="bild" src="https://image.flaticon.com/icons/png/128/590/590510.png" alt="Einkaufsliste" width="40px" height="40px"></td></tr>
<tr>
<td width="600" valign="top">
<div class="scrollPage" id="out" >

</div>
</td>

<td width="200" valign="top" align="center">
<div id="einkaufdiv">
	
<!-- Einkaufsliste -->
<div id="innereinkauf" >
<div align="right">
	    <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="deleteAll">
<input type="hidden" name="goTo" value="/KategorienNew.jsp">
 <button class="del" type="submit">Alles löschen</button>
 </form>  
 </div>
	   
			<jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/> <!-- Ändern zur "session" -->
	   	


		<ul class="list-group list-group-flush">
				<!-- Ausgabe der alten Einkaufsliste -->
				<% int counter=0; %> 
	   			<c:forEach items="${liste.result}" var="el">
	   				<% if( counter<8){ %> <!-- nur die ersten 17 Zutaten sollten gezeigt werden, damit die Liste nicht zu voll wird -->
	   					<% counter++; %>	   			
	   					<li class="list-group-item"><input type="checkbox"  ><label style="padding-left:10px;" ><c:out value="${el}"/></label> </li>
	   				<% } %>
	   				<% if( counter==8){ %>
	   					<% counter++; %>	   			
	   					<li class="list-group-item"><input type="checkbox" ><label ><c:out value="........"/></label></li>
	   				<% } %> 	
				</c:forEach>
		</ul>
		
 	
<form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="false">
<input type="hidden" name="goTo" value="/Einkaufsliste.jsp">
                            
  <button id="hinzu" type="submit" class="btn-hover color-8" >Einkaufsliste erstellen</button>

                        </form>	

 </div>
 

     	                  
 

	
   

</div>

</div></td>


</tr>

</table>
 </div> 
<footer class="bg-dark text-center text-white" style="position:absolute; bottom:0px; width:100%;">
 
  
  
   <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    
    <ul class="list-unstyled mb-0">
            <li><a href="Hilfeseite.jsp" class="text-white">Hilfe</a></li>
                  
            <li><a href="Impressum.jsp" class="text-white">Impressum</a></li>
           </ul>
          2021 Reclist 
  </div>
 
 
</footer>

           
          
               
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