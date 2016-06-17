$(document).ready(fillDataProduct);

function fillDataProduct(){
    var id= getParameterByName("slID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/getFAQ.php", //Relative or absolute path to file.php file
        data: {slID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
           
		   var el="";
			
		  var sidebar = "";
		  var header = "";
           
		   	header += "  <h3 class='panel-title tim-header'><a href='smart_life.html'>Smart Life</a> > <a href='smartlife_by_category.html?categoryID="+result[0].sl_categoryID+"'>"+result[0].sl_category_name+"</a> > "+result[0].sl_name+" </h3>";  
		  
		   sidebar += " <li><a href='SL_descrizione.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"' id='no_active'>Descrizione</a></li>";
		   sidebar += "   <ul class='nav nav-stacked' id='submenu'></ul>";    
		   sidebar += " <li><a href='attivazione_e_regole.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"' id='no_active'>Attivazione e regole</a></li>";
		   sidebar += " <li class='active'><a href='faq.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"'>FAQ</a></li>";

          for(var i=0;i<result.length;i++){
                console.log(result[i].slID);
                
                el+= "<li><p>"+result[i].question+" </p><p>"+result[i].answer+"</p></li> ";                

            }
          
          
          $('#header').html(header); 
		  $('#sidebar').html(sidebar);
          $('#faq-section').html(el);
          
          
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
