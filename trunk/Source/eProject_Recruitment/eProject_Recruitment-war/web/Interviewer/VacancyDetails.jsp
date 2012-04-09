<%-- 
    Document   : VacancyDetails
    Created on : Apr 9, 2012, 11:24:08 PM
    Author     : 6789
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
            <jsp:include page="Interviewerheader.jsp"/>
            <div class="clr"></div>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Vacancy's Detail</div>
                        <br/>
                        <div class="resume">
                            <form>
                                <table width="600px">
                                    <tr>
                                        <td width="125">Vacancy Id</td>
                                        <td width="463">V0438</td>
                                    </tr>
                                    <tr>
                                        <td>Vacancy Name</td>
                                        <td>
                                            Programmer</td>
                                    </tr>
                                    <tr>
                                        <td>Start Date</td>
                                        <td>20-02-2012</td>
                                    </tr>
                                    <tr>
                                        <td>End Date</td>
                                        <td>20-03-2012</td>
                                    </tr>
                                    <tr>
                                        <td>Slot</td>
                                        <td>20</td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnReject"  class="button">Back to Schedule Detail</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
