<%-- 
    Document   : viewHistory
    Created on : Apr 9, 2012, 10:47:18 PM
    Author     : 6789
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main">
            <jsp:include page="Interviewerheader.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">View History</div>
                        <br/>
                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="14%"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="29%" scope="col">Execution  Datetime</th>
                                <th width="28%" scope="col" >Excution Hours</th>
                                <th width="20%" scope="col">Change</th>
                                <th width="20%" scope="col">Details</th>
                            </tr>
                            <tr>
                                <td><p>1</p></td>
                                <td><p>21/03/2012</p></td>
                                <td><p>9h15 am</p></td>
                                <td><p><a href="#">Change</a></p></td>
                                <td><p><a href="ScheduleDetail.jsp">Details</a></p></td>
                            </tr>
                            <tr class="row">
                                <td><p>2</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><p>2h pm</p></td>
                                <td><p><a href="#">Change</a></p></td>
                                <td><p><a href="ScheduleDetail.jsp">Details</a></p></td>
                            </tr>
                            <tr>
                                <td><p>3</p></td>
                                <td><p>18/03/2012</p></td>
                                <td><p>8h15 am</p></td>
                                <td><p><a href="#">Change</a></p></td>
                                <td><p><a href="ScheduleDetail.jsp">Details</a></p></td>
                            </tr>
                            <tfoot>
                            <th colspan="7" align="center"><a href="#" style="color:#FFF" >First</a>|<a href="#" style="color:#FFF">Prev</a>|<a href="#" style="color:#FFF">Next</a>|<a href="#" style="color:#FFF">Last</a><p style="color:#FFF; float:right">Total:30 items</p></th>
                            </tfoot>
                        </table>
                    </div> 
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
