
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
                        <div class="title">Applicant List
                            <div class="search">
                                <form>
                                    Search value:
                                    <input type="text" name="txtTitle" value="Search by vacancy"/>
                                    <a href="#" style="color:#E0EFF8;font-size:14px" > ->Search</a>
                                </form>
                            </div>
                        </div>
                        <br/>
                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="5%" scope="col"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="14%">Applicant ID</th>
                                <th width="27%" scope="col" >Applicant name</th>
                                <th width="32%" scope="col">Vacancy</th>
                                <th width="12%" scope="col">Apply Date</th>
                                <th width="5%" scope="col"></th>
                                <th width="5%" scope="col" style="-moz-border-radius-topright:10px"></th>
                            </tr>
                            <tfoot>
                            <th colspan="7" style="text-align:right">

                                <a href="#" style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">First</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Prev</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Next</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Last</a>

                                <div style="float:right;width:300px"><p style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF">Total : 30 items</p></div>
                            </th>
                            </tfoot>
                            <tr>
                                <td><p>1</p></td>
                                <td><p>A0001</p></td>
                                <td><a href="Controller?btnAction=ApplicantResume">Jun F Kennedy</a></td>
                                <td><p>President of U.S.A</p></td>
                                <td><p>20/3/2012</p></td>
                                <td><a href="#">Reject</a></td>
                                <td><a href="#">Select</a></td>
                            </tr>
                            <tr class="row">
                                <td><p>2</p></td>
                                <td><p>A0002</p></td>
                                <td><a href="#">Ha Animal</a></td>
                                <td><p>Osin</p></td>
                                <td><p>23/3/2012</p></td>
                                <td><a href="#">Reject</a> </td>
                                <td><a href="#">Select</a></td>
                            </tr>
                            <tr>
                                <td><p>3</p></td>
                                <td><p>A0003</p></td>
                                <td><a href="#">Tuan T-Dog</a></td>
                                <td><p>Bodyguard</p></td>
                                <td><p>24/3/2012</p></td>
                                <td><a href="#">Reject</a> </td>
                                <td><a href="#">Select</a></td>
                            </tr>
                            <tr class="row">
                                <td><p>4</p></td>
                                <td><p>A0004</p></td>
                                <td><a href="#">Justine Timberlake</a></td>
                                <td><p>Assitant</p></td>
                                <td><p>25/3/2012</p></td>
                                <td><a href="#">Reject</a> </td>
                                <td><a href="#">Select</a></td>
                            </tr>
                            <tr>
                                <td><p>5</p></td>
                                <td><p>A0001</p></td>
                                <td><a href="#">Jun F Kennedy</a></td>
                                <td><p>Body Guard</p></td>
                                <td><p>26/3/2012</p></td>
                                <td><a href="#">Reject</a></td>
                                <td><a href="#">Select</a></td>
                            </tr>
                            <tr class="row">
                                <td><p>6</p></td>
                                <td><p>A0002</p></td>
                                <td><a href="#">Ha Animal</a></td>
                                <td><p>Bodygard</p></td>
                                <td><p>27/3/2012</p></td>
                                <td><a href="#">Reject</a> </td>
                                <td><a href="#">Select</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
