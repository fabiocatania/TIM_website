$(document).ready(fillAssistByCat);

function fillAssistByCat(){
      var id= getParameterByName("categoryID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiotim.altervista.org/assets/php/get_assist_by_cat.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var assist=JSON.parse(response);
            var bar="";
			
			bar+="<div class='panel panel-default intestazione'><div class='panel-body'><h3 class='panel-title tim-header'>";
			bar+="<a href='assistenza.html'>Assistenza</a> > "+assist[0].assistance_category_name+"</h3></div></div>";
            
			fillLinkedAS();
			
			$('#bar').html(bar);

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


function fillLinkedAS(){
    var id= getParameterByName("categoryID");

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_linked_AS.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var list="";

			for(var i=0;i<result.length;i++){
					list += "<li><h4><a href='servizio_di_assistenza.html?categoryID"+result[i].ass_categoryID+"?serviceID="+result[i].assistance_service_id+"'>"+result[i].assistance_service_name+"</a></h4></li>";      
				} 
	
				$('#as_list').html(list);  

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}