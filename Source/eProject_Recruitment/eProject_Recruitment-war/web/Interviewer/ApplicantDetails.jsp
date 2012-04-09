<%-- 
    Document   : ApplicantDetails
    Created on : Apr 9, 2012, 11:21:16 PM
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
                        <div class="title">Applicant's Detail</div>
                        <br/>
                        <div class="resume">
                            <form>
                                <table width="600px">
                                    <tr>
                                        <td>Applicant Id</td>
                                        <td>A0438</td>
                                    </tr>
                                    <tr>
                                        <td>Applicant Name</td>
                                        <td>
                                            Jun F Kennedy</td>
                                    </tr>
                                    <tr>
                                        <td>Diploma</td>
                                        <td>Bachelor</td>
                                    </tr>
                                    <tr>
                                        <td>Experience:</td>
                                        <td>2 years</td>
                                    </tr>
                                    <tr>
                                        <td>Skills:</td>
                                        <td>- Java J2EE
                                            - .NET(C#, VB, C/C++)
                                            - Database (SQL Server, MySQL, Access)
                                            - CSS, HTML
                                            - English: Toiec 670
                                        </td>
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
