<%-- 
    Document   : viewHistory
    Created on : Apr 9, 2012, 10:47:18 PM
    Author     : 6789
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.jboss.varia.scheduler.ScheduleManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/tlds/pager-taglib.tld" prefix="pg"%>
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
                        <div class="title">View History</div>
                        <br/>
                        <c:set var="Schedules" value="${requestScope.ScheduleINFO}"/>
                        <c:if test="${not empty Schedules}">
                            <pg:pager maxPageItems="3" export="currentPageNumber=pageNumber">
                                <table class="table" cellspacing="0">
                                    <tr>
                                        <th width="14%"style="-moz-border-radius-topleft:10px">No.</th>
                                        <th width="29%" scope="col">Execution  Datetime</th>
                                        <th width="28%" scope="col" >Excution Hours</th>
                                        <th width="20%" scope="col">Change</th>
                                        <th width="20%" scope="col">Details</th>
                                    </tr>
                                    <c:set var="count" value="0"/>
                                    <c:forEach var="schedule" items="${Schedules}">
                                        <c:set var="count" value="${count+1}"/>
                                        <pg:item>
                                            <c:if test="${count%2==0}">
                                                <tr>
                                                    <td><p style="text-align: center">${count}</p></td>
                                                    <td>
                                                        <p style="text-align: center">
                                                            ${schedule.executiondate}
                                                        </p>
                                                    </td>
                                                    <td><p style="text-align: center">${count}</p></td>
                                                    <td>
                                                        <c:when test="${schedule.isChange}">
                                                            <p>changed</p>
                                                        </c:when>
                                                        <c:when test="${!schedule.isChange}">
                                                            <c:url var="url" value="../InterviewerController">
                                                                <c:param name="ChangeSchedule" value="btnAction"/>
                                                                <c:param name="id" value="${schedule.vacancy}"/>
                                                            </c:url>
                                                            <a href="${url}">Change</a>
                                                        </c:when>
                                                    </td>
                                                    <td>
                                                        <p>
                                                            <c:url var="url" value="../InterviewerController">
                                                                <c:param name="ScheduleDetail" value="btnAction"/>
                                                                <c:param name="id" value="${schedule.vacancy}"/>
                                                            </c:url>
                                                            <a href="${url}">Details</a>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${count%2!=0}">
                                                <tr>
                                                    <td><p style="text-align: center">${count}</p></td>
                                                    <td>
                                                        <p style="text-align: center">
                                                            ${schedule.executiondate}
                                                        </p>
                                                    </td>
                                                    <td><p style="text-align: center">${count}</p></td>
                                                    <td>
                                                        <c:when test="${schedule.isChange}">
                                                            <p>changed</p>
                                                        </c:when>
                                                        <c:when test="${!schedule.isChange}">
                                                            <c:url var="url" value="../InterviewerController">
                                                                <c:param name="ChangeSchedule" value="btnAction"/>
                                                                <c:param name="id" value="${schedule.vacancy}"/>
                                                            </c:url>
                                                            <a href="${url}">Change</a>
                                                        </c:when>
                                                    </td>
                                                    <td>
                                                        <p>
                                                            <c:url var="url" value="../InterviewerController">
                                                                <c:param name="ScheduleDetail" value="btnAction"/>
                                                                <c:param name="id" value="${schedule.vacancy}"/>
                                                            </c:url>
                                                            <a href="${url}">Details</a>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </pg:item>
                                    </c:forEach>
                                    <tr>
                                        <th colspan="7" style="text-align: center">
                                            <pg:index>
                                                <pg:first><a class="button" style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF" href="<%= pageUrl%>">First</a></pg:first>
                                                <pg:prev>&nbsp;<a class="button" style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF" href="<%= pageUrl%>">Prev</a></pg:prev>
                                                <pg:pages><%
                                                            if (pageNumber.intValue() < 10) {
                                                    %>&nbsp;<%                            }
                                                                if (pageNumber == currentPageNumber) {
                                                    %><b  style="font-family:Tahoma, Geneva, sans-serif;font-size:14px;color:#FFF;text-decoration: underline"><%= pageNumber%></b><%
                                                                                                                    } else {
                                                    %><a  style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF" href="<%= pageUrl%>"><%= pageNumber%></a><%
                                                                }
                                                    %>
                                                </pg:pages>
                                                <pg:next>&nbsp;<a class="button" style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF" href="<%= pageUrl%>">Next</a></pg:next>
                                                <pg:last><a class="button" style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF" href="<%= pageUrl%>">Last</a></pg:last>

                                            </pg:index>
                                            <c:set var="total" value="${0}"/>
                                            <c:forEach var="schedule" items="${Schedules}" >
                                                <c:set var="total" value="${total+1}"/>
                                            </c:forEach>
                                            <div style="float:right"><p style="font-family:Tahoma, Geneva, sans-serif;font-size:12px;color:#FFF">Total : ${total} items</p></div>
                                        </th>
                                    </tr>
                                </table>
                            </pg:pager>
                        </c:if>
                    </div> 
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
