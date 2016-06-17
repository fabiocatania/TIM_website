$(document).ready(fillAssistByCat);

function fillAssistByCat(){
      var id= getParameterByName("categoryID");
      
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_assist_by_cat.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var assist=JSON.parse(response);
            var content="";
			
			content += " <div class='panel panel-default intestazione' id = 'navpath' >";
  content += "<div class='panel-body'>";
    content += "<h3 class='panel-title tim-header'><a href='assistenza.html'>Assistenza</a> > "+assist[0].assistance_category_name+"</h3></div></div>  ";
	fillSidebar();
	fillLinkedBT();
  
  			/* <div class='row'>";
  			content += "<div class='col-md-3' id='leftCol'>";
        
          
                 content += "   <div class='well well_tim'> ";
                 content += "   <ul class='nav nav-pills nav-stacked' id='sidebar'>";
                    content += "  <li><a href='#sec1' id='no_active'>"+assist[0].bt1+"</a></li>";
                    content += "  <li><a href='#sec2' id='no_active'>"+assist[0].bt2+"</a></li>";
                    content += "  <li><a href='#sec3' id='no_active'>"+assist[0].bt3+"</a></li>";
                  content += "  </ul>";
                 content += "   </div> </div>  ";
      		content += "<div class='col-md-9' id='assistlist'>";
              
              <!-- content1 -->	
			  
             content += " <p id='sec1' class= 'anchor'> </p>  ";
             content += " <h2>"+assist[0].bt1+"</h2><p>";
                    
                content += "<li><a href='servizio_di_assistenza.html?categoryID="+assist[0].id+"?serviceID="+assist[0].asid1+"'<li>"+assist[0].as1+"</li></a></li>";
                       content += " <li>"+assist[0].as2+" </li>";
                      content += "  <li>"+assist[0].as3+" </li>";
                     content += "   <li> "+assist[0].as4+"</li>";
        
                content += "</p><hr>";
	
              
              <!-- content2 -->	
             content += " <p id='sec1' class= 'anchor'> </p> "; 
            content += "  <h2>"+assist[0].bt2+"</h2><p>";
                    
               content += "         <li> "+assist[0].as5+"</li>";
                content += "        <li> "+assist[0].as6+"</li>";
                content += "        <li> "+assist[0].as7+"</li>";
                content += "        <li>"+assist[0].as8+" </li>";
        
                content += "    </p><hr>";
              
              <!-- content3 -->	
            content += "  <p id='sec1' class= 'anchor'> </p>  ";
            content += "  <h2>"+assist[0].bt3+"</h2><p>";
			
                 content += "   	<li>"+assist[0].as9+" </li>";
                  content += "      <li> "+assist[0].as10+"</li>";
                  content += "      <li> "+assist[0].as11+"</li>";
                  content += "      <li> "+assist[0].as12+"</li>";
        
                content += "</p><hr></div></div>";
	*/
            
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


function fillSidebar(){
    var id= getParameterByName("categoryID");

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_linked_BT.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var connectedBT = "";
          
		for(var i=0;i<result.length;i++){
					connectedBT +="<p id='sec"+(i+1)+"' class= 'anchor'> </p> <h2>"+result[i].bt_name+"</h2>";
	
		}
		
				$('#connectedBT').html(connectedBT);      

          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

function fillLinkedBT(){
    var id= getParameterByName("categoryID");

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "./assets/php/get_linked_BT.php", //Relative or absolute path to file.php file
        data: {categoryID:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var result=JSON.parse(response);
            var sidebar = "";
         sidebar += "<div class='col-md-3' id='leftCol'>";
         sidebar += "   <div class='well well_tim'> ";
		 sidebar += "   <ul class='nav nav-pills nav-stacked' id='sidebar'>";
		 
		for(var i=0;i<result.length;i++){
			sidebar += "  <li><a href='#sec"+(i+1)+"'' id='no_active'>"+result[i].bt_name+"</a></li>";
			
			//NON RIESCO A CHIAMARE ALTRA FUNZIONE QUI
                  
	
		}
		sidebar += "  </ul></div> </div> ";
		
				$('#sidebar').html(sidebar);      

          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}
