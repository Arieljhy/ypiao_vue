$(function(){
   
//////////////////////////////////////////////////样式js
//   鼠标爱心

    $("body").click(function(e){
        // 创建div父元素
        var parentDiv = $("<div></div>");
        // 设置属性
        parentDiv.css({
            "width":"13px",//20
            "height":"13px",//20
            "position":"absolute",
            "z-index":"10000"
        });
        // 创建一个div容器元素
        var conDiv = $("<div></div>");
        conDiv.css({
            "width":"100%",
            "height":"100%",
            "position":"relative"
        });
        // 将容器元素添加到父元素中
        parentDiv.append(conDiv);
        // 创建子元素
        var childDiv = conDiv.append("<div></div><div></div><div></div>");
        var divs = conDiv.children();
        // 设置颜色随机
        //var color = "rgb("+parseInt(Math.random()*250+5)
                    //+","+parseInt(Math.random()*250+5)
                    //+","+parseInt(Math.random()*250+5)+")";
        var color = "red"
        // 设置子元素属性
        $(divs[0]).css({
            "width":"60%",
            "height":"60%",
            "background-color":color,
            "border-radius":"100%"
        });
        $(divs[1]).css({
            "width":"60%",
            "height":"60%",
            "background-color":color,
            "border-radius":"100%",
            "position":"absolute",
            "top":"0",
            "right":"0"
        });
        $(divs[2]).css({
            "width":"60%",
            "height":"60%",
            "background-color":color,
            "position":"absolute",
            "top":"20%",
            "left":"20%",
            "transform":"rotate(45deg)",
            "-ms-transform":"rotate(45deg)",
            "-webkit-transform":"rotate(45deg)"
        });
        // 通过事件对象获取鼠标坐标
        var x = e.pageX;
        var y = e.pageY;
        // 修改div父元素位置
        parentDiv.css({"left":(x-10)+"px","top":(y-10)+"px"});
        // 添加到body中
        $("body").append(parentDiv);
        // 2秒后消失
        parentDiv.animate({
            "width":"25px",
            "height":"25px",
            "top":(y-200)+"px",
            "opacity":0
        },2000,function(){
            parentDiv.remove();
        });
    });




})
