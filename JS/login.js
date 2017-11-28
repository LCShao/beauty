$(function(){
    $("[name=usubmit]").click(function(e){
        e.preventDefault();
        var u=$("[name=uname]").val();
        var p=$("[name=upwd]").val();
        $.ajax({
            type:"POST",
            url:"data/index/login.php",
            data:{uname:u,upwd:p},
            success:function(data){
                console.log(data);
                if(data.code>0){
                    alert(data.msg);
                    location.href = "index.html";
                }else{
                    alert(data.msg);
                }
            }
        })
    });

})

