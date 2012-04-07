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
        <title>Recruitment Process System</title>
        <link href="Css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" charset="utf-8">
            function formValidation()
            {
                var username = document.registration.txtUsername;
                var password = document.registration.txtPassword;
                var confirmpassword = document.registration.txtConfirmPassword;
                var day = document.registration.cbxDay;
                var month = document.registration.cbxMonth;
                var year = document.registration.cbxYear;
                var uzip = document.registration.zip;
                var uemail = document.registration.email;
                var umsex = document.registration.msex;
                var ufsex = document.registration.fsex; if(userid_validation(uid,5,12))
                {
                    if(passid_validation(passid,7,12))
                    {
                        if(allLetter(uname))
                        {
                            if(alphanumeric(uadd))
                            {
                                if(countryselect(ucountry))
                                {
                                    if(allnumeric(uzip))
                                    {
                                        if(ValidateEmail(uemail))
                                        {
                                            if(validsex(umsex,ufsex))
                                            {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;

            } function userid_validation(uid,mx,my)
            {
                var uid_len = uid.value.length;
                if (uid_len == 0 || uid_len >= my || uid_len < mx)
                {
                    alert("User Id should not be empty / length be between "+mx+" to "+my);
                    uid.focus();
                    return false;
                }
                return true;
            }
            function passid_validation(passid,mx,my)
            {
                var passid_len = passid.value.length;
                if (passid_len == 0 ||passid_len >= my || passid_len < mx)
                {
                    alert("Password should not be empty / length be between "+mx+" to "+my);
                    passid.focus();
                    return false;
                }
                return true;
            }
            function allLetter(uname)
            {
                var letters = /^[A-Za-z]+$/;
                if(uname.value.match(letters))
                {
                    return true;
                }
                else
                {
                    alert('Username must have alphabet characters only');
                    uname.focus();
                    return false;
                }
            }
            function alphanumeric(uadd)
            {
                var letters = /^[0-9a-zA-Z]+$/;
                if(uadd.value.match(letters))
                {
                    return true;
                }
                else
                {
                    alert('User address must have alphanumeric characters only');
                    uadd.focus();
                    return false;
                }
            }
            function countryselect(ucountry)
            {
                if(ucountry.value == "Default")
                {
                    alert('Select your country from the list');
                    ucountry.focus();
                    return false;
                }
                else
                {
                    return true;
                }
            }
            function allnumeric(uzip)
            {
                var numbers = /^[0-9]+$/;
                if(uzip.value.match(numbers))
                {
                    return true;
                }
                else
                {
                    alert('ZIP code must have numeric characters only');
                    uzip.focus();
                    return false;
                }
            }
            function ValidateEmail(uemail)
            {
                var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                if(uemail.value.match(mailformat))
                {
                    return true;
                }
                else
                {
                    alert("You have entered an invalid email address!");
                    uemail.focus();
                    return false;
                }
            } function validsex(umsex,ufsex)
            {
                x=0;

                if(umsex.checked)
                {
                    x++;
                } if(ufsex.checked)
                {
                    x++;
                }
                if(x==0)
                {
                    alert('Select Male/Female');
                    umsex.focus();
                    return false;
                }
                else
                {
                    alert('Form Succesfully Submitted');
                    window.location.reload()
                    return true;
                }
            }

        </script>
    </head>
    <body>
        <div class="main">
            <jsp:include page="header.jsp"/>
            <div class="product">
                <div class="title">Manage Account</div>
                <br/>
                <div class="resume">
                    <form action="Controller" method="POST">
                        <table width="600px">
                            <tr>
                                <td>User name <span class="contraint">*</span></td>
                                <td><input name="txtRegisterUsername" type="text" size="20" />
                                </td>
                            </tr>
                            <tr>
                                <td>Password <span class="contraint">*</span></td>
                                <td><input name="txtRegisterPassword" type="password" size="20" />
                                </td>
                            </tr>
                            <tr>
                                <td>ConfirmPassword <span class="contraint">*</span></td>
                                <td><input name="txtRegisterConfirmPassword" type="password" size="20" />
                                </td>
                            </tr>
                            <tr>
                                <td>Date of Birth <span class="contraint">*</span><br/>
               	      (dd/mm/yyyy):</td>
                                <td>Day :<select name="cbxDay">
                                        <option selected="selected">--</option>
                                    </select>-Month:<select name="cbxMonth"><option>--</option></select>-Year:<select name="cbxRegisterYear"><option>----</option></select>
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
                                <td>Capcha <span class="contraint">*</span></td>
                                <td><input name="" type="text" size="30" />
                                </td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td>
                                    <button name="btnRegister"  class="button">Register</button>
                                    <button name="btnReset"  class="button">
                                        Reset</button>
                                    <button name="btnCancel"  class="button">Cancel</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
