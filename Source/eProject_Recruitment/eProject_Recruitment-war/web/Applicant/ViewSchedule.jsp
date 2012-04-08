<%-- 
    Document   : ViewSchedule
    Created on : Apr 6, 2012, 4:21:07 PM
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%=request.getContextPath()%>/Css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="<%=request.getContextPath()%>/Js/jquery.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/Js/easySlider1.5.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/Js/popup.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function(){
                $("#slider").easySlider({
                    controlsBefore:	'<p id="controls">',
                    controlsAfter:	'</p>',
                    auto: true,
                    continuous: true
                });
            });
        </script>
        <title>Recruitment Process System</title>
    </head>
    <body>
        <div class="main">
            <jsp:include page="../Applicant/HeaderApplicant.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">View Schedule</div>
                        <br/>

                        <table class="table" cellspacing="0">
                            <tr align="center">
                                <th width="5%"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="20%" scope="col">Vacancy name</th>
                                <th width="27%" scope="col" >Interviewer</th>
                                <th width="11%" scope="col">Date</th>           <th width="13%" scope="col">Time</th>
                                <th width="24%" scope="col"style="-moz-border-radius-topright:10px">Place</th>
                            </tr>
                            <tr align="center">
                                <td><p>1</p></td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/03/2011</p></td>
                                <td><p>8:00</p></td>
                                <td><p>HR Room,Center Building</p></td>
                            </tr>
                            <tr align="center">
                                <td><p>1</p></td>
                                <td><p>Programmer</p></td>
                                <td><p>Nguyen Le Ngoc Ha</p></td>
                                <td><p>21/01/2012</p></td>
                                <td><p>8:00</p></td>
                                <td><p>HR Room,Center Building</p></td>
                            </tr>
                            <tr align="center">
                                <td><p>1</p></td>
                                <td><p>Project Manager</p></td>
                                <td><p>Huynh Nhat Trung Hieu</p></td>
                                <td><p>21/02/2011</p></td>
                                <td><p>8:00</p></td>
                                <td><p>HR Room,Center Building</p></td>
                            </tr>
                            <tr align="center">
                                <td><p>1</p></td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/03/2012</p></td>
                                <td><p>8:00</p></td>
                                <td><p>HR Room,Center Building</p></td>
                            </tr>
                            <tr align="center">
                                <td><p>1</p></td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>23/03/2012</p></td>
                                <td><p>8:00</p></td>
                                <td><p>HR Room,Center Building</p></td>
                            </tr>
                            <tfoot>
                            <th colspan="7" align="center"><a href="#">First</a>|<a href="#">Prev</a>|<a href="#">Next</a>|<a href="#">Last</a>
                            </th>
                            <td width="0%"></tfoot>
                        </table>

                        <div class="linkback"><a href="#" >Back to UserPage</a></div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
