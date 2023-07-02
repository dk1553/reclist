      
        $('.navTrigger').click(function () {
    $(this).toggleClass('active');
    console.log("Clicked menu");
    $("#mainListDiv").toggleClass("show_list");
    $("#mainListDiv").fadeIn();

});



$(document).ready(function(){
	 
	 $('#button').click(function(){
	   $('#txt1').val("Button clicked");
	 });
	});


	var counter = 0;

	function addIngredient(){
		
		
		var select = document.getElementById("Zutaten");
		var $tr = $(select).closest("tr");
		if (!$($tr).is(':empty')){
		
		var row = select.insertRow(0);
		
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		
		cell1.innerHTML = `<input  type="text" class="form__field"
			placeholder="Zutat" name="Zutat" id='zutat' required /> <label
			for="zutat" class="form__label">Zutat</label>
			`;
		cell2.innerHTML = `<input type="text" class="form__field"
			placeholder="Menge" name="Menge" id='menge' required /><label
			for="menge" class="form__label">Menge</label>
			`;
		cell3.innerHTML = `<select name="Einheit" class="select-wrapper">
			<option>Gramm</option>
			<option>Kilogramm</option>
			<option>Liter</option>
			`;
		cell4.innerHTML =`<button type="button" id="DeleteZutat" class="btn-hover color-1" onclick="removeIngredient()">Zutat löschen</button>`
		cell5.innerHTML = `<button type="button" id="AddZutat" class="btn-hover color-1" onclick="addIngredient()">+Zutat</button>`
		}
	}

	function removeIngredient(){
		var select = document.getElementById("Zutaten");
		
		if(select.rows.length > 1){
				var $tr = $(event.target).closest("tr");
		$tr.remove();
		}
	}


	function addtag(){
		var select = document.getElementById("Tags");
		
		var row = select.insertRow(0);
		
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		
		cell1.innerHTML = `<input name="tag" type="text" class="form__field" placeholder="Tag" name="tag"
			id='tag' required /> <label for="tag" class="form__label">Tags</label>`;
		cell2.innerHTML =`<button type="button" id="addTag" class="btn-hover color-1" onclick="addtag()">+Tag</button>`;
		cell3.innerHTML = `<button type="button" id="deleteTag" class="btn-hover color-1" onclick="removeTag()">Tag löschen</button>`;
	}


	function removeTag(){
		var select = document.getElementById("Tags");
		if(select.rows.length > 1){
				var $tr = $(event.target).closest("tr");
			}
				
		$tr.remove();
		
	}





   
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.nav').addClass('affix');
                console.log("OK");
            } else {
                $('.nav').removeClass('affix');
            }
        });
     
 
    
