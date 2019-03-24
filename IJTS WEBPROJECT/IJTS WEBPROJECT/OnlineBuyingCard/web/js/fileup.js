var xmlHttp;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}


function xxxx(){
 
    try{
      
       var x = document.getElementById("myFile").value;   
      alert(x);
   
        
    }catch(e) {
        alert(e);
    } 
                                
}
function reload(){
    window.location='addCardModel.jsp';
}

