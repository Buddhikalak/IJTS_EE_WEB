var xmlHttp;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}
function loadPrice(){
 
    try{
       // var op = String(document.getElementById("cmmnet").value);
       var op=document.getElementById("cmmnet").value;
       alert(op);
        createXMLHttpRequest();
        xmlHttp.open("POST", "GetPrice", true);
        xmlHttp.onreadystatechange = SetData;
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xmlHttp.send("net="+op);
        
    }catch(e) {
        alert(e);
    } 
                                
}
function removeOptions(selectbox){
    var i;
    for(i=selectbox.options.length-1;i>=0;i--)
    {
        selectbox.remove(i);
    }
}
function SetData(){
    if (xmlHttp.readyState == 4 & xmlHttp.status == 200) {
     var price=xmlHttp.responseText.split("!");
     removeOptions(document.getElementById("xprice"));
     var op=document.getElementById("xprice");
     for(i = 1; i < price.length; i++){
            var cell4 = document.createElement("option");
            cell4.innerHTML=price[i];
            op.appendChild(cell4);
        }
     
    }
}