//加载头部和尾部
$(()=>{
  $("#header").load("diary_head.html",()=>{
    $("#login>:first-child").click(()=>{
      location="login.html?back="+location.pathname
    });
    $.get("data/index/isLogin.php").then(data=>{
      if(data.ok==1){
        $("#login").hide().next().show().children().first().html(data.uname);
      }else{
        $("#login").show().next().hide();
      }
    });
  });
  $("#footer").load("indexFooter.html");
});