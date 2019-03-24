var xmlHttp;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}

function validateEmail(){
    var email=document.getElementById("ctypeEmail").value;
    //alert(email);
    try{
        if(email==""){
            swal("Error", "You cant Null email", "error");
        }else{
            createXMLHttpRequest();
            xmlHttp.open("POST", "mailvalidate", true);
            xmlHttp.onreadystatechange = resultEmail;
            xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            xmlHttp.send("mail="+email);
        }
    }catch(e){
        alert(e)
    }
    
}
function resultEmail(){
    if (xmlHttp.readyState == 4 & xmlHttp.status == 200) {
        var msg=xmlHttp.responseText;
        //alert(price);
        if(msg=='ok,You can use this mail'){
            swal("Success", "Valid Mail", "success");
            document.getElementById("ctypeEmail").style.borderColor="GREEN"
            
            
        }
        else if(msg=='error,you have another 2 accounts in this site.'){
            swal("Error", "error,you have another 2 accounts in this site.", "error");  
        }
        else if(msg=='error,you have another 2++ accounts in this site.'){
            swal("Error", "error,you have another 2meny accounts in this site.", "error"); 
        }
        else if(msg=='error'){
            swal("Error", "You cant Create Login", "error");
        }
       
    }else{
        
    }
}


