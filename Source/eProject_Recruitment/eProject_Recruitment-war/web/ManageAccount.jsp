<%-- 
    Document   : ManageAccount
    Created on : Apr 6, 2012, 3:30:10 PM
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
                    	<td>User name</td>
                        <td>hoangtuan</td>
                    </tr>
                    <tr>
                    	<td>Password <span class="contraint">*</span></td>
                        <td><input name="" type="password" size="30" value="hoangtuan" />
                      </td>
                    </tr>
                    <tr>
                    	<td>Date of Birth <span class="contraint">*</span></td>
                        <td>Day :<select name="">
                        <option selected="selected">19</option>
                        </select>-Month:<select name=""><option>01</option></select>-Year:<select name=""><option>1990</option></select>
                      </td>
                    </tr>
                    <tr>
                    	<td>Gender:</td>
                        <td>Male<input name="" type="checkbox" value="" checked="checked"/></td>
                    </tr>
                    <tr>
                    	<td>Address <span class="contraint">*</span></td>
                        <td><textarea name="" cols="50" rows="10" >Q.9 TP HCM </textarea>
                        </td>
                    </tr>
                    <tr>
                    	<td>Email <span class="contraint">*</span></td>
                        <td><input name="" type="text" size="30" value="takada1901@gmail.com" />
                        </td>
                    </tr>
                    <tr>
                    	<td>Phone <span class="contraint">*</span></td>
                        <td>
                        	<input name="" type="text" size="30" value="01227714178" />
                       </td>
                    </tr>
                    <tr>
                    	<td> </td>
                        <td>
                        	<button name="btnUpdate"  class="button">Update</button>
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
