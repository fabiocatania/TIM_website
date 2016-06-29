$(document).ready(fillDataProduct);

function fillDataProduct(){
    var id= getParameterByName("slID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/getSL.php", //Relative or absolute path to file.php file
        data: {slID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
           
			var submenu="";
		  var description="";
          var products = "";
		  var sidebar = "";
		  var header = "";
          
		header += "  <h3 class='panel-title tim-header'><a href='smart_life.html'>Smart Life</a> > <a href='smartlife_by_category.html?categoryID="+result[0].sl_categoryID+"'>"+result[0].sl_category_name+"</a> > "+result[0].sl_name+"</h3>";  
		  
       sidebar += " <li class='active'><a href='SL_descrizione.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"'>Descrizione</a></li>";
       sidebar += "   <ul class='nav nav-stacked' id='submenu'></ul>";    
	   sidebar += " <li><a href='attivazione_e_regole.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"' id='no_active'>Attivazione e regole</a></li>";
          
      if (result[0].faq == 1){
       sidebar += " <li><a href='faq.html?categoryID="+result[0].sl_categoryID+"?slID="+result[0].slID+"' id='no_active'>FAQ</a></li>";
      }
       submenu += "<li><a href='#sec1' id='no_active'>Cosa è "+result[0].sl_name+"</a></li>";
      description += "<p id='sec1' class= 'anchor'> </p><h2>Cosa è "+result[0].sl_name+"</h2><p>"+result[0].sl_description +"</p><hr class='red_hr'><hr class='white_hr'>";    
          
       fillLinkedProducts();
          $('#header').html(header); 
		  $('#sidebar').html(sidebar);
          $('#submenu').html(submenu);
          $('#description').html(description);
        
          
          
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


function fillLinkedProducts(){
	
	var id= getParameterByName("slID");
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_linkedProducts.php", //Relative or absolute path to file.php file
        data: {slID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var connectedProducts = "";
            var il = "";
          
          if (result.length > 0){
            
            il +="<li><a href='#sec2' id='no_active'>Prodotti</a></li>";
            
			connectedProducts += "<p id='sec2' class= 'anchor'> </p>	<h2>Prodotti</h2> <div class='row'> ";
					
				   for(var i=0;i<result.length;i++){
					connectedProducts += "<div class='col-sm-4 col-md-3 single-product'> <div class='thumbnail thumbox'> <a href='device.html?categoryID="+result[i].categoryID+"?productID="+result[i].productID+"'><img class='img-responsive' src='"+result[i].photo_preview+"' alt='"+result[i].name +"'></a><div class='caption'><h4 class='product-name'><a href='device.html?categoryID="+result[i].categoryID+"?productID="+result[i].productID+"'>"+result[i].name +"</a></h4></div></div></div>";
			
				  }    
		  
		  	connectedProducts += "</div><hr class='red_hr'><hr class='white_hr'>";
		  
		  $('#submenu').append(il);
          $('#products-section').html(connectedProducts);
      }

          
          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}
