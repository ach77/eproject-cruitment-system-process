<%-- 
    Document   : HRCreateNewVacancy
    Created on : Apr 6, 2012, 1:59:36 PM
    Author     : JunF
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recruitment Process System</title>
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
    </head>
    <body>
        <div class="main">
            <jsp:include page="../HRGrop/HRHeader.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Vacancy's Detail</div>
                        <br/>
                        <div class="resume">
                            <form action="HRController">
                                <table width="100%" cellspacing="10px">
                                    <tr>
                                        <td width="159">Vacancy ID</td>
                                        <td width="429">${requestScope.NewVacancyId}</td>
                                    </tr>
                                    <tr>
                                        <td>Vacancy name <span class="contraint">*</span></td>
                                        <td> <input name="" type="text"  size="65" value="President of U.S.A" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Department </td>
                                        <td><select name="" >
                                                <option>HR</option>
                                                <option selected="selected">Marketing</option>
                                                <option>Business</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Requirement <span class="contraint">*</span></td>
                                        <td><textarea name="" cols="50" rows="8" >- Handsome & talent
- Anti-Alqada
- Height > 1m90
- Weight > 90 kg
- Single
- Knowing how to use every gun
                                            </textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description <span class="contraint">*</span></td>
                                        <td><textarea name="" cols="50" rows="8" >- 8h00 : wake up.
- 9h00 : have a breakfast
- 10h00 : make--up
- 11h00 : walk around.
- 12h00 : have lunch.
- 13h00 : get some sleep.
....</textarea></td>
                                    </tr>
                                    <tr>
                                        <td>Salary </td>
                                        <td><input name="" type="text" value="500,000 USD" size="20" /></td>
                                    </tr>
                                    <tr>
                                        <td>Slot <span class="contraint">*</span></td>
                                        <td><input name="" type="text"  value="1" size="1" /></td>
                                    </tr>

                                    <tr>
                                        <td>End date (dd/mm/yyyy) <span class="contraint">*</span></td>
                                        <td>
                        	Day: <select name=""><option selected="selected" >08</option></select>
                                            - Month: <select name=""><option selected="selected" >04</option></select>
                                            - Year: <select name=""><option selected="selected" >2012</option></select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnReject"  class="button">Add New</button>
                                            <button name="btnReject"  class="button">Reset</button>
                                            <button name="btnReject"  class="button">Cancel</button>
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

