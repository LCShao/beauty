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

$(()=>{
  var pno=1, canLoad=true, sort="zn", min=0,max=99999999;
  function loadProducts(){
    $.get(
      "data/products/getProductsByKw.php",
      {kw:location.search.split("=")[1],pno,sort,min,max}
      ).then(output=>{
        var data=output.data;
        if(data.length!=0){
          var html="";
          for(var p of data){
            html+=`<div class="pro-div">
          <img src="img/safe-shopping/${p.sm}" >
          <div>
              <p class="top-info">${"【"+p.kword.split(",").join("】【")+"】 "+p.title}</p>
              <p class="hoc">${p.hospital}</p>
              <p class="con-l"><i>¥</i>${parseFloat(p.newPrice).toFixed(2)} <s>¥${parseFloat(p.oldPrice).toFixed(2)}</s></p>
              <h4>预约:${p.yy_count}, 日记:${p.d_count}</h4>
              <h5>评分:${p.score}</h5>
          </div>
        </div>`;
          }
          var $div=$(".select-div");
          if($div.children().length==0)
            $div.html(html);
          else
            $div.append(html);
          canLoad=true;
        }else{
          pno--;
        }
        $("#loading").hide();
      });
  }
  loadProducts();
  $(window).off().scroll(()=>{
    var scrollTop=$("html,body").scrollTop();
    var offsetTop=$("#footer").offset().top;
    if(canLoad&&offsetTop<=scrollTop+innerHeight) {
      $("#loading").show();
      canLoad = false;
      pno++;
      loadProducts();
    }
  });
  $(".select-ul").on("click","li:not(.price)",function(e){
    e.preventDefault();
    var $li=$(this);
    if(!$li.is(":contains(确定)")){
      if($li.is(":contains(价格)")){
        if(sort=="jga")
          sort="jgd";
        else
          sort="jga";
      }else if(!$li.hasClass("hover")){
        switch($li.children("a").html()){
          case "销量最多":
            sort="xl";
            break;
          case "案例最多":
            sort="al";
            break;
          case "评分最高":
            sort="pf";
            break;
          case "最新上架":
            sort="zx";
            break;
        }
      }
      $li.addClass("hover").siblings().removeClass("hover");
    }else{
      var $txts=$li.siblings(".price").children();
      min=parseFloat($txts.first().html().trim());
      if(isNaN(min)) min=0;
      max=parseFloat($txts.last().html().trim());
      if(isNaN(max)) max=99999999;
    }
    $(".select-div").empty();
    pno=1;
    loadProducts();
  })
})