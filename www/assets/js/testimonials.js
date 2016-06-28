$(document).ready(fillTestimonials);

function fillTestimonials(){
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://fabiostim.altervista.org/assets/php/testimonials.php", //Relative or absolute path to file.php file 
        success: function(response) {
            console.log(JSON.parse(response));
            var testimonials=JSON.parse(response);
            var el="";
            for(var i=0;i<testimonials.length;i++){
                console.log(testimonials[i].id);
                
                if(testimonials[i].id%2 === 1){
                  
                    el+= "<div class='row'><div class='col-md-6'><p>"+testimonials[i].text+"</p></div><div class='col-md-6'><div align='center' class='embed-responsive embed-responsive-16by9'><iframe width='500' class='embed-responsive-item thumbnail' src='"+testimonials[i].media+"'></iframe></div></div></div><hr class='red_hr'><hr class='white_hr'>"; 
                } 
                else{
                   el+= "<div class='row'><div class='col-md-6'><div align='center' class='embed-responsive embed-responsive-16by9'><iframe width='500' class='embed-responsive-item thumbnail' src='"+testimonials[i].media+"'></iframe></div></div><div class='col-md-6'><p>"+testimonials[i].text+"</p></div></div><hr class='red_hr'><hr class='white_hr'>"; 
                }  
            }
            
            $('#testimonials-container').html(el);

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}