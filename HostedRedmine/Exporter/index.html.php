<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free Redmine Hosting :: Export Your Projects</title>
<meta name="description" content="Redmine" />
<meta name="keywords" content="issue,bug,tracker" />
<meta name="csrf-param" content="authenticity_token"/>
<meta name="csrf-token" content="GnCduNvHtpIMTk439G4PGQinCR6ivWyfIQVUXoarPfU="/>
<link rel='shortcut icon' href='/favicon.ico?1279937968' />
<link href="/themes/ModulaMojito/stylesheets/application.css?1295041690" media="all" rel="stylesheet" type="text/css" />
 
<script src="/javascripts/prototype.js?1307524965" type="text/javascript"></script>
<script src="/javascripts/effects.js?1269601098" type="text/javascript"></script>
<script src="/javascripts/dragdrop.js?1269601098" type="text/javascript"></script>
<script src="/javascripts/controls.js?1269601098" type="text/javascript"></script>
<script src="/javascripts/application.js?1312192240" type="text/javascript"></script>
 
<!--[if IE 6]>
    <style type="text/css">
      * html body{ width: expression( document.documentElement.clientWidth < 900 ? '900px' : '100%' ); }
      body {behavior: url(/stylesheets/csshover.htc?1269601098);}
    </style>
<![endif]-->
 
<!-- page specific tags -->
 
</head>
<body class="theme-Modulamojito controller-account action-login">
<div id="wrapper">
<div id="wrapper2">
<div id="top-menu">
    
    <ul><li><a href="/" class="home">Home</a></li>
<li><a href="/projects" class="projects">Projects</a></li>
<li><a href="http://www.redmine.org/guide" class="help">Help</a></li></ul></div>
 
<div id="header">
    
    <div id="quick-search">
        <form action="/search" method="get">
        
        <a href="/search" accesskey="4">Search</a>:
        <input accesskey="f" class="small" id="q" name="q" size="20" type="text" />
        </form>
        
    </div>
    
    
    <h1>Export Your Projects from HostedRedmine.com</h1>
 
    
</div>
 
<div class="nosidebar" id="main">
    <div id="sidebar">        
        
        
 

 
 
 
    </div>
 
    <div id="content">

<?php /*
<div class="flash error">Export function currently under maintenance. Come back in 1 hour.</div>
*/ ?>

<?php
if (isset($login_message)) {
?>
<div class="flash error"><?php echo $login_message ?></div>
<?php
}
?>
      
<div id="login-form">
<form action="index.php" method="post">
<table>
<tr>
    <td align="right"><label for="username">Login:</label></td>
    <td align="left"><input id="username" name="username" tabindex="1" type="text" /></td>
</tr>
<tr>
    <td align="right"><label for="password">Password:</label></td>
    <td align="left"><input id="password" name="password" tabindex="2" type="password" /></td>
</tr>
<tr>
    <td align="left">
                
    </td>
    <td align="right">
        <input type="submit" name="login" value="Login &#187;" tabindex="5"/>
    </td>
</tr>
</table>
<script type="text/javascript"> 
//<![CDATA[
Form.Element.focus('username');
//]]>
</script>
</form>
</div>

<br/><br/><br/>

<p align="center">After you login, the system will generate your export zip file and will present it for your download.
<br/>Please be patient, the process may take a few minutes.</p>

<p align="center">The exporter now supports UTF-8 for international characters/languages.
<br/>If you experience any issues with this, <a href="http://www.hostedredmine.com/projects/hosted-redmine/issues/new">please let me know</a>.</p>

<div style="clear:both;"></div>
 
    </div>
</div>
 
<div id="ajax-indicator" style="display:none;"><span>Loading...</span></div>
	
<div id="footer">
  <div class="bgl"><div class="bgr">
    Proudly hosted by <a href="http://www.bitbot.com.au/">BitBot Software Pty Ltd</a>. Experts in <a href="http://www.bitbot.com.au/services/">Linux, FreeBSD and business open-source software</a>.
    <br/>
    Powered by <a href="http://www.redmine.org/">Redmine</a> &copy; 2006-2011 Jean-Philippe Lang
    <br/>
    Our content &copy; 2010 <a href="http://www.bitbot.com.au/contact-us/">BitBot Software Pty Ltd</a>. Licensed under <a rel="license" href="http://creativecommons.org/licenses/by-sa/2.5/au/">Creative Commons</a>.
  </div></div>
</div>
</div>
</div>
<script type="text/javascript"> 
 
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12687515-3']);
  _gaq.push(['_setCustomVar', 1, 'Login', document.getElementById('loggedas') != null
  ? document.getElementById('loggedas').childNodes[1].textContent : '(anonymous)', 1]);
  _gaq.push(['_trackPageview']);
 
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
 
</script>
</body>
</html>

