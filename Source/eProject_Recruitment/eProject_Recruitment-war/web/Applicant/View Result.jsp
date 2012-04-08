<%-- 
    Document   : View Result
    Created on : Apr 6, 2012, 4:21:22 PM
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
                        <div class="title">View Result Interview</div>
                        <br/>

                        <table class="table" cellspacing="0" >
                            <tr align="center">
                                <th width="10%" scope="col">No.</th>
                                <th width="20%" scope="col">Vacancy name</th>
                                <th width="36%" scope="col" >Interviewer</th>
                                <th width="18%" scope="col">Date</th>
                                <th width="16%" scope="col">Result</th>
                            </tr>
                            <tr align="center">
                                <td>1</td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/01/2012</p></td>
                                <td><p>Failed</p></td>
                            </tr>
                            <tr align="center">
                                <td>2</td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/02/2012</p></td>
                                <td><p>Failed</p></td>
                            </tr>
                            <tr align="center">
                                <td>3</td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/03/2012</p></td>
                                <td><p>Failed</p></td>
                            </tr>
                            <tr align="center">
                                <td>4</td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/04/2012</p></td>
                                <td><p>Failed</p></td>
                            </tr>
                            <tr align="center">
                                <td>5</td>
                                <td><p>Team leader</p></td>
                                <td><p>Nguyen Hoang Tuan</p></td>
                                <td><p>21/05/2012</p></td>
                                <td><p>Hired</p></td>
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
