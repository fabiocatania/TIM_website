$(document).ready(fillDataAssistance);

function fillDataAssistance(){
    var id= getParameterByName("assistanceID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/getAssistance.php", //Relative or absolute path to file.php file
        data: {assistanceID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            
          var sidebar = "<li><a href='for_device(s)_2.html' id='no_active'>Dispositivi compatibili</a></li>";
          var panelbody = "<h3 class='panel-title tim-header'><a href='assistenza.html'>Assistenza</a> > <a href='#'>"+ result[0].ass_categoryID+"</a> > "+result[0].assistance_service_name+"</h3>";
			var el= "<h2>"+result.name+"</h2><div class='row'><div class='col-md-6'><p>"+result.description+"</p></div><div class='col-md-6'><img src='"+result.picture+"' class='img-responsive'></div></div><hr>";                

         
          
          $('#sidebar').after(sidebar);
          $('#service-space').html(el);
          $('.panel-body').html(panelbody);


          
          
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
