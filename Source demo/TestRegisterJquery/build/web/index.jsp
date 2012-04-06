<%-- 
    Document   : index
    Created on : Apr 6, 2012, 10:19:07 AM
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/general.css"
      type="text/css" media="screen" />
        <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>
    </head>
    <body>
        <div id="container">
		<h1>Registration process</h1>
		<form method="post" id="customForm" action="Controller">
			<div>
				<label  for="name">Name</label>
				<input id="name" name="name" type="text" />
				<span id="nameInfo">What's your name?</span>
			</div>
			<div>
				<label for="email">E-mail</label>
				<input id="email" name="email" type="text" />
				<span id="emailInfo"> Input Valid E-mail please!</span>
			</div>
			<div>
				<label for="pass1">Password</label>
				<input id="pass1" name="pass1" type="password" />
				<span id="pass1Info">At least 6 characters: letters, numbers and '_'</span>
			</div>
			<div>
				<label for="pass2">Confirm Password</label>
				<input id="pass2" name="pass2" type="password" />
				<span id="pass2Info">Confirm password</span>
			</div>
			<div>
				<label for="message">Message</label>
				<textarea id="message" name="message" cols="" rows=""></textarea>
			</div>
			<div>
				<input id="send" name="action" type="submit" value="Register" />
			</div>
		</form>
	</div>
    </body>
</html>
