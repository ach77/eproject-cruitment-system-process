
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
            <jsp:include page="HRHeader.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Resume's Detail</div>
                        <br/>
                        <div class="resume" >
                            <hr />
                            <form>
                                <table width="100%" cellspacing="0px" cellpadding="5px">
                                    <tr>
                                        <td width="159" align="center">Full name:</td>
                                        <td width="429" align="center">Huynh Nhat Trung Hieu</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Date of Birth:<span class="contraint"></span></td>
                                        <td align="center">04/12/1990</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Address:</td>
                                        <td align="center">57/57, KP 2, P. Linh Chieu, Q. Thu Duc, Tp, Ho Chi Minh</td>
                                    </tr>

                                    <tr>
                                        <td align="center">Gender:</td>
                                        <td align="center">Male</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Degree:<span class="contraint"></span></td>
                                        <td align="center">University</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Experience:</td>
                                        <td align="center">2 year</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Skill:<span class="contraint"></span></td>
                                        <td align="center"><textarea name="" cols="50" rows="8" disabled>- Handsome & talent
- Anti-Alqada
- Height > 1m90
- Weight > 90 kg
- Single
- Knowing how to use every gun
                                            </textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">Others:<span class="contraint"></span></td>
                                        <td align="center"><textarea name="" cols="50" rows="8" disabled>- 8h00 : wake up.
- 9h00 : have a breakfast
- 10h00 : make--up
- 11h00 : walk around.
- 12h00 : have lunch.
- 13h00 : get some sleep.
....</textarea></td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td align="center">
                                            <button name="btnReject"  class="button">Select</button>
                                            <button name="btnReject"  class="button">Reject</button>
                                            <button name="btnReject"  class="button">Cancel</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                            <hr/>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
