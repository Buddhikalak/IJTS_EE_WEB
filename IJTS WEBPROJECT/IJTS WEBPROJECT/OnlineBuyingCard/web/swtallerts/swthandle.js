function saveNetworkAdd(){
    swal({
        title: "Are you sure?",   
        text: "Are you Sure to save this data!",   
        type: "warning",   
        showCancelButton: true,   
        confirmButtonColor: "#DD6B55",   
        confirmButtonText: "Yes, Save it!",   
        closeOnConfirm: false
    }, function(){
        
        
        swal("Saved!", "Your Datas  has been Saved.", "success");
    });
    
    
}