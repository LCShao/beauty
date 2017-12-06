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
    })
  });
  $("#footer").load("index-footer.html");
});
//美丽方案
$(function(){
    $(".item-list").on("mouseenter","li",function(){
        $(this).addClass("active").find(".son").stop(true).animate({marginLeft:0},500);
    }).on("mouseleave","li",function(){
        $(this).removeClass("active").find(".son").stop(true).animate({marginLeft:30},500);
    });
})


//美丽方案 图片及文字加载
$(function(){

    $("ul.case-box").on("mouseenter","li",function(){
        $(this).toggleClass("active");

    }).on("mouseleave","li",function(){
        $(this).toggleClass("active");

    });

    $.get("data/safe-shopping/safe-shopping.php")
        .then(data=>{
            console.log(data);
            let html="";
            if(data.length>0){
                for(let i of data){
                    html+=` 
                <li>
                  <a href="#">
                      <img class="bg" src="${i.img}" alt="">
                      <p class="big-title">${i.title}</p>
                      <p class="small-title">${i.details}</p>
                  </a>
                </li>
            `;
            }
          }
            $("#case-box").html(html);
        })

    $.get("data/safe-shopping/safeShoppingSecond.php")
        .then(data=>{
            // console.log(data[0].img);
            let html="";
            if(data.length>0){
                for(let i of data){
                    html+=` 
                <li>
                   <a href="#">
                       <img class="bg" src="${i.img}" alt="">
                       <p class="tagName">${i.title}<br/><span>${i.details}</span></p>
                   </a>
                </li>
            `;
                }
            }
            $("#operation").html(html);
        })
})