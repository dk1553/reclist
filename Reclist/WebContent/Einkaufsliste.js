      
        $('.navTrigger').click(function () {
    $(this).toggleClass('active');
    console.log("Clicked menu");
    $("#mainListDiv").toggleClass("show_list");
    $("#mainListDiv").fadeIn();

});



function addZutaten(){
	leerDiv = document.getElementById("leer");
	leerDiv.innerHTML="";
	addElemDiv = document.getElementById("addElem");
	var inputDiv = document.createElement("div");
	
	
	
	
	inputDiv.innerHTML='<label class="l" ><input placeholder="Zutate" type="text" name="newIngr" ><input  type="number" step="0.01" name="newMenge" placeholder="Menge"><input placeholder="Einheit" type="text" name="newEinheit"></label>';
	
	addElemDiv.appendChild(inputDiv);
	
	
	
}	
var e=0; // nach dem aller erten klick auf der Taste wirden keine Elemente gelöscht, zuerst wird die Funktion "Liste-Bearbeiten" aktiviert

function elementDelete(){
	
//Funktion "Liste-Bearbeiten" aktivieren	
e=e+1;
del = document.getElementById("del");
del.innerHTML="Löschen";


addZutat = document.getElementById("addZutat");
addZutat.style.visibility ="visible";
sub = document.getElementById("sub");
sub.style.visibility ="visible";





cancel = document.getElementById("cancel");
cancel.style.visibility ="visible";




list = document.getElementById("checklist");



if(e>1){ // nun können ausgewählte Elemente gelöscht werden
var elements = document.getElementsByClassName("l");




for (var i=0; i<elements.length; i++){
	
	if(elements[i].checked==true){
		if(elements.length>2){
			list.removeChild(elements[i+1]);
			list.removeChild(elements[i]);
			i=0;}
	}	
	}
for (var i=0; i<elements.length; i++){
	
	if(elements[i].checked==true){
		if(elements.length>2){
			list.removeChild(elements[i+1]);
			list.removeChild(elements[i]);
			i=0;}
	}	
	}


}

}

