 
$('.navTrigger').click(function () {
$(this).toggleClass('active');
console.log("Clicked menu");
$("#mainListDiv").toggleClass("show_list");
$("#mainListDiv").fadeIn();

});
 
 var req = new XMLHttpRequest();


req.onreadystatechange=function (){
	if(req.readyState==4){
		if(req.status==200){
			
			
			
	
			
			var searchId =document.getElementById("thisRecipe").value; // Gesuchte ID-Rezept
			str='\u003ctable id[^\0@]*@*'+searchId+'[^\0i]*[^@]*\u002ftable\u003e';	 // regex fÃ¼r ID-Rezept
			var reg= new RegExp(str, 'g');
			rezepte=req.responseText.match(reg); // suche naach dem ID-Rezept
			
			if(rezepte!=null){ // prÃ¼fung, ob das vohanden ist 
			
			for(n=0;n<rezepte.length; n++){ // es kÃ¶nnen mehrere Rezepte der Suche entsprechen
			var my_div = newDiv = null;
			var newDiv = document.createElement("div"); // fÃ¼r jeden Rezept wird ein neues Kontainer erstellt und mit den Daten aus der Datenbank befÃ¼llt

	        newDiv.innerHTML = '<div id="rezeptBlock" class="rezepte"> <form action="IngredientsCalc" method="get"><input type="hidden" name="calc" value="true">	<input type="hidden" name="goTo" value="/RezeptVorschauNew.jsp"> <table border="1" ><tr><td id="rezeptName" style="font-size: 30px; font-family: Sans-Serif;" colspan="3"></td></tr><tr> <td id="tdRezept" width="450px" >'+rezepte[n]+'</td>		<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td>	<td  align="center" width="100px" > Bild</td></tr><tr><td id="instruction" colspan="3"></td></tr></table> </form>';

			my_div = document.getElementById("out");
	    	my_div.appendChild(newDiv);
	    	
	    	
	    	
			var rid = document.getElementsByClassName("rezeptID"); // RezeptID ausblenden
	    	
	    	for (i=0; i<rid.length; i++){
	    		rid[i].innerHTML ="" ;
	    	}
			
			
			
	    	// Rezeptzubereitung in eigene Zeile verschieben
	    	var about = document.getElementById("about");
			var instructionNew =document.getElementById("instruction"); 
			instructionNew.innerHTML=about.innerHTML;
			about.innerHTML="";
	    	
			// RezeptName in eigene Zeile verschieben
			var rNameDB = document.getElementsByClassName("ee")[0];
			var rezeptName =document.getElementById("rezeptName"); // Rezeptzubereitung in eigene Zeile verschieben
			rezeptName.innerHTML=rNameDB.innerHTML;
			rNameDB.innerHTML="";
			
			
			$(".zu").find("td:first").css("font-size", "20px");
			
			
			
			}
			
			
			
			}else{ // wenn keine ID-Rezept vorhanden ist....
				var my_div = newDiv = null;
				var newDiv = document.createElement("div");
		        newDiv.innerHTML = "Leider ist ein Fehler aufgetreten";
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
     
 
    
