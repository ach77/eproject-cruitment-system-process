<%-- 
    Document   : ChooseDatetime
    Created on : Apr 6, 2012, 2:01:25 PM
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
                        <div class="title">Choose Date and Time for the Interview</div>
                        <br/>
                        <div class="resume" >
                            <hr />
                            <form>
                                <table width="100%" cellspacing="0px" cellpadding="10px">
                                    <tr>
                                        <td width="159" align="center">Interview's date :</td>
                                        <td width="429">Day
                                            <label for="select"></label>
                                            <select name="select" id="select">
                                                <option value="1">1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                            </select>
                                            -Month
                                            <label for="select2"></label>
                                            <select name="select2" id="select2">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                                <option>9</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            -Year
                                            <label for="select3"></label>
                                            <select name="select3" id="select3">
                                                <option>2012</option>
                                                <option>2013</option>
                                                <option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td align="center">Interview's time :</td>
                                        <td><label for="select4"></label>
                                            <select name="select4" id="select4">
                                                <option>8</option>
                                                <option>9</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                            hour -
                                            <label for="select5"></label>
                                            <select name="select5" id="select5">
                                                <option>00</option>
                                                <option>15</option>
                                                <option>30</option>
                                                <option>45</option>
                                            </select>
                                            minute</td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td align="center">
                                            <input type="submit" value="Choose" name="btnAction" class="button" />
                                            <input type="submit" value="Cancel" name="btnAction" class="button" />
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
