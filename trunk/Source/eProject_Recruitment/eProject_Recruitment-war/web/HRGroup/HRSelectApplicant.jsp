<%-- 
    Document   : SelectApplicant
    Created on : Apr 6, 2012, 2:02:05 PM
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

                        </div>
                        <!-- <div class="mini-product">
                                 <div class="product-info">
                                     <div class="product-title">Ban nha gap</div>
                                     <div class="product-content">Ban nha mat tien.So nha 57/57 ,KP2,P.Linh Chieu,Q.ThuDuc,TP.HCM</div>
                                     <div class="product-contact">Lien he anh Jun.SDT 01202540043</div>
                                 </div>
                             </div>-->

                        <br/>

                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="10%" scope="col"style="-moz-border-radius-topleft:10px"><input name="" type="checkbox" value="Check All" /></th>
                                <th width="6%">No.</th>
                                <th width="15%">Applicant ID</th>
                                <th width="21%" scope="col" >Applicant name</th>
                                <th width="27%" scope="col"style="-moz-border-radius-topright:10px">Applied Date</th>
                            </tr>
                            <tfoot>
                            <th colspan="6" style="text-align:right">

                                <a href="#" style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">First</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Prev</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Next</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Last</a>

                                <div style="float:right;width:300px"><p style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF">Total : 4 items</p></div>
                            </th>
                            </tfoot>
                            <tr>
                                <td><input name="" type="checkbox" value="" /></td>
                                <td><p>1</p></td>
                                <td><p>A0001</p></td>
                                <td><p>Jun F Kennedy</p></td>
                                <td><p>24/3/2012</p></td>
                            </tr>
                            <tr class="row">
                                <td><input name="" type="checkbox" value="" /></td>
                                <td><p>2</p></td>
                                <td><p>A0002</p></td>
                                <td><p>Ha Animal</p></td>
                                <td><p>22/3/2012</p></td>
                            </tr>
                            <tr>
                                <td><input name="" type="checkbox" value="" /></td>
                                <td><p>3</p></td>
                                <td><p>A0003</p></td>
                                <td><p>Tuan T-Dog</p></td>
                                <td><p>25/3/2012</p></td>
                            </tr>
                            <tr class="row">
                                <td><input name="" type="checkbox" value="" /></td>
                                <td><p>4</p></td>
                                <td><p>A0004</p></td>
                                <td><p>Justine Timberlake</p></td>
                                <td><p>27/3/2012</p></td>
                            </tr>
                        </table>
                        <form action="Controller" method="POST">
                            <div style="float:right;margin:5px 10px 20px 10px">
                                <input type="submit" value="Back" name="btnAction" class="button" />
                                <input type="submit" value="Schedule Interview" name="btnAction" class="button" />
                                <input type="submit" value="Cancel" name="btnAction" class="button" />
                            </div>
                        </form>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
