<%-- 
    Document   : Register
    Created on : Apr 6, 2012, 3:41:35 PM
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main">
            <jsp:include page="header.jsp"/>
            <div class="product">
                <div class="title">Manage Account</div>
                <br/>
                <div class="resume">
                    <form action="Controller" method="POST">
                        <table width="600px">
                            <tr>
                                <td>User name <span class="contraint">*</span></td>
                                <td><input name="txtRegisterUsername" type="text" size="20" />
                                </td>
                            </tr>
                            <tr>
                                <td>Password <span class="contraint">*</span></td>
                                <td><input name="txtRegisterPassword" type="password" size="20" />
                                </td>
                            </tr>
                            <tr>
                                <td>Date of Birth <span class="contraint">*</span><br/>
               	      (dd/mm/yyyy):</td>
                                <td>Day :<select name="cbxRegisterDay">
                                        <option selected="selected">--</option>
                                    </select>-Month:<select name="cbxRegisterMonth"><option>--</option></select>-Year:<select name="cbxRegisterYear"><option>----</option></select>
                                </td>
                            </tr>
                            <tr>
                                <td>Gender </td>
                                <td>Male<input name="chkRegisterGender" type="checkbox" value="" /></td>
                            </tr>
                            <tr>
                                <td>Address <span class="contraint">*</span></td>
                                <td><textarea name="tareaRegisterAddress" cols="50" rows="10"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Email <span class="contraint">*</span></td>
                                <td><input name="txtRegisterEmail" type="text" size="30" />
                                </td>
                            </tr>
                            <tr>
                                <td>Phone <span class="contraint">*</span></td>
                                <td>
                                    <input name="txtRegisterPhone" type="text" size="30" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><img  src="images/capchar.png" width="197" height="60" /><br/>
                                    <button name="btnRefresh"  class="button">Refresh Image</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Capcha <span class="contraint">*</span></td>
                                <td><input name="" type="text" size="30" />
                                </td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td>
                                    <button name="btnRegister"  class="button">Register</button>
                                    <button name="btnReset"  class="button">
                                        Reset</button>
                                    <button name="btnCancel"  class="button">Cancel</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
