<%-- 
    Document   : changeSchedule
    Created on : Apr 9, 2012, 11:05:05 PM
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
                        <div class="title">Change Schedule</div>
                        <br/>
                        <table class="table" cellspacing="0">
                            <tr>
                                <th width="14%"style="-moz-border-radius-topleft:10px">No.</th>
                                <th width="29%" scope="col">Execution  Datetime</th>
                                <th width="28%" scope="col" >Excution Hours</th>
                            </tr>
                            <tr>
                                <td><p>1</p></td>
                                <td><p>21/03/2012</p></td>
                                <td><p>9h15 am</p></td>
                            </tr>
                        </table>
                        <div class="resume">
                            <form>
                                <table width="600px" style="text-align: center">
                                    <tr>
                                        <td width="120">Interview date</td>
                                        <td width="440">
                                            Year- <select>
                                                <option>2012</option>
                                                <option>2013</option>                           	<option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                            </select>
                                            Month- <select>
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
                                            Day- <select>
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
                                                <option>13</option>
                                                <option>14</option>
                                                <option>15</option>
                                                <option>16</option>
                                                <option>17</option>
                                                <option>18</option>
                                                <option>19</option>
                                                <option>20</option>
                                                <option>21</option>
                                                <option>22</option>
                                                <option>23</option>
                                                <option>24</option>
                                                <option>25</option>
                                                <option>26</option>
                                                <option>27</option>
                                                <option>28</option>
                                                <option>29</option>
                                                <option>30</option>
                                                <option>31</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="120">Interview time</td>
                                        <td width="440">Hours
                                            <select>
                                                <option>8</option>
                                                <option>9</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>13</option>
                                                <option>14</option>
                                                <option>15</option>
                                                <option>16</option>
                                            </select>
                                            Minutes
                                            <select>
                                                <option>0</option>
                                                <option>15</option>
                                                <option>30</option>
                                                <option>45</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td>
                                            <button name="btnReject"  class="button">Change</button>
                                            <button name="btnReject"  class="button">Back to Schedule</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"/>
            </div>
        </div>
    </body>
</html>
