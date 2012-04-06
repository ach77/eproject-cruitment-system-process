<%-- 
    Document   : ScheduleInterview
    Created on : Apr 6, 2012, 2:01:08 PM
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
                        <div class="title">Vacancy list
                            <div class="search">
                                <form>
                	Search for job:
                                    <input type="text" name="txtTitle" value="Search by vacancy"/>
                                    <a href="#" style="color:#E0EFF8;font-size:14px" > ->Search</a>
                                </form>
                            </div>
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
                                <th width="6%" scope="col" style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="33%">Job title</th>
                                <th width="19%" scope="col">Department</th>
                                <th width="8%" scope="col">Slot</th>
                                <th width="14%" scope="col">End Date</th>
                                <th width="20%" scope="col" style="-moz-border-radius-topright:10px"></th>
                            </tr>
                            <tfoot>
                            <th colspan="6" style="text-align:right">

                                <a href="#" style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">First</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Prev</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Next</a>
                                <a href="#"style="color:#FFF;font-family:Tahoma, Geneva, sans-serif;font-size:12px;text-decoration:underline">Last</a>

                                <div style="float:right;width:300px"><p style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF">Total : 30 items</p></div>
                            </th>
                            </tfoot>
                            <tr>
                                <td><p>1</p></td>
                                <td> <a href="#"> Management Accountant </a></td>
                                <td><p>FMCG </p></td>
                                <td><p>20</p></td>
                                <td><p>21/03/2012</p></td>
                                <td><a href="Controller?btnAction=ScheduleInterview2">Schedule Interview</a></td>
                            </tr>
                            <tr class="row">
                                <td><p>2</p></td>
                                <td><a href="#" title="Manufacturing Manager">Manufacturing Manager </a></td>
                                <td><p>Oil & gas</p></td>
                                <td><p>15</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr>
                                <td><p>3</p></td>
                                <td><a href="#" title="Manufacturing Manager">Key Account Manager</a> </td>
                                <td><p>FMCG</p></td>
                                <td><p>9</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr class="row">
                                <td><p>4</p></td>
                                <td><a href="#" title="Manufacturing Manager">Manufacturing Manager </a></td>
                                <td><p>Oil & gas</p></td>
                                <td><p>15</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr>
                                <td><p>5</p></td>
                                <td><a href="#" title="Manufacturing Manager">Key Account Manager</a> </td>
                                <td><p>FMCG</p></td>
                                <td><p>9</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr class="row">
                                <td><p>6</p></td>
                                <td><a href="#" title="Manufacturing Manager">Manufacturing Manager </a></td>
                                <td><p>Oil & gas</p></td>
                                <td><p>15</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr>
                                <td><p>7</p></td>
                                <td><a href="#" title="Manufacturing Manager">Key Account Manager</a> </td>
                                <td><p>FMCG</p></td>
                                <td><p>9</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr class="row">
                                <td><p>8</p></td>
                                <td><a href="#" title="Manufacturing Manager">Manufacturing Manager </a></td>
                                <td><p>Oil & gas</p></td>
                                <td><p>15</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                            <tr>
                                <td><p>9</p></td>
                                <td><a href="#" title="Manufacturing Manager">Key Account Manager</a> </td>
                                <td><p>FMCG</p></td>
                                <td><p>9</p></td>
                                <td><p>19/03/2012</p></td>
                                <td><a href="#">Schedule Interview</a> </td>
                            </tr>
                        </table>
                        <div style="float:right;margin:5px 10px 20px 10px">
                            <input type="submit" value="Cancel" name="btnAction" class="button" /> </div>
                    </div>
                </div>
        <jsp:include page="../footer.jsp"/>
    </div>
</div>
</body>
</html>
