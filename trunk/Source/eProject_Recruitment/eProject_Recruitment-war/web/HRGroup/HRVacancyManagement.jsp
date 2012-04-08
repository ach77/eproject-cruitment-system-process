<%-- 
    Document   : HRVacancyManagement
    Created on : Apr 6, 2012, 1:59:11 PM
    Author     : JunF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/pager-taglib.tld" prefix="pg"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <jsp:include page="../HRGroup/HRHeader.jsp"/>
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
                        <br/>
                        <c:set var="vacancies" value="${sessionScope.INFO}"/>
                        <c:if test="${not empty vacancies}">
                            <pg:pager maxPageItems="3" export="currentPageNumber=pageNumber">
                                <table class="table" cellspacing="0" width="100%">
                                    <tr>
                                        <th width="4%"  style="-moz-border-radius-topleft:10px" scope="col">No.</th>
                                        <th width="37%"  scope="col">Vacancy name</th>
                                        <th width="18%"  scope="col">Department</th>
                                        <th width="19%"  scope="col">Salary</th>
                                        <th width="7%"  scope="col">Slot</th>
                                        <th width="15%" style="-moz-border-radius-topright:10px"  scope="col">End Date</th>
                                    </tr>
                                    <tfoot>
                                        <c:set var="count" value="0"/>
                                        <c:forEach var="vacancy" items="${vacancies}" >
                                            <c:set var="count" value="${count+1}"/>
                                            <pg:item>
                                                <c:if test="${count%2==0}">
                                                    <tr>
                                                        <td><p>${count}</p></td>
                                                        <td> <a href="Controller?btnAction=VacancyDetail">${vacancy.title}</a></td>
                                                        <td><p>${vacancy.tblDepartment.description}</p> </td>
                                                        <td><p>${vacancy.salary}</p></td>
                                                        <td><p>${vacancy.slot}</p></td>
                                                        <td><p>${vacancy.enddate}</p></td>
                                                    </tr>
                                                </c:if>
                                                <c:if test="${count%2!=0}">
                                                    <tr class="row">
                                                        <td><p>${count}</p></td>
                                                        <td> <a href="Controller?btnAction=VacancyDetail">${vacancy.title}</a></td>
                                                        <td><p>${vacancy.tblDepartment.description}</p> </td>
                                                        <td><p>${vacancy.salary}</p></td>
                                                        <td><p>${vacancy.slot}</p></td>
                                                        <td><p>${vacancy.enddate}</p></td>
                                                    </tr>
                                                </c:if>
                                            </pg:item>
                                        </c:forEach>
                                </table>
                                <pg:index>
                                    <pg:prev>&nbsp;<a href="<%= pageUrl%>">[&lt;&lt; Prev]</a></pg:prev>
                                    <pg:pages><%
                                                if (pageNumber.intValue() < 10) {
                                        %>&nbsp;<%                            }
                                                    if (pageNumber == currentPageNumber) {
                                        %><b><%= pageNumber%></b><%
                                                                            } else {
                                        %><a href="<%= pageUrl%>"><%= pageNumber%></a><%
                                                    }
                                        %>
                                    </pg:pages>
                                    <pg:next>&nbsp;<a href="<%= pageUrl%>">[Next &gt;&gt;]</a></pg:next>
                                    <br>
                                </pg:index>
                            </pg:pager>
                        </c:if>
                        <div style="float:right;margin:5px 10px 20px 10px"><button class="button" >Add new vacancy</button> </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>

