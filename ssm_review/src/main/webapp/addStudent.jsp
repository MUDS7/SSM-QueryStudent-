<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div align="center">
        <form action="${pageContext.request.contextPath}/student/addStudent.do" method="post">
            <table>
                <tr>
                    <td>姓名:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄:</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
