$(document).ready(fillAssistByCat);

function fillAssistByCat(){
      var id= getParameterByName("serviceID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_servizio_di_assistenza.php", //Relative or absolute path to file.php file
        data: {serviceID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var service=JSON.parse(response);
            var bar="";
			
			bar+="<div class='panel panel-default intestazione'><div class='panel-body'><h3 class='panel-title tim-header'>";
			bar+="<a href='assistenza.html'>Assistenza</a> > <a href='assistance_by_category.html?categoryID="+service[0].assistance_category_id+"'>"+service[0].assistance_category_name+"</a> > <a href='servizio_di_assistenza.html?categoryID="+service[0].assistance_category_id+"?serviceID="+service[0].assistance_service_id+"'>"+service[0].assistance_service_name+"</a> > Dispositivi supportati </h3></div></div>";
			
  			fillDevices();
			
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

function fillDevices(){
      var id= getParameterByName("serviceID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_devices_for_as.php", //Relative or absolute path to file.php file
        data: {serviceID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var device=JSON.parse(response);
            var devices="";
			
			for(var i=0;i<device.length;i++){
					devices+= "<div class='col-sm-3 col-md-3 single-product'>";
				   devices+= "<div class='thumbnail thumbox'>";
				   devices+= "<a href='device.html?categoryID="+device[i].categoryID+"?productID="+device[i].productID+"'>";
					devices+=  "<img class='img-responsive' src='"+device[i].photo_preview+"' alt='...'>";
				   devices+= "</a>";
				  devices+=  "<div class='caption'>";
					devices+=  "<h4 class='product-name'><a href='device.html?categoryID="+device[i].categoryID+"?productID="+device[i].productID+"'>"+device[i].name+"</a></h4>";
					 devices+=   "<p class='product-price'> "+device[i].price+"</p>";
					 devices+=   "<p class='dettagli-button'><a href='device.html?categoryID="+device[i].categoryID+"?productID="+device[i].productID+"' class='btn btn-primary' role='button'>Dettagli</a></p>";
					devices+=  "</div>";
					devices+="</div>";
				 devices+= "</div>";
				
			}
			
			
			$('#devices').html(devices);
  

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}