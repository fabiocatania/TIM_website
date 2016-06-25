$(document).ready(fillAssistByCat);

function fillAssistByCat(){
      var id= getParameterByName("serviceID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiotim.altervista.org/assets/php/get_servizio_di_assistenza.php", //Relative or absolute path to file.php file
        data: {serviceID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var service=JSON.parse(response);
			var menulaterale="";
            var bar="";
			var service_content="";
			
			bar+="<div class='panel panel-default intestazione'><div class='panel-body'><h3 class='panel-title tim-header'>";
			bar+="<a href='assistenza.html'>Assistenza</a> > <a href='assistance_by_category.html?categoryID="+service[0].assistance_category_id+"'>"+service[0].assistance_category_name+"</a> > "+service[0].assistance_service_name+"</h3></div></div>";
			
			menulaterale +="<li><a href='#sec0' id='no_active'>Servizio</a></li> <li><a href='for_device(s)_2.html?categoryID="+service[0].assistance_category_id+"?serviceID="+service[0].assistance_service_id+"' id='no_active'>Valido per questi dispositivi</a></li>";
            service_content += "<h3>"+service[0].assistance_service_name+"</h3><div class='row'><div class='col-md-6'><p>"+service[0].assistance_service_description+"</p></div><div class='col-md-6'><img src='"+service[0].assistance_service_picture+"' class='img-responsive'></div></div><hr class='red_hr'><hr class='white_hr'>";                

			
			$('#bar').html(bar);
			$('#sidebar').html(menulaterale);
			$('#service_content').html(service_content);    

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