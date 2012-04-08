<%-- 
    Document   : ApplicantHistory
    Created on : Apr 8, 2012, 8:54:48 PM
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
            <div class="title">View History</div>
        <br/>

        <table class="table" cellspacing="0">
          <tr align="center">
          	<th width="5%"style="-moz-border-radius-topleft:10px">No.</th>
            <th width="20%" scope="col">Vacancy name</th>
            <th width="17%" scope="col" >Applied Date</th>
            <th width="17%" scope="col">End Date</th>           <th width="13%" scope="col">Status</th>
             <th width="28%" scope="col"style="-moz-border-radius-topright:10px">Change Resume</th>
          </tr>
          <tr align="center">
            <td>1</td>
            <td><a href="Resume.html">Team leader</a> </td>
            <td>8/3/2012</td>
            <td>21/03/2012</td>
            <td>process</td>
            <td> <a href="Resume.html">Change</a> </td>
          </tr>
          <tr class="row" align="center">
            <td>2</td>
            <td><a href="Resume.html">Project Manager</a></td>
            <td>3/3/2012</td>
            <td>19/03/2012</td>
            <td>reject</td>
            <td> <a href="#">change</a></td>
          </tr>
              <tr align="center">
                <td>3</td>
                <td><a href="Resume.html">Programmer III</a></td>
                <td>14/2/2012</td>
                <td>18/03/2012</td>
                <td><a href="#">Scheduled</a></td>
                <td> <a href="#">Change</a></td>
              </tr>
               <tr align="center">
                <td>4</td>
                <td><a href="Resume.html">Programmer I</a></td>
                <td>14/2/2012</td>
                <td>18/03/2012</td>
                <td><a href="#">Scheduled</a></td>
                <td> <a href="#">Change</a></td>
              </tr>
               <tr align="center">
                <td>5</td>
                <td><a href="Resume.html">Programmer II</a></td>
                <td>14/2/2012</td>
                <td>18/03/2012</td>
                <td><a href="#">Scheduled</a></td>
                <td> <a href="#">Change</a></td>
              </tr>
              <tfoot>
            	<th colspan="7" align="center"><a href="#">First</a>|<a href="#">Prev</a>|<a href="#">Next</a>|<a href="#">Last</a>
                </th>
          <td width="0%"></tfoot>
      </table>

      </div>
  	</div>
    <jsp:include page="../footer.jsp"/>
        </div>
        </div>
    </body>
</html>
