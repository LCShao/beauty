$(()=>{
    $.ajax({
        type:"GET",
        url:"./data/products/products-details.php",
        success:function(data){
            console.log(data);
             }

    })

});