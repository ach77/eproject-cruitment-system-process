<%-- 
    Document   : HRPreview
    Created on : Apr 6, 2012, 2:04:16 PM
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
                        <div class="title">Schedule Preview</div>
                        <!-- <div class="mini-product">
                                 <div class="product-info">
                                     <div class="product-title">Ban nha gap</div>
                                     <div class="product-content">Ban nha mat tien.So nha 57/57 ,KP2,P.Linh Chieu,Q.ThuDuc,TP.HCM</div>
                                     <div class="product-contact">Lien he anh Jun.SDT 01202540043</div>
                                 </div>
                             </div>-->

                        <hr/>
                        <div class="resume">
                            <form>
                                <table width="100%" cellspacing="20px">
                                    <tr>
                                        <td>Vacancy's name:</td>
                                        <td colspan="3"> <u><b style="font-size:20px;color:#06F">Needs for 5 database designers</b></u>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="112" >Interviewer's ID :</td>
                                        <td width="181" ><b style="color:#06F">E0001</b></td>
                                        <td width="142" >Interviewer's name :</td>
                                        <td width="139" > <b style="color:#06F">Jun F. Kennedy</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >Department :</td>
                                        <td > <b style="color:#06F">Database Design</b>
                                        </td>
                                        <td >Execution date :</td>
                                        <td ><b style="color:#06F">26-03-2012</b></td>
                                    </tr>
                                    <tr>
                                        <td >Start :</td>
                                        <td > <b style="color:#06F">08:00:AM</b>
                                        </td>
                                        <td >End :</td>
                                        <td ><b style="color:#06F">16:30:PM</b></td>
                                    </tr>
                                </table>
                            </form>
                        </div>

                        <hr style="margin-left:250px;margin-right:250px;"/>
                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="6%" scope="col"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="15%">Applicant ID</th>
                                <th width="21%" scope="col" >Applicant name</th>
                                <th width="27%" scope="col"style="-moz-border-radius-topright:10px">Applied Date</th>
                            </tr>
                            <tfoot>
                            <th colspan="5" style="text-align:right">

                                <a href="#" style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">First</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Prev</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Next</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Last</a>

                                <div style="float:right;width:300px">
                                    <p style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF">Total : 20 items</p></div>
                            </th>
                            </tfoot>
                            <tr>

                                <td><p>1</p></td>
                                <td><p>A0001</p></td>
                                <td><p>Jun F Kennedy</p></td>
                                <td><p>24/3/2012</p></td>
                            </tr>
                            <tr class="row">

                                <td><p>2</p></td>
                                <td><p>A0002</p></td>
                                <td><p>Ha Animal</p></td>
                                <td><p>22/3/2012</p></td>
                            </tr>
                            <tr>

                                <td><p>3</p></td>
                                <td><p>A0003</p></td>
                                <td><p>Tuan T-Dog</p></td>
                                <td><p>25/3/2012</p></td>
                            </tr>
                            <tr class="row">

                                <td><p>4</p></td>
                                <td><p>A0004</p></td>
                                <td><p>Justine Timberlake</p></td>
                                <td><p>27/3/2012</p></td>
                            </tr>
                            <tr>

                                <td><p>5</p></td>
                                <td><p>A0003</p></td>
                                <td><p>Tuan T-Dog</p></td>
                                <td><p>25/3/2012</p></td>
                            </tr>
                            <tr class="row">

                                <td><p>6</p></td>
                                <td><p>A0004</p></td>
                                <td><p>Justine Timberlake</p></td>
                                <td><p>27/3/2012</p></td>
                            </tr>
                            <tr>

                                <td><p>7</p></td>
                                <td><p>A0003</p></td>
                                <td><p>Tuan T-Dog</p></td>
                                <td><p>25/3/2012</p></td>
                            </tr>
                            <tr class="row">

                                <td><p>8</p></td>
                                <td><p>A0004</p></td>
                                <td><p>Justine Timberlake</p></td>
                                <td><p>27/3/2012</p></td>
                            </tr>

                        </table>
                        <form action="Controller" method="POST">
                            <div style="float:right;margin:5px 10px 20px 10px">
                                <input type="submit" value="Edit" name="btnAction" class="button" />
                                <input type="submit" value="Finish" name="btnAction" class="button" />
                                <input type="submit" value="Cancel" name="btnAction" class="button" />
                        </form>
                    </div>
                    <br/><br/><br/>
                    <hr/>

                </div>
            </div>
            <jsp:include page="../footer.jsp"/>
        </div>
    </div>
</body>
</html>
