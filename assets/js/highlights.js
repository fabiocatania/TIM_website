$(document).ready(fillHighlights);

function fillHighlights(){
    var id= getParameterByName("assID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_highlights.php", //Relative or absolute path to file.php file
        data: {assID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var high=JSON.parse(response);
            var first_row="";
			var second_row="";
            
			for(var i=0;i<3;i++){
				first_row += "<div class='col-sm-4 col-md-4 highbox'> <text id='title_box'>"+high[i].hl_title_name+"</text></div>";
			}
			
			for(;i<6;i++){
				
				second_row += "<div class='col-sm-4 col-md-4 highbox'> <text id='title_box'>"+high[i].hl_title_name+"</text></div>";
				
			}
			
			
		/*IF 'HIGHLIGHTS' INSER HERE
		
			for(var i=0;i<high.length;i++){
				if(high[i].highlights==1){
					console.log(high[i].name);
					
					list+= "<li><a id='text_list' href='servizio_di_assistenza.html?categoryID="+high[i].categoryID+"?serviceID="+high[i].serviceID+"'>"+high[i].name+"</a> </li>"
				}
			}
		*/
			
            //$('#list').html(list);
			
			$('#first_row').html(first_row);
			$('#second_row').html(second_row);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
  

}


function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}