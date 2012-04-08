<%-- 
    Document   : Register
    Created on : Apr 6, 2012, 3:41:35 PM
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
            <jsp:include page="HeaderApplicant.jsp"/>
            <div class="body">
                <div class="topi"><div class="clr"></div></div>
                <div class="body_resize">
                    <div class="product">
                        <div class="title">Register form</div>
                        <br/>
                        <div class="resume">
                            <form class="">
                                <table width="600px">
                                    <tr>
                                        <td>Username <span class="contraint">*</span></td>
                                        <td><input name="txtUsername" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Fullname <span class="contraint">*</span></td>
                                        <td><input name="txtFullname" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Password <span class="contraint">*</span></td>
                                        <td><input name="txtPassword" type="password" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth <span class="contraint">*</span><br/>
               	      (dd/mm/yyyy):</td>
                                        <td> <td>Day :<select name="cbxDay" id="day">
                        <option selected="selected">--</option>
						<option>01</option><option>02</option><option>03</option><option>04</option><option>05</option><option>06</option>
						<option>07</option><option>08</option><option>09</option><option>10</option><option>11</option><option>12</option>
						<option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option>
						<option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option>
                        <option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option>
                        <option>31</option>
                        </select>
                        -Month:<select name="cbxMonth" id="month">
						<option>--</option>
                        <option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
                        </select>
                        -Year:<select name="cbxYear" id="year">
                        <option>----</option><option>1990</option><option>1989</option><option>1988</option>
                        </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gender </td>
                                        <td>Male<input name="chkGender" type="checkbox" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Address <span class="contraint">*</span></td>
                                        <td><textarea name="tareaAddress" cols="50" rows="10"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email <span class="contraint">*</span></td>
                                        <td><input name="txtEmail" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Phone <span class="contraint">*</span></td>
                                        <td>
                                            <input name="txtPhone" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><img  src="images/capchar.png" width="197" height="60" /><br/>
                                            <button name="btnRefresh"  class="button">Refresh Image</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Capcha<span class="contraint">*</span></td>
                                        <td><input name="" type="text" size="30" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnRegister"  class="button">Register</button>
                                            <button name="btnReset"  class="button">Reset</button>
                                            <button name="btnCancel"  class="button">Cancel</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
            </div>
    </body>
</html>
