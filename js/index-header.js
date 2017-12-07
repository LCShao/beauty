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
        $shelper=$input.next();
    if($input.val().trim().length) {
      $shelper.show();
      $.get("data/index/searchHelper.php",{
        kw:$input.val().trim()
      }).then(data=>{
        console.log(data);
      })
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
      $(e.target).prev().hide();
    }).keyup(e=>{
      loadSHelper();
    })
  });
  $("#footer").load("index-footer.html");
});