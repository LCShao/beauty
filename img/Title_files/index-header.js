$(()=>{
  function isLogin(){
    $.get("data/index/isLogin.php").then(data=>{
      if(data.ok==1){
        $("#login").hide().next().show().children().first().html(data.uname);
      }else{
        $("#login").show().next().hide();
      }
    });
  }
  function loadSHelper(){
    var $input=$("#sbox>input"),
        $shelper=$input.prev();
    if($input.val().trim().length) {
      $shelper.show();
      $.get("data/index/searchHelper.php",{
        kw:$input.val().trim()
      }).then(data=>{
        var html="";
        for(var d of data){
          html+=`<li data-product_id="${d.product_id}" title="${d.kword+d.title}">
            <div class="search-item" title="${d.kword+d.title}"><span>${d.kword+d.title}</span><b>预约: ${d.yy_count}</b></div>
          </li>`;
        }
        $shelper.html(html);
      })
    }else{
      $shelper.hide();
    }

  }
  $("#header").load("index-head.html",()=>{
    isLogin();
    $("#login>:first-child").click(()=>{
      location="login.html?back="+location.pathname
    });
    $("#welcome>:last-child").click(e=>{
      e.preventDefault();
      $.get("data/index/logout.php").then(()=>{
        location.reload(true);
      });
    });
    $("#sbox>input").focus(e=>{
      loadSHelper();
    }).blur(e=>{
      setTimeout(()=> {
        $(e.target).prev().hide()
      },200);
    }).keyup(e=>{
      var $shelper=$(e.target).prev();
      switch(e.keyCode){
        case 38:
          if(!$shelper.is(":has(.hover)")){
            $shelper.children().last().addClass("hover");
          }else if($shelper.children().first().hasClass("hover")){
            $shelper.children().first().removeClass("hover");
            $shelper.children().last().addClass("hover");
          }else{
            $shelper.children(".hover").removeClass("hover")
              .prev().addClass("hover");
          }
          break;
        case 40:
          if(!$shelper.is(":has(.hover)")){
            $shelper.children().first().addClass("hover");
          }else if($shelper.children().last().hasClass("hover")){
            $shelper.children().last().removeClass("hover");
            $shelper.children().first().addClass("hover");
          }else{
            $shelper.children(".hover").removeClass("hover")
              .next().addClass("hover");
          }
          break;
        case 13:
          if($shelper.is(":has(.hover)")){
            var $hover=$shelper.children(".hover");
            location="product-details.html?pid="+$hover.data("product_id");
          }else{
            location="safe-shopping.html?kw="+$(e.target).val();
          }
          break;
        default:
          loadSHelper();
      }
    });
    $("#shelper").on("click","span",e=>{
      location="product-details.html?pid="+$(e.target).parent().parent().data("product_id");
    })
    if(location.search.indexOf("kw=")!=-1){
      $("#sbox>input").val(location.search.split("=")[1])
    }
  });
  $("#footer").load("index-footer.html");
});