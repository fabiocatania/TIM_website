$(document).ready(fillAssistFor);

function fillAssistFor(){
      var id= getParameterByName("productID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_assist_for.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var bar="";
			
			bar+="<div class='panel panel-default intestazione'><div class='panel-body'> <h3 class='panel-title tim-header'><a href='prodotti.html'>Prodotti</a>";
			bar+=" > <a href='devices_by_category.html?categoryID="+result[0].product_category_id+"'>"+result[0].product_category_name+"</a> > <a href='device.html?categoryID="+result[0].product_category_id+"?productID="+result[0].productID+"'> "+result[0].name+" </a> > Assistenza per "+result[0].name+"</h3></div></div></div>";     
			
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
    var id= getParameterByName("productID");

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_linked_AS_for_device.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var list="";

			for(var i=0;i<result.length;i++){
					list+= "<div class='panel panel-default faq-box'><div class='panel-body'><h4 class='panel-title'><a id='text_list' href='servizio_di_assistenza.html?categoryID="+result[i].ass_categoryID+"?serviceID="+result[i].assistance_service_id+"'>"+result[i].assistance_service_name+"</a></h4></div></div>";
				} 
	
				$('#as_list').html(list);  

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}