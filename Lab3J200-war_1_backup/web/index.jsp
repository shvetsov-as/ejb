<%-- 
    Document   : index
    Created on : Mar 18, 2021, 6:54:48 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #ln{
                float: right;
            }
            body{
                background-image: url("img/fon.jpg");
                /*background-repeat: no-repeat;*/
            }
            td{
                background-color: white;
            }
        </style>
    </head>
    <body>
        <img src="img/logg.jpg" id="ln" width="400"/>

        <form name="login" action="Check" method="POST">


            <table border="1" width="500" cellspacing="3" cellpadding="3">

                <tbody>
                    <tr>
                        <td>Введите логин</td>
                        <td>
                            <input type="text" name="login" value="" />
                        </td>
                        <td>

                            <input type="submit" value="Зарегистрироваться" name="register" />
                        </td>
                    </tr>
                    <tr>

                        <td>Введите пароль</td>

                        <td>
                            <input type="password" name="psw" value="" />
                        </td>

                        <td> 
                            <input type="submit" value="Получить сообщение" name="getmsg" />
                        </td>

                    </tr>
                </tbody>
            </table>
        </form>
        <%
            String registered = (String) request.getAttribute("registered");
            if ("t".equals(registered)) {
        %>
        <h3>Вы успешно зарегистрировались, можете запросить сообщение </h3> 
        <%
//            String msg = (String) request.getAttribute("msg");
//            out.println("<h4>" + msg + "</h4>");
            
            }
        %>

        <%
            if ("f".equals(registered)) {

        %>
        <h3>Ошибка в логине или пароле </h3>
        <% }%>
        
       
        
        


        <!--        <form action="Check" method="POST">
                    
                </form>-->

    </body>
</html>

