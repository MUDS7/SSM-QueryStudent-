
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询学生</title>
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(function (){
            //在页面加载时，就查询所有学生
            loadStudentList()
            $("#searchBtn").click(function (){
                //再点击按钮就相当于重新加载
                loadStudentList();
            })
        })
        function loadStudentList(){
            $.ajax({
                url:"student/queryStudent.do",
                dataType:"json",
                type:"get",
                success:function (data){
                    //清除旧数据
                    $("#info").html("");
                    $.each(data,function (i,n){
                        //增加新数据
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>+")
                            .append("<td>"+n.age+"</td>");
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <thead>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="info">

            </tbody>

        </table>
        <input type="button" id="searchBtn" value="查询数据">
    </div>
</body>
</html>
