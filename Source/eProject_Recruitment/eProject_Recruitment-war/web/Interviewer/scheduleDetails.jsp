<%-- 
    Document   : scheduleDetails
    Created on : Apr 9, 2012, 11:16:50 PM
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
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Schedule Detail</div>
                        <br/>
                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="14%"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="29%" scope="col">Vacancy Title</th>
                                <th width="28%" scope="col" >Applicant ID</th>
                                <th width="20%" scope="col">Status</th>
                                <th width="20%" scope="col">Update</th>
                            </tr>
                            <tr>
                                <td><p>1</p></td>
                                <td><p><a href="#" style="font-size:16px">Programmer</a></p></td>
                                <td><p><a href="#" style="font-size:16px">A0847</a></p></td>

                                <td><p>
                                        <select>
                                            <option>Fail</option>
                                            <option>Hired</option>
                                        </select>
                                    </p>
                                </td>
                                <td>
                                    <input type="submit" value="Update" name="btnAction" class="button"/>
                                </td>
                            </tr>
                            <tr class="row">
                                <td><p>2</p></td>
                                <td><p><a href="#" style="font-size:16px">Programmer</a></p></td>
                                <td><p><a href="#" style="font-size:16px">A0854</a></p></td>

                                <td><p><select>
                                            <option>Fail</option>
                                            <option>Hired</option>
                                        </select></p>
                                </td>
                                <td>
                                    <input type="submit" value="Update" name="btnAction" class="button"/>
                                </td>
                            </tr>
                            <tr>
                                <td><p>3</p></td>
                                <td><p><a href="#" style="font-size:16px">Programmer</a></p></td>
                                <td><p><a href="#" style="font-size:16px">A7485</a></p></td>

                                <td><p><select>
                                            <option>Fail</option>
                                            <option>Hired</option>
                                        </select></p>
                                </td>
                                <td>
                                    <input type="submit" value="Update" name="btnAction" class="button"/>
                                </td>
                            </tr>
                            <tfoot>
                            <th colspan="7" align="center"><a href="#" style="color:#FFF">First</a>|<a href="#" style="color:#FFF">Prev</a>|<a href="#" style="color:#FFF">Next</a>|<a href="#" style="color:#FFF">Last</a></th></tfoot>
                        </table>
                        <button name="btnReject"  class="button">Back to Schedule</button>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
