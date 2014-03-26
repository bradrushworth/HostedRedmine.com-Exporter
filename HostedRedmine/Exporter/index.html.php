<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free Redmine Hosting :: Export Your Projects</title>
<meta name="description" content="Redmine" />
<meta name="keywords" content="issue,bug,tracker" />
<link rel='shortcut icon' href='/favicon.ico?1393762153' />
<link href="/stylesheets/jquery/jquery-ui-1.9.2.css?1369988629" media="all" rel="stylesheet" type="text/css" />
<link href="/themes/coffee/stylesheets/application.css?1361909765" media="all" rel="stylesheet" type="text/css" />
 
<script src="/javascripts/jquery-1.8.3-ui-1.9.2-ujs-2.0.3.js?1369988628" type="text/javascript"></script>
<script src="/javascripts/application.js?1312192240" type="text/javascript"></script>
 
<!--[if IE 6]>
    <style type="text/css">
      * html body{ width: expression( document.documentElement.clientWidth < 900 ? '900px' : '100%' ); }
      body {behavior: url(/stylesheets/csshover.htc?1269601098);}
    </style>
<![endif]-->
 
<!-- page specific tags -->
 
</head>
<body class="theme-Coffee project-hosted-redmine controller-issues action-show">
<div id="wrapper">
<div id="wrapper2">
<div id="wrapper3">
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

<h1 align="center">Export Your Projects from HostedRedmine.com</h1>

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

<p align="center">This exporter allows users of HostedRedmine.com to regularly export their database contents for both backup and migration purposes.
<br/>You can therefore use this utility to keep a local copy of your data on your computer.
<br/>The exporter format is a zip file containing both the database SQL and all of your uploaded attachments.
<br/>You can use these files to import directly into a new private Redmine instance with minimal disruption.</p>

<p align="center">You may download your export at any time without affecting your ongoing use of HostedRedmine.com.</p>

<p align="center">After you login, the system will generate your export zip file and will present it for your download.
<br/>Please be patient, the process may take a few minutes.</p>

<p align="center">The exporter now supports UTF-8 for international characters/languages.
<br/>If you experience any issues with this, <a href="http://www.hostedredmine.com/projects/hosted-redmine/issues/new">please let me know</a>.</p>

<p align="center">If you require a full Redmine instance with unrestricted Administrator access, 
we recommend our partner <a href="https://plan.io/redmine-hosting/?ref=bitbot">Planio Redmine Hosting</a>. 
<br/>Planio offers <a href="https://plan.io/pricing/?ref=bitbot">paid hosted Redmine</a> instances 
including <a href="https://plan.io/subversion-hosting-and-git-hosting/?ref=bitbot">hosted Subversion and Git</a>. 
Existing <a href="https://www.hostedredmine.com/">HostedRedmine.com</a> users 
<br/>can also transition to Planio for free. Just export your data here and 
<a href="https://plan.io/contact/?ref=bitbot">contact Planio</a> to request a free data import.</p>

<div style="clear:both;"></div>
 
    </div>
</div>
</div>
 
<div id="ajax-indicator" style="display:none;"><span>Loading...</span></div>
<div id="ajax-modal" style="display:none;"></div>

<div id="footer">
  <div class="bgl"><div class="bgr">
    Powered by <a href="http://www.redmine.org/">Redmine</a> &copy; 2006-2014 Jean-Philippe Lang
    <br/>
    Our content &copy; 2012 <a href="http://www.bitbot.com.au/contact-us/">BitBot Software Pty Ltd</a>. Licensed under <a rel="license" href="http://creativecommons.org/licenses/by-sa/2.5/au/">Creative Commons</a>.
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

