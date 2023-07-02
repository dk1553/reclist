


$('.navTrigger').click(function () {
$(this).toggleClass('active');
console.log("Clicked menu");
$("#mainListDiv").toggleClass("show_list");
$("#mainListDiv").fadeIn();

});


var counter = 0
function request(filename,create){
	var oreq = new XMLHttpRequest();
	var tempstring = "";
	oreq.onreadystatechange = function() {
		if (oreq.readyState == 4) {
			if (oreq.status == 200) {

				var searchId = '.'; // Gesuchte ID-Rezept
				str = '\u003ctable[^\0@]*@*' + searchId
						+ '[^\0i]*[^@]*\u002ftable\u003e'; // regex fÃ¼r ID-Rezept
				var reg = new RegExp(str, 'g');
				rezepte = oreq.responseText.match(reg); // suche naach dem ID-Rezept

				if (rezepte != null) { // prÃ¼fung, ob das vohanden ist 
					var random = Math.floor(Math.random() * rezepte.length)
					var my_div = newDiv = null;
					if (create == false){
						newDiv = document.getElementById("rezeptBlock");
					}
					else{
						var newDiv = document.createElement("div"); // ein Kontainer erstellen fÃ¼r die Kategorie
						newDiv.setAttribute("id","rezeptBlock");
						newDiv.setAttribute("class","rezepte");
						newDiv.innerHTML = '';
						my_div = document.getElementById("out");
						my_div.appendChild(newDiv);
					}
					
					tempstring = '<td id="tdRezept" style="color: black;" >'+ rezepte[random] + '</td>';
					var rezeptID = $('#tdRezept','<div><table>'+ tempstring +'</table></div>').children().attr('id'); //get id of table in Kategorie
					console.log(rezeptID);
					var path = '${pageContext.request.contextPath}/images/' + rezeptID + '.jpg';
					var bild = '<td align="center" width="300"><image width="300px" height="300px" src ="' + path +'"></td>';
					
					newDiv.innerHTML = '<form action="IngredientsCalc" method="get"> <input type="hidden" name="calc" value="true"><input type="hidden" name="goTo" value="/KategorienNew.jsp"><table border="1" id="tablette" ><tr><td><button type="button" onclick="buttonprevious()">Previous</button></td>' + bild + tempstring + '<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td><td><button type="button" onclick="buttonnext()">Next</button></td>	</tr></table> </form>';
					
					var beschreibung = document.getElementsByClassName("be"); // Rezeptzubereitung ausblenden

					for (i = 0; i < beschreibung.length; i++) {
						beschreibung[i].innerHTML = "";
					}

					var rid = document.getElementsByClassName("rezeptID"); // RezeptID ausblenden
			    	
			    	for (i=0; i<rid.length; i++){
			    		rid[i].innerHTML ="" ;
			    	}
					
					var zutatenliste = document.getElementsByClassName("zu"); // Zutatenliste ausblenden
					for (i = 0; i < zutatenliste.length; i++) {
						zutatenliste[i].innerHTML = "";
					}

					var zutatenServlet = document.getElementsByClassName("ser"); // Zutaten fÃ¼r Servlet-Bearbeitung ausblenden
					for (i = 0; i < zutatenServlet.length; i++) {
						zutatenServlet[i].innerHTML ="" ;
						
						
						
						  for(n=0;n<rezepte.length; n++){ // es kÃ¶nnen mehrere Rezepte der Suche entsprechen
								var my_div = newDiv = null;
								var pp = document.getElementById("pp");
								
								

								  pp.innerHTML = '<form action="IngredientsCalc" method="get"><button type="button" onclick="buttonprevious()">Previous</button><input type="hidden" name="goTo" value="/HomePageNew.jsp"> <input type="hidden" name="calc" value="true">	<table border="1"  ><tr> <td  align="center" width="100px" > Bild</td><td id="tdRezept" width="450px" >'+rezepte[n]+'</td>		<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td>	</tr></table></form>';
								  


						    	
						    	
								
								}
								
						
						
					}
				} else { // wenn keine ID-Rezept vorhanden ist....
					var my_div = newDiv = null;
					var newDiv = document.getElementById("rezeptBlock");
					newDiv.innerHTML = '<button type="button" onclick="buttonprevious()">Previous</button>:(<button type="button" onclick="buttonnext()">Next</button>';
				}
				
				
				
				
			}
			if (oreq.status == 404) {
				console.log('File or resource not found');
			}
		}

	};
	oreq.open('GET', filename, true);
	oreq.send();
}
$(document).ready(function() {
	counter = 0;
	request("DB/DB-Kategorie.html",true);
	$('#rezeptBlock').css( "border", "3px solid pink" );
});
function buttonnext(){
	if (counter == 0){
		counter++;
		request("DB/DB-Kategorie.html",false);
	}
	else if (counter == 1){
		counter++;
		request("DB/DB-Kategorie.html",false); //no id
	}
	else if (counter == 2){
		counter++;
		request("DB/DB-Kategorie.html",false);
	}
	else if (counter == 3){
		counter = 0
		request("DB/DB-Kategorie.html",false);
	}
}
function buttonprevious(){
	if (counter == 0){
		counter = 3;
		request("DB/DB-Kategorie.html",false);
	}
	else if (counter == 1){
		counter--;
		request("DB/DB-Kategorie.html",false);
	}
	else if (counter == 2){
		counter--;
		request("DB/DB-Kategorie.html",false);
	}
	else if (counter == 3){
		counter--;
		request("DB/DB-Kategorie.html",false); // no id
	}
}
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
        $(document).scroll(function() {
          var y = $(this).scrollTop();
          if (y > 300) {
            $('.colo').fadeIn();
          } else {
            $('.colo').fadeOut();
          }
        });

    
 