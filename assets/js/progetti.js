$(document).ready(fillProjects);

function fillProjects(){
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/progetti.php", //Relative or absolute path to file.php file 
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var el="";
            var submenu= "";
            for(var i=0;i<result.length;i++){
                console.log(result[i].id);
                              
                if(result[i].name === "Intro"){
                    el+="<h2>"+result[i].name+"</h2><p>"+result[i].text+"</p><hr class='red_hr'><hr class='white_hr'>";
                }
                else{
                  if(result[i].id%2 === 1){
                                  submenu+= "<li><a href='#sec"+i+"' id='no_active'>"+result[i].name +"</a></li>";

                  
                    el+= "<p id='sec"+i+"' class= 'anchor'></p>	<h2>"+result[i].name+"</h2><div class='row'><div class='col-md-6'><p>"+result[i].text+"</p></div><div class='col-md-6'><img src='"+ result[i].picture+"' class='img-responsive'></div></div><hr class='red_hr'><hr class='white_hr'>"; 
                  } 
                  else{

                                    submenu+= "<li><a href='#sec"+i+"' id='no_active'>"+result[i].name +"</a></li>";

                     el+= "<p id='sec"+i+"' class= 'anchor'></p>	<h2>"+result[i].name+"</h2><div class='row'><div class='col-md-6'><img src='"+ result[i].picture+"' class='img-responsive'></div><div class='col-md-6'><p>"+result[i].text+"</p></div></div><hr class='red_hr'><hr class='white_hr'>"; 
                  }  
                
                }
              }
            
            $('#submenu').html(submenu);
            $('#projects-container').after(el);
        },
        error: function(request,error) 
        {
            console.log("Error " + error);
        }
    });
}