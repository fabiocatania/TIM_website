$(document).ready(fillCategories);

function fillCategories(){
    var id=1;
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_category_products.php", //Relative or absolute path to file.php file
        success: function(response) {
            console.log(JSON.parse(response));
            var categories=JSON.parse(response);
            var first_row="";
			var second_row="";
            for(var i=0;i<categories.length;i++){
                console.log(categories[i].product_category_name);
                if(i < 2){
					first_row += "<div class='col-sm-3 col-md-3 single-product'><div class='thumbnail'><a href='devices_by_category.html?categoryID="+categories[i].product_category_id+"'><img class='img-responsive' src='"+categories[i].picture+"' alt='"+categories[i].product_category_name+"'></a></div><a href='devices_by_category.html?categoryID="+categories[i].product_category_id+"' class='btn btn-primary btn-large btn-block'>"+categories[i].product_category_name+"</a></div>";
				}
				else{
					second_row += "<div class='col-sm-3 col-md-3 single-product'><div class='thumbnail'><a href='devices_by_category.html?categoryID="+categories[i].product_category_id+"'><img class='img-responsive' src='"+categories[i].picture+"' alt='"+categories[i].product_category_name+"'></a></div><a href='devices_by_category.html?categoryID="+categories[i].product_category_id+"' class='btn btn-primary btn-large btn-block'>"+categories[i].product_category_name+"</a></div>";
				}
            }

			first_row = "<div class='col-sm-3'> </div>" + first_row + "<div class='col-sm-3'> </div>";
			second_row = "<div class='col-sm-3'> </div>" + second_row + "<div class='col-sm-3'> </div>";

            
            $('.first-row').html(first_row);
			$('.second-row').html(second_row);

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}