$(document).ready(fillCategories);

function fillCategories(){
    var id=1;
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_category_sl.php", //Relative or absolute path to file.php file
        success: function(response) {
            console.log(JSON.parse(response));
            var categories=JSON.parse(response);
            var first_row="";
			var second_row="";
            for(var i=0;i<categories.length;i++){
                console.log(categories[i].name);
                if(i < 2){
					first_row += "	<div class='row'><div class='col-sm-3 col-md-3 single-product'>";
					first_row += "	<div class='thumbnail'><a href='smartlife_by_category.html?categoryID="+categories[i].sl_category_id+"'>";
					first_row += "	<img class='img-responsive' src='"+categories[i].picture+"' alt='"+categories[i].sl_category_name+"'>";
					first_row += "	</a></div><a href='smartlife_by_category.html?categoryID="+categories[i].sl_category_id+"' class='btn btn-primary btn-large btn-block'>"+categories[i].sl_category_name+"</a></div>";
				}
				else{
					second_row += "	<div class='row'><div class='col-sm-3 col-md-3 single-product'>";
					second_row += "	<div class='thumbnail'><a href='smartlife_by_category.html?categoryID="+categories[i].sl_category_id+"'>";
					second_row += "	<img class='img-responsive' src='"+categories[i].picture+"' alt='"+categories[i].sl_category_name+"'>";
					second_row += "	</a></div><a href='smartlife_by_category.html?categoryID="+categories[i].sl_category_id+"' class='btn btn-primary btn-large btn-block'>"+categories[i].sl_category_name+"</a></div>";
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