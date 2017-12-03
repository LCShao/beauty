$(function(){
    $("[name=usubmit]").click(function(e){
        e.preventDefault();
        var u=$("[name=uname]").val();
        var p=$("[name=upwd]").val();
        $.ajax({
            type:"POST",
            url:"data/index/login.php",
            data:{uname:u,upwd:p}
        }).then(data=>{
          if(data.ok=="0") alert(data.msg);
          else{
            if(location.search!="")
              location=location.search.slice(6);
            else
              location="index.html";
          }
        })
    });

})

