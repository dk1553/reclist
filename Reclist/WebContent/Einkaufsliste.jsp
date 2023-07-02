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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/mdb.min.css">
<link rel="stylesheet" href="node_modules/mdbootstrap/css/style.css">
<link rel="stylesheet" type="text/css" href="Einkaufsliste.css">
<script type="text/javascript" src="Einkaufsliste.js"></script>

 
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
           
<div id="innereinkauf">	
<div  align="right">	 <button id="del" class="del" onclick="elementDelete()" >Einkaufsliste bearbeiten</button></div>
<div  align="right">	 <button id="addZutat"  onclick="addZutaten()" >Zutaten selbst einfügen</button></div>
	 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="change">
<input type="hidden" name="goTo" value="/Einkaufsliste.jsp">
	
	 <div id="checklist">
			<jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/> <!-- Ändern zur "session" -->
	   
	

	
	<!-- neue Produkte werden zu der voherigen Einkaufsliste hinzugefügt -->
	   		
				
				<!-- Ausgabe der alten Einkaufsliste -->
					
	   			<div >	 </div>	<div id="addElem"  >	 </div>
		
	   					
		
			<c:if test="${(fn:length(liste.result)) > 0 }" >
		
			
	 					 					<% int i=0; %> 
	 				<c:forEach items="${liste.result}" var="el" varStatus="status">
	 			
	 				
	 				<% i++; %>	
	 				
	 				
	   				<input class="l" id="${i}" type="checkbox" name="r" value="${i}" >
	   				
	   				  <!-- ausgabe von dem result -->
	   				 
	   				  
  					<label class="l"for="${i}" ><c:out  value="${el}"/>
  					<input  type="hidden" name="alteIngr" value="${liste.alteIngr[status.index]}">
  					<input  type="hidden" name="alteMenge" value="${liste.alteMenge[status.index]}">
  					<input  type="hidden" name="alteEinheit" value="${liste.alteEinheit[status.index]}"> 
  					  <!-- tatsächliche Daten, aus denen "result" besteht -->
  					</label>
  					
  						
  								
	   	
					
				
				</c:forEach>
				
							
	 						
	   			
	   			 
				
  			</c:if>
  			<%String meldung; %>
	   			<c:if test="${(fn:length(liste.result)) < 1}" >
	   				<% meldung="Ihre Liste ist noch leer "; %>
	   		
				</c:if>
				<div id="leer"> <c:out value="${meldung}"></c:out></div>
				

  					
  					
</div><div align="left"><input id="sub"  type="submit"  value="Bearbeitung speichern"></div>	
</form>
 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="false">
<input type="hidden" name="goTo" value="/Einkaufsliste.jsp">
<input type="submit" id="cancel" value="Cancel">
</form>
</div>
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

 
  
 
</body>
</html>