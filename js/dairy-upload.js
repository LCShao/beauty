$(function(){
//上传头像
  $(document).on({
      dragleave:function(e){e.preventDefault();},
      drop:function(e){e.preventDefault();},
      dragenter:function(e){e.preventDefault();},
      dragover:function(e){e.preventDefault()}
  });
  $(".preview").on("drop",function(e) {
      var $area=$(e.originalEvent.target);
      //*5:阻止事件默认行为
      e.preventDefault();
      //6:获取文件对象
      var fileList = e.originalEvent.dataTransfer.files;
      //7:获取拖动上传文件个数量==0 停止
      if(fileList.length==0){
        alert("没有图片上传");
        return;
      }
      //8:获取上传文件(第一张图片)类型--可选
      //9:阻止非图片
      var rs  = fileList[0].type.indexOf("image");
      if(rs==-1){
        alert("只能上传图片格式类型");
        return;
      }   //11:45--11:50
      //9.1:获取上传文件大小 如果超过512K 阻止上传
      var size = Math.floor(fileList[0].size/1024);
      if(size>512){
        alert("上传图片太大，不能超过 512KB");
        return;
      }
      var fileName = fileList[0].name;
      $area.next().val(fileName);
      //10:创建预览对象(创建图片对象)
      var img = window.URL.createObjectURL(fileList[0]);
      var str = `<img src="${img}" /> <p>${fileName}</p>`;
      //11:显示预览图片
      $area.children(":gt(0)").remove();
      $area.append(str);

      //12:通过ajax对象上传文件(表单对象)
      var fd = new FormData();
      fd.append("mypic",fileList[0]);

      $.ajax({
        type:"post",
        url:"data/diary/upload.php",
        data:fd,
        contentType:false,
        processData: false,
      });
  });

//加载医生
  $.ajax({
    type:"GET",
    url:"data/doctor/diary-doctors.php",
    success:function(data){
      let html="";
      html+=`<option>--请选择--</option>`;
      for(let doc of data){
        html+=`<option value ="${doc.doctor_id}">${doc.doctor_name}</option>`;
      }
      $("#doctors-select").html(html);
    }
  });

//加载项目
  $.ajax({
    type:"GET",
    url:"data/skills/skills.php",
    success:function(data){
      let html="";
      html+=`<option>--请选择--</option>`;
      for(let skill of data){
        html+=`<option value ="${skill.skill_id}">${skill.skill_name}</option>`;
      }
      $("#items-select").html(html);
    }
  });

//为上传头像按钮绑定点击事件
  $(".btn-save").click(function(e){
    e.preventDefault();
    $.post("data/diary/update.php",$("form").serialize())
  });

  if(location.search!==""){
    var dairy_id=location.search.split("=")[1];
    $.get("data/diary/getDiaryById.php","dairy_id="+dairy_id)
      .then(data=>{
        $("form .drop_area").append(`<img src="${data.before_pic}" />`)
          .next().val(data.before_pic);
        $("form .drop_area2").append(`<img src="${data.after_pic}" />`)
          .next().val(data.after_pic);
        $("#days input").val(data.days);
        $("#doctors-select").val(data.doctor_id);
        $("#items-select").val(data.detail_id);
      });
  }
});