//加载技能列表:
$(()=>{
  $.get("data/skills/skills.php")
  .then(data=>{
    var html='<a href="#" class="left-title">全部</a>';
    for(var d of data){
      html+=`<a href="#" data-skill_id="${d.skill_id}">${d.skill_name}</a>`
    }
    $(".diary-left-body").html(html);
  });
  $(".diary-left-body").on("click","a",function(){
    var $a=$(this);
    if($a.html()=="全部"){
      $a.addClass("left-title").siblings().removeClass("left-title");
    }else{
      $a.toggleClass("left-title");
      if($a.parent().is(":has(:not(:first-child).left-title)"))
        $a.siblings(":first-child").removeClass("left-title");
      else
        $a.siblings(":first-child").addClass("left-title");
    }
    loadProductByPage(1);
  });
  function loadProductByPage(pno){
    var data={pno};
    if($(".diary-left-body>:not(:first-child).left-title").length!=0) {
      var $leftTitles = $(".diary-left-body>.left-title");
      data["skills[]"]=[];
      for(var lt of $leftTitles){
        data["skills[]"].push($(lt).data("skill_id"));
      }
    }
    $.get("data/diary/getDiaryBySkills.php",data)
    .then(output=>{
      $("#diary-count").html(output.recordCount);
      var data=output.data;
      let fhtml="";
      for(let d of data){
        fhtml+=`<li>
          <p class="diary-t"><a href="#">${d.skill_name}</a></p>
          <p class="diary-content">${d.skill_content}</p>
          <div><p><span>医生:</span><span>${d.doctor_name}</span></p></div>
        </li>`;
      }
      $("#diary-InfoC").html(fhtml);
      let html = "";
      html+="<li><a href=\"#\">上一页</a></li>";
      for(var i=1;i<=output.pageCount;i++){
        if(i==output.pno)
          html+=`<li class="active"><a href="#">${i}</a></li>`;
        else
          html+=`<li><a href="#">${i}</a></li>`;
      }
      html+="<li><a href=\"#\">下一页</a></li>";
      $("#pagination").html(html);
    })
  }
  $("#pagination").on("click","li",function(e){
    e.preventDefault();
    var $li=$(this);
    if($li.is(":contains(上一页),:contains(下一页)")) {
      var i=$("#pagination>li.active").index();
      if ($li.is(":contains(上一页)"))
        i--;
      else
        i++;
    }else{
      $li.addClass("active").siblings().removeClass("active");
      var i=$("#pagination>li.active").index();
    }
    loadProductByPage(i);
  })
  //7:拼接计算
  loadProductByPage(1);
});
