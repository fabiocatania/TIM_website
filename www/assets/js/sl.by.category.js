$(document).ready(fillProducts);

function fillProducts(){
    var id= getParameterByName("categoryID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_sl_by_category.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var sl=JSON.parse(response);
            var el="";
			var navpath="";
			
			navpath += "<div class='panel-body'> <h3 class='panel-title tim-header'>"+sl[0].sl_category_name+"</h3> </div>"
            
			for(var i=0;i<sl.length;i++){
                console.log(sl[i].name);
                
                el+= "<div class='row single-smartlife'> <a href='SL_descrizione.html?categoryID="+sl[i].sl_category_id+"?slID="+sl[i].slID+"' class='thumbnail'> <img src='"+sl[i].sl_photo_preview+"' class= 'smart-life-image img-responsive' alt='"+sl[i].sl_name+"'></a></div>"
            }
            
			$('#navpath').html(navpath);
			
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