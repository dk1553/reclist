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
<link rel="stylesheet" type="text/css" href="NewRecipeNew.css">
<script type="text/javascript" src="NewRecipe.js"></script>

 
</head>
<body>
    <nav class="navKat" style="z-index:100;">
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
                   <li>
                            <form class="form-inline" action="IngredientsCalc" method="get">
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
               <div style="padding-top: 6em; height: 100%; background-color:lightgrey;">
           
                    <form action="SaveRecipe" method="get" style=" margin-left:0.5%;  ">

		<h1>Neues Rezept erstellen</h1>
		<div class="form__group field" style="margin-left: 30%; ">
			<input type="text" class="form__field" placeholder="Name"
				name="Rezeptname" id='name' required /> <label for="name"
				class="form__label" style="z-index:0; ">Name des Gerichts</label>
		</div>
		<br>
		<input type="file" id="img" name="img" accept="image/jpg">
		<div class="form__group field" style="margin-left: 30%; ">

			<input type="text" class="form__field" placeholder="Dauer"
				name="dauer" id='dauer' required /> <label for="Dauer"
				class="form__label">Dauer (Min)</label>
		</div>
		<br> <select name="Kategorie" class="select-wrapper">
			<option>Fleisch</option>
			<option>Vegetarisch</option>
			<option>Vegan</option>
			<option>Nudeln</option>
			<option>Reis</option>
		</select>
		<div class="form__group field" style="margin-left: 30%; ">
			<table id="Tags">	
			<tr>
			<td width = "50%"><input name="tag" type="text" class="form__field" placeholder="Tag" name="tag"
				id='tag' required /> <label for="tag" class="form__label">Tags</label> </td>
				<td width = "25%"><button type="button" id="addTag" class="btn-hover color-1" onclick="addtag()">+Tag</button></td>
				<td width = "25%"><button type="button" id="deleteTag" class="btn-hover color-1" onclick="removeTag()">Tag löschen</button></td>
			
				</tr>
				</table>
		</div>
		<br>
		<h1>Zutaten</h1>
		<div class="form__group field" style="margin-left: 30%; ">
			<table id="Zutaten">
				<tr>
					<td width="40%"><input  type="text" class="form__field"
						placeholder="Zutat" name="Zutat" id='zutat' required /> <label
						for="zutat" class="form__label">Zutat</label></td>
					<td width="40%"><input type="text" class="form__field"
						placeholder="Menge" name="Menge" id='menge' required /><label
						for="menge" class="form__label">Menge</label></td>
					<td width="20%"><select name="Einheit" class="select-wrapper">
							<option>Gramm</option>
							<option>Kilogramm</option>
							<option>Liter</option>
					
					</select></td>
					<td><button type="button" id="DeleteZutat" class="btn-hover color-1" onclick="removeIngredient()">Zutat löschen</button></td>
					<td><button type="button" id="AddZutat" class="btn-hover color-1" onclick="addIngredient()">+Zutat</button></td>
				</tr>
			</table>
		</div>	
		
			
		<h1>Beschreibung</h1>
		<textarea rows="30" cols="100" name="Beschreibung" placeholder="Deine Beschreibung..." id="beschreibung"></textarea>
		<br>
		<button onclick="submitclick()" id="subm" class="btn-hover color-1">Bestätigen</button>
		
		<script type="text/javascript">
			function submitclick(){
				
			}
		</script>

</form>  
     
           <footer class="bg-dark text-center text-white" style="position:relative; bottom:0px; width:100%;">
  
  <div class="container p-4">
 

    <section class="">
     
      <div class="row">
      
        <div class="col-lg-12 col-md-6 mb-4 mb-md-0">
          
 
         <ul class="list-unstyled mb-0">
            <li><a href="Hilfeseite.jsp" class="text-white">Hilfe</a></li>
                  
            <li><a href="Impressum.jsp" class="text-white">Impressum</a></li>
           </ul>
        </div>
         </div>
    </section>
   
 
  </div>
  
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    2021
    Reclist
  </div>
  <!-- Copyright -->
 
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