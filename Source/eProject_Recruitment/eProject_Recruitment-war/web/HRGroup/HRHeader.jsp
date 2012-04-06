
<title>Recruitment Process System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="Css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/jquery.js"></script>
<script type="text/javascript" src="Js/easySlider1.5.js"></script>
<script type="text/javascript" src="Js/popup.js"></script>
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
<style type="text/css">
    #slider { margin:0; padding:0; list-style:none; }
    #slider ul,
    #slider li { margin:0; padding:0; list-style:none; }
    /*
        Author: Tu Nhat Van
    */
    #slider li { width:760px; height:348px; overflow:hidden; }
    p#controls { margin:0; position:relative; }
    #prevBtn,#nextBtn { display:block; margin:0; overflow:hidden; width:13px; height:28px; position:absolute; left: -13px; top:-210px; }
    #nextBtn { left:760px; }
    #prevBtn a { display:block; width:13px; height:28px; background:url(images/l_arrow.png) no-repeat 0 0; }
    #nextBtn a { display:block; width:13px; height:28px; background:url(images/r_arrow.png) no-repeat 0 0; }
</style>

<div class="header">
    <div class="block_header">
        <div class="logo"><a href="index.html"><img src="images/logo.jpg" width="293" height="112" border="0" alt="logo" /></a></div>
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
                <li><a href="index.html" class="active">Vacancies</a>
                </li>
                <li><a href="#"><span>Register</span></a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">About us</a>
                </li>
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
                        <p class="img"><img src="images/source.jpg" alt="screen 1" width="420" height="234" /></p>
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
                        <p class="img"><img src="images/engage.jpg" alt="screen 2" width="420" height="234" /></p>
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
                        <p class="img"><img src="images/manage.jpg" alt="screen 3" width="420" height="234" /></p>
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
                        <p class="img"><img src="images/integration.jpg" alt="screen 4" width="420" height="234" /></p>
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
