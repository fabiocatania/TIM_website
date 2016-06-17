$(document).ready(fillPromoProducts);

function fillPromoProducts(){
    var id= getParameterByName("productID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_device_in_promo.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var products=JSON.parse(response);
            var content="";
			
            for(var i=0;i<products.length;i++){
				if(products[i].promo == 1){
					console.log(products[i].name);
								
							   content+="<div class='col-sm-4 col-md-4 single-product'><div class='thumbnail thumbox'>";
					content+="<a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"'>";
					  content+="<img class='img-responsive product-image' src='"+products[i].photo_preview+"' alt='"+products[i].name+"'></a>";
					content+="<div class='caption'>";
					  content+="<h5 class='product-name'><a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"'>"+products[i].name+"</a></h3>";
						content+="<p class='product-price'>"+products[i].price+"</p>";
						content+="<p class='dettagli-button'><a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"' class='btn btn-primary' role='button'>Dettagli</a></p></div></div></div>";
				}
            }
            
			$('#content').html(content);
			
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