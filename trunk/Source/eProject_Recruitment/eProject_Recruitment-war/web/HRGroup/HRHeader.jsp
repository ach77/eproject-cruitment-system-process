
<title>Recruitment Process System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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

<div class="header">
    <div class="block_header">
        <div class="logo"><a href="index.html"><img src="<%=request.getContextPath()%>/images/logo.jpg" width="293" height="112" border="0" alt="logo" /></a></div>
        <div class="signin">
            <form>
                <table style="font-size: 12px">
                    <tr>
                        <td><span style="font-size:16px">Welcome,    <a href="#"> JunFKennedy</a></span></td>
                        <td><a  class="button" href="#">Logout</a></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="clr"></div>
        <div id="menu">
            <ul>
                <li><a href="#" class="active">Recruitment</a>
                    <ul>
                        <li><a href="Controller?btnAction=VacancyManagement" >Vacancy Management</a></li>
                        <li><a href="Controller?btnAction=ApplicantManagement" >Applicant Management</a></li>
                        <li><a href="Controller?btnAction=InterviewManagement" >Interview Management</a></li>
                    </ul>
                </li>
                <li><a href="#">Report</a> </li>
            </ul>
        </div>
        <div class="clr"></div>

    </div>
</div>
<div class="slider">
    <div class="slice1">
        <div class="slice2" id="slider">
            <ul>
                <li>
                    <div>
                        <p class="img"><img src="<%=request.getContextPath()%>/images/source.jpg" alt="screen 1" width="420" height="234" /></p>
                        <h2>Source</h2>
                        <p>
                        <p>Collect resumes from your site and job boards like Simply Hired, Indeed and Juju</p><br />
                        <p>Add contacts as candidates from Outlook and Google Apps</p><br/>
                        <p>Reduce resume processing time with Resume parsing tool</p><br />
                        </p>

                        <p>&nbsp;</p>

                    </div>
                </li>
                <li>
                    <div>
                        <p class="img"><img src="<%=request.getContextPath()%>/images/engage.jpg" alt="screen 2" width="420" height="234" /></p>
                        <h2>Engage</h2>
                        <p>
                        <p>Reach large number of appplicants with just one click</p><br />
                        <p>Communicate with Clients and Candidates from within Zoho Recruit</p><br/>
                        <p>Schedule and track interviews</p><br />
                        </p>
                        <p>&nbsp;</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p class="img"><img src="<%=request.getContextPath()%>/images/manage.jpg" alt="screen 3" width="420" height="234" /></p>
                        <h2>Manage</h2>
                        <p>
                        <p>Search candidates quickly</p><br />
                        <p>Categorize jobs, candidates, clients and contacts using tags</p><br/>
                        <p>Create custom workflows for your business needs</p><br />
                        </p>
                        <p>&nbsp;</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p class="img"><img src="<%=request.getContextPath()%>/images/integration.jpg" alt="screen 4" width="420" height="234" /></p>
                        <h2>Integrations</h2>
                        <p>
                        <p>Get Clients and Contacts from Google Apps and Zoho CRM</p><br />
                        <p>Connect with Outlook</p><br/>
                        <p>Import events to Google Calendar</p><br />
                        </p>
                        <p>&nbsp;</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
