$(document).ready(fillDataProduct);

function fillDataProduct(){
    var id= getParameterByName("productID");
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_device.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var device=JSON.parse(response);
           
			var navpath="";
			var glance="";
			var description= "";
     		var technicals = "";
			var assistance = "";
          
          
			navpath += "<div class='panel-body'> <h3 class='panel-title tim-header'><a href='prodotti.html'>Prodotti</a> > <a href='device_by_category.html?categoryID="+device[0].product_category_id+"'>"+device[0].product_category_name+"</a> > "+device[0].name+"</h3> </div>";
                
             glance+= "<div class='col-md-6 main-image-section'><div class='row'><img class='thumbnail' src='"+device[0].bigphoto+"' class='img-responsive main-img'> </div>";
			 glance+="<div class='row'><div class='col-sm-3 col-md-3 little-product-image-section'><a href='#'><img class='img-responsive thumbnail little-img' src='"+device[0].miniphoto1+"'>";
			 glance+="</a></div><div class='col-sm-3 col-md-3 little-product-image-section'><a href='#'><img class='img-responsive thumbnail little-img' src='"+device[0].miniphoto2+"'></a>";
			 glance+="</div><div class='col-sm-3 col-md-3 little-product-image-section'>";
			 glance+="<a href='#'> <img class='img-responsive thumbnail little-img' src='"+device[0].miniphoto3+"'></a></div> <div class='col-sm-3 col-md-3 little-product-image-section'><a href='#'><img class='img-responsive thumbnail little-img' src='"+device[0].miniphoto4+"'>";
			 glance+="</a></div></div></div><div class='col-md-6'><h2>"+device[0].name+"</h2> <hr><p> Caratteristiche:";
			 glance+="</p><li>"+device[0].caratt1+"</li><li>"+device[0].caratt2+"</li>";
			 glance+="<li>"+device[0].caratt3+"</li><li>"+device[0].caratt4+"</li><hr><p>Colore: "+device[0].coloridisp1+" "+device[0].coloridisp2+"</p>  	";
			 glance+="<hr><p>Prezzo: "+device[0].price+" </p><hr> <button type='button' class='btn btn-default btn-lg'><span class='glyphicon glyphicon-star' aria-hidden='true'></span> Acquista</button> </div>";
          
          
          
       description= "<h2>Descrizione</h2><p>"+device[0].description+"</p><hr>";
       technicals = "<h2>Speficiche tecniche</h2><p>"+device[0].techspec+"</p><hr>";
	   assistance = "<h2>Hai bisogno di assistenza di assistenza?</h2><a href='assistance_for.html?categoryID="+device[0].categoryID+"?productID="+device[0].productID+"'> Clicca qui </a><hr>";
		
       
      	 fillLinkedSL();
          
          $('#navpath').html(navpath);
          $('#glance').html(glance);
          $('#description').html(description);
          $('#technicals').html(technicals);
		  $('#assistance').html(assistance);    

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


function fillLinkedSL(){
    var id= getParameterByName("productID");

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_linkedSL.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var connectedSL = "";
          
		for(var i=0;i<result.length;i++){
				  connectedSL += "<h2>Servizi Smart Life collegati</h2><div class='row'><div class='col-sm-4 col-md-3 single-product'><div class='thumbnail smartlife-container'><a href='SL_descrizione.html?categoryID="+result[i].sl_categoryID+"?slID="+result[i].slID+"'><img class='img-responsive' src='"+result[i].sl_photo_preview+"' alt='"+result[i].name+"'></a> <div class='caption'> <h3 class='product-name'><a href='SL_descrizione.html?categoryID="+result[i].sl_categoryID+"?slID="+result[i].slID+"'>"+result[i].sl_name+"</a></h3></div></div></div></div><hr>";
		
		}
				$('#connected-sl').html(connectedSL);      

          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });


}