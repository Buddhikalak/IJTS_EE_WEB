var xmlHttp;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}
function ClickHomePage() {
    window.location='index.jsp';
}
function Signin() {
    window.location='singin.jsp';
}
function bsc() {
    window.location='Bscard.jsp';
}
function profile() {
    window.location='userProfile.jsp';
}
function editUser() {
    window.location='editUser.jsp';
}
function AdminProfile() {
    window.location='viewAdminProfile.jsp';
}
function ClickDashBoard(){
    window.location='DashBoard.jsp';
    
}
function ClickPriceAdd(){
    window.location='priceAdd.jsp';
    
}
function ClickQuickStart(){
    window.location='home.jsp';
    
}
function ClickUserViewAll(){
    window.location='UserViewAll.jsp';
    
}
function ClickAddNetwork(){
    window.location='networkAdd.jsp';
    
}
function ClickNetworkViewAll(){
    window.location='networkViewAll.jsp';
    
}
function addRow() {
          
    var networkName = document.getElementById("netname").value;
    var CompanyName = document.getElementById("cname").value;
    var Address = document.getElementById("address").value;
    var contact = document.getElementById("contact").value;
    var web = document.getElementById("web").value;
    var Customercare = document.getElementById("ccare").value;
    
    if(!networkName.match(/\S/)){
        alert("Network Name Canot be null value");
        window.location='networkAdd.jsp';
    } else if(!CompanyName.match(/\S/)){
        alert("Company Name Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!Address.match(/\S/)){
        alert("Address Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!contact.match(/\S/)){
        alert("contact Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!web.match(/\S/)){
        alert("Website Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!Customercare.match(/\S/)){
        alert("customer care number Canot be null value");
        window.location='networkAdd.jsp';
    }else{
    
    
    
    
        var table = document.getElementById("myTableData");

        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
 
        row.insertCell(0).innerHTML= networkName;
        row.insertCell(1).innerHTML= CompanyName;
        row.insertCell(2).innerHTML= Address;
        row.insertCell(3).innerHTML= contact;
        row.insertCell(4).innerHTML= web;
        row.insertCell(5).innerHTML= Customercare;
        row.insertCell(6).innerHTML= '<input type="button" value = "Remove"  class="btn btn-danger"  onClick="Javacsript:deleteRow(this)">';
 
    }
}
function deleteRow(obj) {
      
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    table.deleteRow(index);
    
}
function GetTableCells(){
    
    //saveNetworkAdd();
    var oTable = document.getElementById('myTableData');
    var tb=oTable.getElementsByTagName("tbody")[0];
    var tr=tb.getElementsByTagName("tr");
    
    var rowLength = oTable.rows.length;
    for (i = 1; i < rowLength; i++){
        var t=   tr[i].getElementsByTagName("td")[0].innerHTML;
        var t1=  tr[i].getElementsByTagName("td")[1].innerHTML;
        var t2=  tr[i].getElementsByTagName("td")[2].innerHTML;
        var t3=  tr[i].getElementsByTagName("td")[3].innerHTML;
        var t4=  tr[i].getElementsByTagName("td")[4].innerHTML;
        var t5=  tr[i].getElementsByTagName("td")[5].innerHTML;
        var t6=  tr[i].getElementsByTagName("td")[6].innerHTML;
    // alert(t+"---"+t1+"---"+t2+"---"+t3+"---"+t4+"---"+t5);
         
    }
}
function saveNetworkAdd(){
    
    var networkName = document.getElementById("netname").value;
    var CompanyName = document.getElementById("cname").value;
    var Address = document.getElementById("address").value;
    var contact = document.getElementById("contact").value;
    var web = document.getElementById("web").value;
    var Customercare = document.getElementById("ccare").value;
    
    if(!networkName.match(/\S/)){
        alert("Network Name Canot be null value");
        window.location='networkAdd.jsp';
    } else if(!CompanyName.match(/\S/)){
        alert("Company Name Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!Address.match(/\S/)){
        alert("Address Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!contact.match(/\S/)){
        alert("contact Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!web.match(/\S/)){
        alert("Website Canot be null value");
        window.location='networkAdd.jsp';
    }else if(!Customercare.match(/\S/)){
        alert("customer care number Canot be null value");
        window.location='networkAdd.jsp';
    }else{
        if(!networkName.match(/\S/)){
            alert("Network Name Canot be null value");
            window.location='networkAdd.jsp';
        } else if(!CompanyName.match(/\S/)){
            alert("Company Name Canot be null value");
            window.location='networkAdd.jsp';
        }else if(!Address.match(/\S/)){
            alert("Address Canot be null value");
            window.location='networkAdd.jsp';
        }else if(!contact.match(/\S/)){
            alert("contact Canot be null value");
            window.location='networkAdd.jsp';
        }else if(!web.match(/\S/)){
            alert("Website Canot be null value");
            window.location='networkAdd.jsp';
        }else if(!Customercare.match(/\S/)){
            alert("customer care number Canot be null value");
            window.location='networkAdd.jsp';
        }else{
            swal({
                title: "Are you sure?",   
                text: "Are You Want To Save this Data!",   
                type: "warning",   
                showCancelButton: true,   
                confirmButtonColor: "#DD6B55",   
                confirmButtonText: "Yes, Save it!",   
                cancelButtonText: "No, cancel plx!",   
                closeOnConfirm: false,   
                closeOnCancel: false
            }, function(isConfirm){
                if (isConfirm) {
            
                    var oTable = document.getElementById('myTableData');
                    var tb=oTable.getElementsByTagName("tbody")[0];
                    var tr=tb.getElementsByTagName("tr");
                    swal("Please Walit!", "Your Data Saving The Database", "success");
                    var rowLength = oTable.rows.length;
                    for (i = 1; i < rowLength; i++){
                        var networkNAme=   tr[i].getElementsByTagName("td")[0].innerHTML;
                        var companyName=  tr[i].getElementsByTagName("td")[1].innerHTML;
                        var address=  tr[i].getElementsByTagName("td")[2].innerHTML;
                        var contact=  tr[i].getElementsByTagName("td")[3].innerHTML;
                        var web=  tr[i].getElementsByTagName("td")[4].innerHTML;
                        var customercare=  tr[i].getElementsByTagName("td")[5].innerHTML;
      
                        //alert(networkNAme+"---"+companyName+"---"+address+"---"+contact+"---"+web+"---"+customercare);
     
                        createXMLHttpRequest();
                        xmlHttp.open("POST", "SaveNetwork", true);
                        xmlHttp.onreadystatechange = AfterSavingNetwork;
                        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                        xmlHttp.send("networkNAme="+networkNAme+"&companyName="+companyName+"&companyaddress="+address+"&contact="+contact+"&web="+web+"&customercare="+customercare);
                    }
                } else {
                    swal("Cancelled", "You are Select Edit again your data", "error");
                }
            });
        }
    }
    function AfterSavingNetwork(){
        if (xmlHttp.readyState == 4 & xmlHttp.status == 200) {
            swal("SucessFully!", "Your Datas Saving No errors", "success")
            window.location="networkAdd.jsp";

        }
    }
  
} 
function loadNetworkDetails(){
    var networkname=document.getElementById("selectnetname").value;

    createXMLHttpRequest();
    xmlHttp.open("POST", "getAllDetailsUseNetName", true);
    xmlHttp.onreadystatechange = setNetDetails;
    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xmlHttp.send("netname="+networkname);
           


}
function setNetDetails(){
    if (xmlHttp.readyState == 4 & xmlHttp.status == 200) {
        var detals= xmlHttp.responseText.split("|");
    
        var netWorkName = document.getElementById("nn");
        netWorkName.value=detals[0];
    
        var cname = document.getElementById("cn");
        cname.value=detals[1];
    
        var address = document.getElementById("addresss");
        address.value=detals[2];
    
        var contact = document.getElementById("cmumber");
        contact.value=detals[3];
    
        var web = document.getElementById("url");
        web.value=detals[4];
    
        var cc = document.getElementById("ccccc");
        cc.value=detals[5];
        
        var ht = document.getElementById("htt");
        ht.value=detals[6];
        
    }
}  
function updateNet(){
      
    
    var nn = document.getElementById("nn").value;
    var cn = document.getElementById("cn").value;
    var ad = document.getElementById("addresss").value;
    var con = document.getElementById("cmumber").value;
    var we = document.getElementById("url").value;
    var cusc = document.getElementById("ccccc").value;
    var ht = document.getElementById("htt").value;
   
    if(!nn.match(/\S/)){
        alert("Network Name Canot be null value");
      
    } else if(!cn.match(/\S/)){
        alert("Company Name Canot be null value");
           
    }else if(!ad.match(/\S/)){
        alert("Address Canot be null value");
         
    }else if(!con.match(/\S/)){
        alert("contact Canot be null value");
          
    }else if(!we.match(/\S/)){
        alert("Website Canot be null value");
        
    }else if(!cusc.match(/\S/)){
        alert("customer care number Canot be null value");
            
    }else{
      
    
                    
        createXMLHttpRequest();
        xmlHttp.open("POST", "NetworkUpdate", true);
        xmlHttp.onreadystatechange = afterupdate;
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xmlHttp.send("networkNAme="+nn+"&companyName="+cn+"&companyaddress="+ad+"&contact="+con+"&web="+we+"&customercare="+cusc+"&id="+ht);
            
      
                    
    }
}
function afterupdate(){
    if (xmlHttp.readyState == 4 & xmlHttp.status == 200) { 
        window.location="networkUpdate.jsp";
    
    }
}
function AttoTAblePrice(){
//alert("ddddd");
    var price = document.getElementById("pp").value;
   // alert(price)
    var n = document.getElementById('netwname').value;
   // alert(n);
  
    if(!price.match(/\S/)){
        alert("Price Canot be null value");
            
    }else{
        
        var table = document.getElementById("myTab");

        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
 
        row.insertCell(0).innerHTML= price;
        row.insertCell(1).innerHTML= n;
        row.insertCell(2).innerHTML= '<input type="button" value = "Remove"  class="btn btn-danger"  onClick="Javacsript:deleteRowww(this)">';
        var v = document.getElementById("pp");
        v.value="";
        
    }
}
function deleteRowww(obj) {
      
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTab");
    table.deleteRow(index);
    
}
function SavePrice(){
    swal({
        title: "Are you sure?",
        text: "Want you Save This data",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "Yes, Save it!",
        cancelButtonText: "No, cancel It!",
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function(isConfirm) {
        if (isConfirm) {
      
            // data saving
      
            var oTable = document.getElementById('myTab');
            var tb=oTable.getElementsByTagName("tbody")[0];
            var tr=tb.getElementsByTagName("tr");
            // swal("Please Walit!", "Your Data Saving The Database", "success");
            var rowLength = oTable.rows.length;
            for (i = 1; i < rowLength; i++){
                var pppp=   tr[i].getElementsByTagName("td")[0].innerHTML;
                var netn=   tr[i].getElementsByTagName("td")[1].innerHTML;
                     
     
                createXMLHttpRequest();
                xmlHttp.open("POST", "savePriceser", true);
                xmlHttp.onreadystatechange = AfterSavePrice;
                xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                xmlHttp.send("Price="+pppp+"&netc="+netn);
            }
      
      
            swal("Saved!", "Your imaginary file has been Saved", "success");
        } else {
            swal("Cancelled", "Your imaginary file is safe :)", "error");
        }
    });
//    
}
function AfterSavePrice(){
   swal("Saving sucessfully!")
  window.location='priceAdd.jsp';
}
function ClickAddCard(){
    window.location='CardAdd.jsp';
    
}
function CardAddtoTable(){
   
   var pinc=document.getElementById("pin").value;
   
   var serialc=document.getElementById("serial").value;
   var Batchc=document.getElementById("batch").value;
var picc=document.getElementById("pic").value;
    alert(picc);
   
   if(pinc===""){
       alert("Pin number Canot be null value");
            
    }else if(serialc===""){
        alert("Serial Number Canot be null value"); 
    }else{
        var table = document.getElementById("MycardTable");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
 
        row.insertCell(0).innerHTML= pinc;
        row.insertCell(1).innerHTML= serialc;
        row.insertCell(2).innerHTML= Batchc;
        row.insertCell(3).innerHTML= "ok";
        row.insertCell(4).innerHTML= '<input type="button" value = "Remove"  class="btn btn-danger"  onClick="Javacsript:DeleteCardTableRow(this)">';
       
       pin="";
       Serial="";
       Batch="";
       
        
    }
    
    
}
function DeleteCardTableRow(obj) {
      
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("MycardTable");
    table.deleteRow(index);
    
} 
function chooseNetwork(id){
  // alert(id);
  window.location='Selectcard.jsp?nid='+id;
    
}
function getTotalProfit(){
  //  alert("ff");
    
    var date1=document.getElementById("datepicker1").value;
    var date2=document.getElementById("datepicker2").value;
    
    if(date1==""){
       swal("Select The Date", "Please Select the date cause systed Reqried the two days :)", "error"); 
    }else if(date2==""){
        swal("Select The Date", "Please Select the date cause systed Reqried the two days :)", "error"); 
    }
    else{
        createXMLHttpRequest();
                xmlHttp.open("POST", "calProfit", true);
                xmlHttp.onreadystatechange = cp;
                xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                xmlHttp.send("date1="+date1+"&date2="+date2);
        
        
    }
    
    
}
function cp(){
    if(xmlHttp.readyState == 4){
        
 //  alert("awa");
 //  alert(xmlHttp.responseText);
   var cusid=parseInt(xmlHttp.responseText);
   var d = xmlHttp.responseXML.getElementsByTagName("price")[0].firstChild.data;
   
   var textav = document.getElementById("ttt");
   textav.value=d+".00/=";
    
  //  alert(d);
    }
}
function printProfit(){
    var date1=document.getElementById("datepicker1").value;
    var date2=document.getElementById("datepicker2").value;
    
    if(date1==""){
       swal("Select The Date", "Please Select the date cause systed Reqried the two days :)", "error"); 
    }else if(date2==""){
        swal("Select The Date", "Please Select the date cause systed Reqried the two days :)", "error"); 
    }
    else{
      window.open("Report_PROFITHOSTORY.jsp?date1="+date1+"&date2="+date2,'_blank');
        
        
    }
}

function saveFeedBack(){
     message=document.getElementById("btn-input").value;
           if(message===""){
              swal("Type Your FeedBack", "Please Type Your Feed back :)", "error"); 
           }else{
                swal({
                title: "Are you sure?",   
                text: "Are You Want To Send this FeedBack!",   
                type: "warning",   
                showCancelButton: true,   
                confirmButtonColor: "#DD6B55",   
                confirmButtonText: "Yes, Send it!",   
                cancelButtonText: "No, cancel plx!",   
                closeOnConfirm: false,   
                closeOnCancel: false
            }, function(isConfirm){
                if (isConfirm) {
                  //  alert("1");
                    
                   //  alert("2");
                     createXMLHttpRequest();
                   //  alert("3");
                        xmlHttp.open("POST", "saveFeed", true);
                        xmlHttp.onreadystatechange = savedFeed;
                        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                        xmlHttp.send("feed="+message);
                      //  alert("4");
                    
                } else {
                    swal("Cancelled", "You are Hold Send Your FeedBack", "error");
                }
            });
               
           }
       
    
}

function savedFeed(){
    if (xmlHttp.readyState == 4 & xmlHttp.status == 200) {
        
        window.location='home.jsp';
    }
    
}

