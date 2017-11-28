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

    $.get("data/safeShopping/safeShopping.php")
        .then(data=>{
            // console.log(data[0].img);
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

    $.get("data/safeShopping/safeShoppingSecond.php")
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