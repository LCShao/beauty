$(()=> {
  $("#icon_list").on("mouseover","img",function(){
    var $img=$(this);
    console.log($img);
    $("#mImg").attr("src","img/safe-shopping/"+$img.data("md"));
    $("#largeDiv").css("backgroundImage",`url(img/safe-shopping/${$img.data("md")})`);
  });
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
    })
});