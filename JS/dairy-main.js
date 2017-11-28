$(()=>{
//加载瀑布流
    $.get("data/diary/diary_info.php")
        .then(result=>{
            console.log(result);
            var data=result.data;
            var html="";
            for(var d of data){
                html+=`
            <div class="i masonry-block">
                <span class="span1">${d.days}</span>
                <span class="span2" data-id="${d.dairy_id}"><b>×</b></span>
                <span class="span3" >编辑</span>
                <img src="${d.after_pic}" class="img1"/>
                <img src="${d.before_pic}" />
                <ul>
                    <li><span>满意 :</span><span class="star-f"></span></li>
                    <li><span>项目 :</span><a href="#">${d.project}</a></li>
                    <li><span>医生 :</span><a href="#">${d.doctor_name}</a></li>
                    <li><span>医院 :</span><a href="#">${d.hospital}</a></li>
                </ul>
            </div>
            `
            }
            $("#container").html(html)
            setTimeout(()=>{
                $("#container").masonry({
                    itemSelector: '.masonry-block',
                    columnWidth: 240
                });
            },50);
        })
//删除功能
    $("#container").on("click",".span2",function(){
        let id=$(this).data("id");
        // console.log($(this).data("id"));
        $.get("data/diary/dairy_delete.php?dairy_id="+id).then(data=>{
            if(data){
                var rs = window.confirm("您确认要删除该数据吗?");
                if(!rs){
                    return;
                }else{
                    location.reload(true);
                }
            }
        })
    }).on("click",".span3",function(){
        location.href="dairy-upload.html";
    });

//上传头像
    $(function(){
        //阻止浏览器默认行为(离开;释放;进入;悬停)
        $(document).on({
            dragleave:function(e){e.preventDefault();},
            drop:function(e){e.preventDefault();},
            dragenter:function(e){e.preventDefault();},
            dragover:function(e){e.preventDefault()}
        });
        //*3:获取 "拖拽区域"
        var drop_area = document.querySelector(".drop_area");
        //*4:绑定事件 拖动释放
        drop_area.ondrop = function(e) {
            //*5:阻止事件默认行为
            e.preventDefault();
            //console.log(2);
            //6:获取文件对象
            var fileList = e.dataTransfer.files;
            //console.log(fileList);
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
            //10:创建预览对象(创建图片对象)
            var img = window.webkitURL.createObjectURL(fileList[0]);
            // console.log(img);
            var str = `<img src="${img}" /> <p>${fileName}</p>`;
            //11:显示预览图片
            $(".preview").html(str);

            //12:通过ajax对象上传文件(表单对象)
            var fd = new FormData();
            fd.append("mypic",fileList[0]);
            console.log(fileList[0]);
            //12.1:获取上传对话框中用户编号
            var uid = $(".upload-jumbotron").data("uid");
            //12.2:将uid添加FormData
            //append(参数名,参数值);
            fd.append("uid",uid);

            //13:创建AJAX对象发送数据
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState==4){
                    if(xhr.status==200){
                        var json = JSON.parse(xhr.responseText);
                        if(json.code>0){
                            alert(json.msg);
                        }else{
                            alert(json.msg);
                        }
                    }
                }
            }
            //14:打开HTTP连接
            xhr.open("POST","data/diary/dairy-InfoModify.php",true);
            //15:修改请求头信息
            xhr.setRequestHeader("X-Requested-With","XMLHttpRequest");
            //16:发送数据
            xhr.send(fd);
        }
    });
    $(function(){
        //阻止浏览器默认行为(离开;释放;进入;悬停)
        $(document).on({
            dragleave:function(e){e.preventDefault();},
            drop:function(e){e.preventDefault();},
            dragenter:function(e){e.preventDefault();},
            dragover:function(e){e.preventDefault()}
        });
        //*3:获取 "拖拽区域"
        var drop_area = document.querySelector(".drop_area2");
        //*4:绑定事件 拖动释放
        drop_area.ondrop = function(e) {
            //*5:阻止事件默认行为
            e.preventDefault();
            //console.log(2);
            //6:获取文件对象
            var fileList = e.dataTransfer.files;
            //console.log(fileList);
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
            //10:创建预览对象(创建图片对象)
            var img = window.webkitURL.createObjectURL(fileList[0]);
            // console.log(img);
            var str = `<img src="${img}" /> <p>${fileName}</p>`;
            //11:显示预览图片
            $(".preview2").html(str);

            //12:通过ajax对象上传文件(表单对象)
            var fd = new FormData();
            fd.append("mypic",fileList[0]);
            console.log(fileList[0]);
            //12.1:获取上传对话框中用户编号
            var uid = $(".upload-jumbotron2").data("uid");
            //12.2:将uid添加FormData
            //append(参数名,参数值);
            fd.append("uid",uid);

            //13:创建AJAX对象发送数据
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState==4){
                    if(xhr.status==200){
                        var json = JSON.parse(xhr.responseText);
                        if(json.code>0){
                            alert(json.msg);
                        }else{
                            alert(json.msg);
                        }
                    }
                }
            }
            //14:打开HTTP连接
            xhr.open("POST","data/diary/dairy-InfoModify.php",true);
            //15:修改请求头信息
            xhr.setRequestHeader("X-Requested-With","XMLHttpRequest");
            //16:发送数据
            xhr.send(fd);
        }
    });

//为上传头像按钮绑定点击事件
    $("#tbody1").on("click","a.btn-upload",function(e){
        e.preventDefault();
        //获取当前用户uid
        var uid = $(this).attr("href");
        //将uid保存:上传对话框中data-uid属性
        $(".upload-jumbotron").data("uid",uid);

        $(".upload-jumbotron").show();
    });

})


