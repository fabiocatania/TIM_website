$(document).ready(fillHighlights);

function fillHighlights(){
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_highlights.php", //Relative or absolute path to file.php file
        success: function(response) {
            console.log(JSON.parse(response));
            var high=JSON.parse(response);
            var list="";

			
			for(var i=0;i<high.length;i++){
				if(high[i].highlights==1){
					
					list+= "<div class='panel panel-default faq-box'><div class='panel-body'><h4 class='panel-title'><a id='text_list' href='servizio_di_assistenza.html?categoryID="+high[i].ass_categoryID+"?serviceID="+high[i].assistance_service_id+"'>"+high[i].assistance_service_name+"</a></h4></div></div>"
				}
			}
			
				$('#as_list').html(list);  

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