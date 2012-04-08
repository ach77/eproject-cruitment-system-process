<%-- 
    Document   : ApplyVacancy
    Created on : Apr 6, 2012, 4:21:45 PM
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
                        <div class="title">Apply to Vacancy</div>
                        <br/>
                        <div class="resume">
                            <form>
                                <table width="600px">
                                    <tr>
                                        <td>Vacancy name</td>
                                        <td>Team Leader</td>
                                    </tr>
                                    <tr>
                                        <td>Diploma/Degree</td>
                                        <td><select name="">
                                                <option selected="selected">Bachelor</option>
                                                <option>Honors</option>
                                                <option>Graduate Diploma</option>
                                                <option>Master</option>
                                                <option>Doctor</option>
                                                <option>Others</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Skills:<span class="contraint">*</span></td>
                                        <td><textarea name="" cols="50" rows="10"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Experience:<span class="contraint">*</span></td>
                                        <td><input name="" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Others:<span class="contraint">*</span></td>
                                        <td><textarea name="" cols="50" rows="10"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnApply"  class="button">Apply</button>
                                            <button name="btnReset"  class="button">
                                                Reset</button>
                                            <button name="btnCancel"  class="button">Cancel</button>
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
