$(document).ready(fillAssist);

function fillAssist(){
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/get_assist.php", //Relative or absolute path to file.php file
        success: function(response) {
            console.log(JSON.parse(response));
            var assist=JSON.parse(response);
            var content="";
			for(var i=0;i<assist.length;i++){
				content += "<div class='assist_"+(i+1)+"'>";
					content +="<a href='assistance_by_category.html?categoryID="+assist[i].assistance_category_id+"'>";
					content += "<img src='"+assist[i].assistance_category_logo+"' id='ass_logo'></a>";
					content +="<a id='ass_text' href='assistance_by_category.html?categoryID="+assist[i].assistance_category_id+"'>"+assist[i].assistance_category_name+"</a></div>";
			}
            
			$('#content').html(content);

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}