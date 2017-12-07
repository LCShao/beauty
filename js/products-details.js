$(()=> {
  var $icon_list=$("#icon_list")
  $icon_list.on("mouseover","img",function(){
    var $img=$(this);
    console.log($img);
    $("#mImg").attr("src","img/safe-shopping/"+$img.data("md"));
    $("#largeDiv").css("backgroundImage",`url(img/safe-shopping/${$img.data("md")})`);
  });
  var LIWIDTH=62,moved=0;
  function move(dir){
    moved+=dir;
    $icon_list.css("left",-LIWIDTH*moved+20);
    checkA();
  }
  function checkA(){
    $(".forward,.backward").removeClass("disabled");
    if(moved==0){
      $(".backward").addClass("disabled");
    }else if($icon_list.children().length-moved==4){
      $(".forward").addClass("disabled");
    }
  }
  $(".forward").click(e=>{
    $(e.target).is(":not(.disabled)")&&move(1);
  });
  $(".backward").click(e=>{
    $(e.target).is(":not(.disabled)")&&move(-1);
  })
  var $mask=$("#mask"),
      $superMask=$("#superMask"),
      $largeDiv=$("#largeDiv"),
      MSIZE=175,MAX=175;
  $superMask.mouseover(()=>{
    $mask.show();
    $largeDiv.show();
  }).mouseout(()=>{
    $mask.hide();
    $largeDiv.hide();
  }).mousemove(e=>{
    var $tar=$(e.target);
    var offsetX=e.offsetX, offsetY=e.offsetY;
    var t=offsetY-MSIZE/2, l=offsetX-MSIZE/2;
    t=t<0?0:t>MAX?MAX:t;
    l=l<0?0:l>MAX?MAX:l;
    $mask.css({ top:t,  left:l });
    $largeDiv.css("backgroundPosition",`-${l*16/7}px -${t*16/7}px`);
  })
  $.get(
    "data/products/product-details.php",
    {pid:location.search.split("=")[1]}
    ).then(output=>{
      var data=output.info;

      var imgs=output.imgs;
      console.log(imgs);
      var html=`<h3>
            ${"【"+data.kword.split(",").join("】【")+"】"+data.title}
        </h3>
        <div class="price">
            <div class="stu-price">
                <b>新氧价：</b>
                <span>¥${data.newPrice}</span>
            </div>
            <ul class="top-title">
                <li><span></span><i></i></li>
                <li><span>${data.d_count}</span>相关日记</li>
                <li><span>${data.yy_count}</span>累计预约</li>
            </ul>
        </div>
        <!-- 客服 -->
        <div class="parameter">
            <b>服务项：</b>
            <ul class="service-items">
                <li><img src="" alt="">氧气保</li>
                <li><img src="" alt="">闪电退</li>
                <li><img src="" alt="">写日记新氧返现800元</li>
                <li><img src="" alt="">详情</li>
            </ul>
        </div>
        <div class="parameter">
            <b>App专享：</b>
            <div class="app-p">
                <p><i></i><span>支持分期</span><b>|</b><span>￥2994.02 ×12期，支持美分宝、小额白条</span></p>
                <p><i></i><span>氧气抵扣</span><b>|</b><span>氧分抵扣预约金300元</span></p>
            </div>
        </div>
        <!-- 规格 -->
        <div class="spec clear">
            <p>支付方式：</p>
            <div>
                <p>预约金 <span>￥${data.newPrice*data.pay}</span></p>
                <p>到院再付 <span>￥${data.newPrice*(1-data.pay)}</span></p>
            </div>
        </div>
        <!-- 数量 -->
        <p class="account">
            <span>数量：</span>
            <button class="number-reduce">-</button>
            <input type="text" value="1">
            <button class="number-add">+</button>
        </p>
        <!-- 购买部分 -->
        <div class="shops">
            <a href="javascript:;" class="buy">立即购买</a>
            <a href="javascript:;" class="cart">
                咨询医院
            </a>
            <a href="javascript:;" class="collection">
                <img src="img/product_detail/product_detail_img6.png">
                <br>
                收藏
            </a>
        </div>`;
      $("#show-details").html(html);
      $("#mImg").attr("src","img/safe-shopping/"+imgs[0].md);
      html="";
      for(var img of imgs){
        html+=`<li class="i1"><img src="img/safe-shopping/${img.sm}" data-md="${img.md}"></li>`
      }
      $("#icon_list").html(html);
      $("#largeDiv").css("backgroundImage",`url(img/safe-shopping/${imgs[0].md})`);
    })
});