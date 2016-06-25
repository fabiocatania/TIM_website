$(document).ready(fillPromoSL);

function fillPromoSL(){
    var id= getParameterByName("productID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiotim.altervista.org/assets/php/get_sl_in_promo.php", //Relative or absolute path to file.php file
        data: {productID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var sl=JSON.parse(response);
            var el="";
            
			for(var i=0;i<sl.length;i++){
				if(sl[i].promo==1){
					console.log(sl[i].sl_name);
					
					el+= "<div class='row single-smartlife'> <a href='SL_descrizione.html?categoryID="+sl[i].sl_categoryID+"?slID="+sl[i].slID+"' class='thumbnail'> <img src='"+sl[i].sl_photo_preview+"' class= 'smart-life-image img-responsive' alt='"+sl[i].sl_name+"'></a></div>"
				}
			}
			
            $('#sl_container').html(el);
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