<%-- 
    Document   : ChangeResume
    Created on : Apr 6, 2012, 4:21:59 PM
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
                        <div class="title">Change Resume</div>
                        <!-- <div class="mini-product">
                                 <div class="product-info">
                                     <div class="product-title">Ban nha gap</div>
                                     <div class="product-content">Ban nha mat tien.So nha 57/57 ,KP2,P.Linh Chieu,Q.ThuDuc,TP.HCM</div>
                                     <div class="product-contact">Lien he anh Jun.SDT 01202540043</div>
                                 </div>
                             </div>-->

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
                                        <td><textarea name="" cols="50" rows="10">Friendly, easy to make friend with others.
Working independently or team work is OK.
Good at working with C#, java.</textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Experience:<span class="contraint">*</span></td>
                                        <td><input name="" type="text" size="30" value="2"/>
                                        </td>
                                    </tr> 
                                    <tr>
                                    <td>Others:<span class="contraint">*</span></td>
                                    <td><textarea name="" cols="50" rows="10">Had worked for Google, Apple for 2 years as team leader.</textarea>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnApply"  class="button">Update Resume</button>
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
