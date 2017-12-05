$(()=>{
  var pno=1;
  //删除功能
  $("#container")
    .on("click", ".span2", function () {
      let id = $(this).data("id");
      var $div = $(this).parent();
      if (window.confirm("您确认要删除该数据吗?")) {
        $.get("data/diary/delete.php?dairy_id=" + id)
          .then(data => {
            $("#container").masonry("remove", $div).masonry();
          })
      }
    })
    .on("click", ".span3", function (e) {
      location =
        `dairy-upload.html?iid=${e.target.dataset.id}`;
    });
  function append(){
    $.get("data/diary/getAll.php",{pno})
      .then(result=> {
        var data = result.data;
        var html = "";
        for (var d of data) {
          html += `<div class="i masonry-block">
      <span class="span1">${d.days}</span>`;
          if (d.isAuthor == 1)
            html += `<span class="span2" data-id="${d.dairy_id}"><b>×</b></span><span class="span3" data-id="${d.dairy_id}">编辑</span>`;
          html += `<img src="${d.after_pic}" class="img1"/>
              <img src="${d.before_pic}" />
              <ul>
                  <li><span>满意 :</span><span class="star-f"></span></li>
                  <li><span>项目 :</span><a href="#">${d.skill_name}</a></li>
                  <li><span>医生 :</span><a href="#">${d.doctor_name}</a></li>
                  <li><span>医院 :</span><a href="#">${d.hospital}</a></li>
              </ul>
          </div>`
        }
        if($('#container').html()==""){
          $('#container').append(html);
          setTimeout(()=>{
            $('#container').masonry({
              itemSelector: '.masonry-block'
            });
          },100);
        }else{
          var $html=$(html);
          $('#container').append($html)
            .masonry("appended",$html);
        }
        $("#loading").hide();
        timer=null;
      });
  }
  append();
  var timer=null;
  $(window).off().scroll(()=>{
    var scrollTop=$("html,body").scrollTop();
    var offsetTop=$("#footer").offset().top;
    if(offsetTop<=scrollTop+innerHeight){
      $("#loading").show();
      pno++;
      clearTimeout(timer);
      timer=setTimeout(append,1000);
    }
  })
})


