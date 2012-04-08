<%-- 
    Document   : home
    Created on : Apr 6, 2012, 9:59:15 AM
    Author     : JunF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recruitment Process System</title>
        <link href="Css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="main">
            <jsp:include page="header.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Vacancy list
                            <div class="search">
                                <form action="ApplicantController">
                	Search for job: 
                                    <input type="text" name="txtTitle" value="enter title"/>
                                    <select name="cboDepartment">
                                        <option selected="selected">choose</option>
                                    </select>
                                    <input type="submit" name="action" value="Search"/>
                                </form>
                            </div>
                        </div>
                        <br/>
                        <table class="table" cellspacing="0">
                            <thead>
                                <tr>
                                    <th width="7%" style="-moz-border-radius-topleft:10px"></th>
                                    <th width="24%" scope="col" >Job title</th>
                                    <th width="15%" scope="col">Department</th>
                                    <th width="11%" scope="col">Salary</th>
                                    <th width="7%" scope="col">Slot</th>
                                    <th width="18%" scope="col">Start Date</th>
                                    <th width="18%" scope="col" style="-moz-border-radius-topright:10px">End Date</th>
                                </tr>
                            </thead>
                            <tfoot>
                            <th colspan="7" align="center"><a href="#">First</a>|<a href="#">Prev</a>|<a href="#">Next</a>|<a href="#">Last</a>
                            </th>
                            <td width="0%"></tfoot>
                            <tbody>
                                <tr class="row">
                                    <td><button name="btnRegister"  class="apply-button" title="Apply this vacancy"/></td>
                                    <td><a href="#" title="Manufacturing Manager">Manufacturing Manager </a></td>
                                    <td><p>HR</p> </td>
                                    <td><p>1,200 - 1,500</p></td>
                                    <td><p>15</p></td>
                                    <td><p>19/03/2012</p> </td>
                                    <td><p>25/03/2012 </p></td>
                                </tr>                    
                            </tbody>
                        </table>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>
</html>
