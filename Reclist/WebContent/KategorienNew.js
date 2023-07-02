


$('.navTrigger').click(function () {
$(this).toggleClass('active');
console.log("Clicked menu");
$("#mainListDiv").toggleClass("show_list");
$("#mainListDiv").fadeIn();

});



var req = new XMLHttpRequest();


req.onreadystatechange=function (){ loadInfo();};

function loadInfo(){
	if(req.readyState==4){
		if(req.status==200){
	
			
			
var sort =document.getElementById("sort").value; // Gesuchte ID-Rezept
			
	
			
			
			str='\u003ctable id[^\0@]*@*'+"(.)*"+'[^\0i]*[^@]*\u002ftable\u003e';		 // regex für ID-Rezept
			var reg= new RegExp(str, 'g');
			rezepte=req.responseText.match(reg); // suche naach dem ID-Rezept
			
			
			
			if(rezepte!=null){ // prÃ¼fung, ob das vohanden ist 
				 
				if(sort=="oldFirst"){
					document.getElementById("rev").value="Alte zuerst";
			for(n=0;n<rezepte.length; n++){ // es kÃ¶nnen mehrere Rezepte der Suche entsprechen
			var my_div = newDiv = null;
			var newDiv = document.createElement("div"); // fÃ¼r jeden Rezept wird ein neues Kontainer erstellt und mit den Daten aus der Datenbank befÃ¼llt

	        newDiv.innerHTML = '<table ><tr><td><div id="rezeptBlock" class="rezepte"> <form action="IngredientsCalc" method="get">	<input type="hidden" name="calc" value="true"><input type="hidden" name="goTo" value="/KategorienNew.jsp"> <table border="1"  ><tr> <td  align="center" width="100px" > Bild</td><td id="tdRezept" width="450px" >'+rezepte[n]+'</td>		<td valign="bottom"> <input name="addToList" class="add"  type="submit" value="+"></td>	</tr></table></form></div></td><td ><div class="vorschau" style="height:100%;" ></div></td></tr><table>';
  
	         
			my_div = document.getElementById("out");
	    	my_div.appendChild(newDiv);
	    	
	    	
			
				}}else{
					for(n=rezepte.length-1;n>=0; n--){// es kÃ¶nnen mehrere Rezepte der Suche entsprechen
						 document.getElementById("rev").value="Neue zuerst";
						
					var my_div = newDiv = null;
					var newDiv = document.createElement("div"); // fÃ¼r jeden Rezept wird ein neues Kontainer erstellt und mit den Daten aus der Datenbank befÃ¼llt

				    newDiv.innerHTML = '<table ><tr><td><div id="rezeptBlock" class="rezepte"> <form action="IngredientsCalc" method="get">	<input type="hidden" name="calc" value="true"><input type="hidden" name="goTo" value="/KategorienNew.jsp"> <table border="1"  ><tr> <td  align="center" width="100px" > Bild</td><td id="tdRezept" width="450px" >'+rezepte[n]+'</td>		<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td>	</tr></table></form></div></td><td ><div class="vorschau" style="height:100%;" ></div></td></tr><table>';
				    
			         
					my_div = document.getElementById("out");
			    	my_div.appendChild(newDiv);
			    	
					}}
			
			
				//Suchfunktion
				
				gesuchtesWort=document.getElementById("thisRecipe").value;				
				
				var rezepte = document.getElementsByClassName("rezepte");
				var rezeptID = document.getElementsByClassName("rezeptID"); // Name von einem Rezept=Link zur Rezeptvorschau
		    	   	for (var i=0; i<rezeptID.length; i++){
		    				
		    			if (!rezeptID[i].innerHTML.includes(gesuchtesWort)){
		    				rezepte[i].style.backgroundColor="red";
		    				rezepte[i].parentElement.parentElement.remove();
		    				i=i-1; 
		    			}
		    	
					}
		    	   	var pageTitle = document.getElementById("title");
			    	pageTitle.innerHTML="Rezepte: "+gesuchtesWort[0].toUpperCase()+gesuchtesWort.substr(1); 
		    	   	
			
			//Tasten zum Rezeptvorschau einfügen
			var rezeptID = document.getElementsByClassName("rezeptID"); // Name von einem Rezept=Link zur Rezeptvorschau
    	   	for (i=0; i<rezeptID.length; i++){
    			var n=rezeptID[i].innerHTML;	    		
    	  		
			
    	   			document.getElementsByClassName("vorschau")[i].innerHTML='<form action="IngredientsCalc"><input type="hidden" name="calc" value="false"><input type="hidden" name="vorschau" value="'+n+'"><input type="hidden" name="goTo" value="/RezeptVorschauNew.jsp"><input type="submit" id="rezeptSeite"  class="nB"  style="height:123px;" value=">" ></form>';
				}
		
			
			
			//Nicht notwendige Information ausblenden
			var rid = document.getElementsByClassName("rezeptID"); // RezeptID ausblenden
	    	
	    	for (i=0; i<rid.length; i++){
	    		 rid[i].innerHTML ="" ;
	    	}
			
			var beschreibung = document.getElementsByClassName("be"); // Rezeptzubereitung ausblenden
	    	
	    	for (i=0; i<beschreibung.length; i++){
	    		beschreibung[i].innerHTML ="" ;
	    	}
	    	
	    	var zutatenliste = document.getElementsByClassName("zu"); // Zutatenliste ausblenden
	    	for (i=0; i<zutatenliste.length; i++){
	    		zutatenliste[i].innerHTML ="" ;
	    	}
			
			

			
			}else{ // wenn keine ID-Rezept vorhanden ist....
				var my_div = newDiv = null;
				var newDiv = document.createElement("div");
		        newDiv.innerHTML = ":(";
				my_div = document.getElementById("out");
		    	my_div.appendChild(newDiv);
				}
			
			
		
			}
		if (req.status==404){
			console.log('File or resource not found');
		}
	}

};



req.open('GET', 'DB/DB-Kategorie.html', true);




req.send();




 
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
     

