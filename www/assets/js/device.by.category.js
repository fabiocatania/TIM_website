$(document).ready(fillProducts);

function fillProducts(){
    var id= getParameterByName("categoryID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_products_by_category.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var products=JSON.parse(response);
            var el="";
			var navpath="";
			
			navpath += "<div class='panel-body'> <h3 class='panel-title tim-header'><a href='prodotti.html'>Prodotti</a> > "+products[0].product_category_name+" </h3> </div>";
			
            for(var i=0;i<products.length;i++){
                console.log(products[i].name);
                
                el+= "<div class='col-sm-4 col-md-4 single-product'> <div class='thumbnail thumbox'>";
				el+= "<a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"'>";
				el+= "<img class='img-responsive product-image' src='"+products[i].photo_preview+"'alt='"+products[i].name+"' ></a>";
				el+= "<div class='caption'> <h4 class='product-name'><a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"'>";
				el+= ""+products[i].name+"</a></h4> <p class='product-price'>"+products[i].price+"</p> <p class='dettagli-button'>";
				el+= "<a href='device.html?categoryID="+products[i].categoryID+"?productID="+products[i].productID+"' class='btn btn-primary' role='button'>Dettagli</a>";
				el+= "</p> </div> </div> </div>";                

            }
            
			$('#navpath').html(navpath);
			
            $('#product_container').html(el);
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