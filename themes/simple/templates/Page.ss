<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS(superfish) %>
	<% require themedCSS(system-menus) %>
	<% require themedCSS(styles) %>
	<% require themedCSS(reset) %>	
	<% require themedCSS(reset-min) %>	
	<% require themedCSS(ie7) %> 
	<% require themedCSS(system) %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
	
	<script type="text/javascript" src="/misc/drupal.js?I"></script><!--Obviously I need to do something with this-->
	<script type="text/javascript" src="{$ThemeDir}/javascript/poormanscron.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.hoverIntent.minified.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.bgiframe.min.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/superfish.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/supersubs.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/supposition.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/sftouchscreen.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/hoverIntent.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/superfish.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery-easing.1.2.pack.js?I"></script>
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery-easing-compatibility.1.2.pack.js?I"></script>

	
	<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.coda-slider-2.0.js"></script>
	
	<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery.extend(Drupal.settings, { "basePath": "/", "cron": { "basePath": "/poormanscron", "runNext": 1347469639 } });
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery(function(){
jQuery('#superfish-4').supersubs({minWidth: 12, maxWidth: 27, extraWidth: 1}).superfish({
animation: {opacity:'show'},
speed: 'normal',
autoArrows: false,
dropShadows: false});
});
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery(function(){
jQuery('#superfish-1').supersubs({minWidth: 12, maxWidth: 27, extraWidth: 1}).superfish({
delay: 1000,
animation: {opacity:'show',},
speed: 'normal',
autoArrows: false,
dropShadows: false});
});
//--><!]]>
</script>

<script type="text/javascript" src="/sites/all/themes/shs/js/jquery.coda-slider-2.0.js"></script>

  <script type="text/javascript"> </script>
  
  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-26']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

	
</head>
<body class="$ClassName<% if Menu(2) %><% else %> no-sidebar<% end_if %>">
	<iframe src="http://studentlife.uiowa.edu/assets/StudentLifeBar_shs.html" width="100%" height="38" scrolling="no" style="border: none" frameborder="0">
	</iframe>
	<div id="background">
		<div id="container">
			<div id="wrapper">
				<% include Header %>
			<div id="nav">
				<p class="appointments"><a href="{$absoluteBaseURL}home/appointments/">Appointments</a></p>
				
				
				<div id="block-superfish-1" class=""><div class="block-inner">
				
					<ul id="superfish-1" class="sf-menu primary-links sf-horizontal sf-style-default sf-total-items-5 sf-parent-items-3 sf-single-items-2">
						<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}home" title="Home" class="sf-depth-1 menuparent active">Home</a>
							<ul>
								<% loop ChildrenOf(home) %>
									
										<li id="menu-633-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
										
								<% end_loop %>
								
							</ul>
		
					<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}services" title="Services" class="sf-depth-1 menuparent">Services</a>
							
							<ul>
								
								<% loop ChildrenOf(services) %>
									
												
										<li id="menu-513-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
												
										
								<% end_loop %>
							</ul>
					<li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}wellness" title="Services" class="sf-depth-1 menuparent">Wellness</a>
						<ul>
								<% loop ChildrenOf(wellness) %>
									
										<li id="menu-633-1" class="first odd sf-item-{$Pos} sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/{$URLSegment}" title="{$Title}" class="sf-depth-2">$Title</a></li>
										
								<% end_loop %>
								
						</ul>
	
<li id="menu-335-1" class="middle even sf-item-4 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}health-answers" title="Health Answers" class="sf-depth-1">Health Answers</a></li>		
		
<li id="menu-336-1" class="last odd sf-item-5 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}news" title="News" class="sf-depth-1">News</a></li>						

	</li>
</ul>
				
				
				
				<!---
				<ul id="superfish-1" class="sf-menu primary-links sf-horizontal sf-style-default sf-total-items-5 sf-parent-items-3 sf-single-items-2"><li id="menu-437-1" class="active-trail first odd sf-item-1 sf-depth-1 sf-total-children-12 sf-parent-children-0 sf-single-children-12 menuparent"><a href="{$absoluteBaseURL}home" title="Home" class="sf-depth-1 menuparent active">Home</a><ul><li id="menu-633-1" class="first odd sf-item-1 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/appointments" title="Appointments" class="sf-depth-2">Appointments</a></li><li id="menu-498-1" class="middle even sf-item-2 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/comments" title="Comments &amp; Contact Info" class="sf-depth-2">Comments &amp; Contact Info</a></li><li id="menu-943-1" class="middle odd sf-item-3 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/win" title="Campaign Against Laziness" class="sf-depth-2">Commission Against Laziness</a></li><li id="menu-494-1" class="middle even sf-item-4 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/health-fee" title="Health Fee" class="sf-depth-2">Health Fee/Costs</a></li><li id="menu-1046-1" class="middle odd sf-item-5 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/hours" title="Hours" class="sf-depth-2">Hours</a></li><li id="menu-493-1" class="middle even sf-item-6 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/insurance" title="Insurance" class="sf-depth-2">Insurance</a></li><li id="menu-492-1" class="middle odd sf-item-7 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/location-parking" title="Location/Parking" class="sf-depth-2">Location/Parking</a></li><li id="menu-499-1" class="middle even sf-item-8 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/other-health-websites" title="Other Health Websites" class="sf-depth-2">Other Health Websites</a></li><li id="menu-634-1" class="middle odd sf-item-9 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/parents" title="Parents" class="sf-depth-2">Parents / Guardians</a></li><li id="menu-496-1" class="middle even sf-item-10 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/patient-rights" title="Patient Rights" class="sf-depth-2">Patient Rights</a></li><li id="menu-497-1" class="middle odd sf-item-11 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/requirements-and-forms" title="Requirements and Forms" class="sf-depth-2">Requirements and Forms</a></li><li id="menu-495-1" class="last even sf-item-12 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}home/staff" title="Staff" class="sf-depth-2">Staff</a></li></ul></li><li id="menu-331-1" class="middle even sf-item-2 sf-depth-1 sf-total-children-13 sf-parent-children-0 sf-single-children-13 menuparent"><a href="{$absoluteBaseURL}services" title="Services" class="sf-depth-1 menuparent">Services</a><ul><li id="menu-513-1" class="first odd sf-item-1 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/allergies" title="Allergies" class="sf-depth-2">Allergies</a></li><li id="menu-523-1" class="middle even sf-item-2 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/blood-and-body-fluid-exposure" title="Blood and Body Fluid Exposure" class="sf-depth-2">Blood and Body Fluid Exposure</a></li><li id="menu-511-1" class="middle odd sf-item-3 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/general-medicine" title="General Medicine" class="sf-depth-2">General Medicine</a></li><li id="menu-512-1" class="middle even sf-item-4 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/gynecology" title="Gynecology" class="sf-depth-2">Gynecology</a></li><li id="menu-525-1" class="middle odd sf-item-5 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/immunizations" title="Immunizations" class="sf-depth-2">Immunizations</a></li><li id="menu-515-1" class="middle even sf-item-6 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/international-travel" title="International Travel" class="sf-depth-2">International Travel</a></li><li id="menu-517-1" class="middle odd sf-item-7 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/laboratory" title="Laboratory" class="sf-depth-2">Laboratory</a></li><li id="menu-521-1" class="middle even sf-item-8 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/nurse-care-room" title="Nurse Care Room" class="sf-depth-2">Nurse Care Room</a></li><li id="menu-763-1" class="middle odd sf-item-9 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/nurseline" title="" class="sf-depth-2">Nurseline</a></li><li id="menu-519-1" class="middle even sf-item-10 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/pharmacy" title="Pharmacy" class="sf-depth-2">Pharmacy</a></li><li id="menu-516-1" class="middle odd sf-item-11 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/psychiatry" title="Psychiatry" class="sf-depth-2">Psychiatry</a></li><li id="menu-526-1" class="middle even sf-item-12 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/self-care-guide" title="Self-Care Guide" class="sf-depth-2">Self-Care Guide</a></li><li id="menu-514-1" class="last odd sf-item-13 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}services/sexual-health" title="Sexual Health" class="sf-depth-2">Sexual Health</a></li></ul></li><li id="menu-334-1" class="middle odd sf-item-3 sf-depth-1 sf-total-children-10 sf-parent-children-0 sf-single-children-10 menuparent"><a href="{$absoluteBaseURL}wellness" title="Wellness" class="sf-depth-1 menuparent">Wellness</a><ul><li id="menu-544-1" class="first odd sf-item-1 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/drugs-and-alcohol" title="Drugs and Alcohol" class="sf-depth-2">Drugs and Alcohol</a></li><li id="menu-545-1" class="middle even sf-item-2 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/educational-programs" title="Educational Programs" class="sf-depth-2">Educational Programs</a></li><li id="menu-540-1" class="middle odd sf-item-3 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/fitness" title="Fitness" class="sf-depth-2">Fitness</a></li><li id="menu-547-1" class="middle even sf-item-4 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/health-iowa-data" title="Health Iowa Reports" class="sf-depth-2">Health Iowa Data</a></li><li id="menu-541-1" class="middle odd sf-item-5 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/nutrition" title="Nutrition" class="sf-depth-2">Nutrition</a></li><li id="menu-714-1" class="middle even sf-item-6 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}program-request-form" title="Program Request Form" class="sf-depth-2">Program Request Form</a></li><li id="menu-543-1" class="middle odd sf-item-7 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/sexual-health" title="Sexual Health" class="sf-depth-2">Sexual Health</a></li><li id="menu-542-1" class="middle even sf-item-8 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/stress-management" title="Stress Management" class="sf-depth-2">Stress Management</a></li><li id="menu-788-1" class="middle odd sf-item-9 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/student-involvement" title="Student Involvement" class="sf-depth-2">Student Involvement</a></li><li id="menu-546-1" class="last even sf-item-10 sf-depth-2 sf-no-children"><a href="{$absoluteBaseURL}wellness/tobacco-use" title="Tobacco Use" class="sf-depth-2">Tobacco Use</a></li></ul></li><li id="menu-335-1" class="middle even sf-item-4 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}health-answers" title="Health Answers" class="sf-depth-1">Health Answers</a></li><li id="menu-336-1" class="last odd sf-item-5 sf-depth-1 sf-no-children"><a href="{$absoluteBaseURL}news" title="News" class="sf-depth-1">News</a></li></ul>
-->
  
				</div></div> <!-- /block-inner, /block -->
			</div><!--End nav-->
<div class="clear"></div>



      
      
<div id="body">
		
<% include SideBar %>
		$Layout


<div class="clear"></div>
<% include Footer %>

<script type="text/javascript">
var fnames = new Array();var ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';
try {
    var jqueryLoaded=jQuery;
    jqueryLoaded=true;
} catch(err) {
    var jqueryLoaded=false;
}
var head= document.getElementsByTagName('head')[0];
if (!jqueryLoaded) {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js';
    head.appendChild(script);
    if (script.readyState && script.onload!==null){
        script.onreadystatechange= function () {
              if (this.readyState == 'complete') mce_preload_check();
        }    
    }
}
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = 'http://downloads.mailchimp.com/js/jquery.form-n-validate.js';
head.appendChild(script);
var err_style = '';
try{
    err_style = mc_custom_error_style;
} catch(e){
    err_style = '#mc_embed_signup input.mce_inline_error{border-color:#6B0505;} #mc_embed_signup div.mce_inline_error{margin: 0 0 1em 0; padding: 5px 10px; background-color:#6B0505; font-weight: bold; z-index: 1; color:#fff;}';
}
var head= document.getElementsByTagName('head')[0];
var style= document.createElement('style');
style.type= 'text/css';
if (style.styleSheet) {
  style.styleSheet.cssText = err_style;
} else {
  style.appendChild(document.createTextNode(err_style));
}
head.appendChild(style);
setTimeout('mce_preload_check();', 250);

var mce_preload_checks = 0;
function mce_preload_check(){
    if (mce_preload_checks>40) return;
    mce_preload_checks++;
    try {
        var jqueryLoaded=jQuery;
    } catch(err) {
        setTimeout('mce_preload_check();', 250);
        return;
    }
    try {
        var validatorLoaded=jQuery("#fake-form").validate({});
    } catch(err) {
        setTimeout('mce_preload_check();', 250);
        return;
    }
    mce_init_form();
}
function mce_init_form(){
    jQuery(document).ready( function($) {
      var options = { errorClass: 'mce_inline_error', errorElement: 'div', onkeyup: function(){}, onfocusout:function(){}, onblur:function(){}  };
      var mce_validator = $("#mc-embedded-subscribe-form").validate(options);
      $("#mc-embedded-subscribe-form").unbind('submit');//remove the validator so we can get into beforeSubmit on the ajaxform, which then calls the validator
      options = { url: 'http://uiowa.us2.list-manage1.com/subscribe/post-json?u=c61b1cddac92babd42d7d628e&id=c3ef47a8fb&c=?', type: 'GET', dataType: 'json', contentType: "application/json; charset=utf-8",
                    beforeSubmit: function(){
                        $('#mce_tmp_error_msg').remove();
                        $('.datefield','#mc_embed_signup').each(
                            function(){
                                var txt = 'filled';
                                var fields = new Array();
                                var i = 0;
                                $(':text', this).each(
                                    function(){
                                        fields[i] = this;
                                        i++;
                                    });
                                $(':hidden', this).each(
                                    function(){
                                        var bday = false;
                                        if (fields.length == 2){
                                            bday = true;
                                            fields[2] = {'value':1970};//trick birthdays into having years
                                        }
                                    	if ( fields[0].value=='MM' && fields[1].value=='DD' && (fields[2].value=='YYYY' || (bday && fields[2].value==1970) ) ){
                                    		this.value = '';
									    } else if ( fields[0].value=='' && fields[1].value=='' && (fields[2].value=='' || (bday && fields[2].value==1970) ) ){
                                    		this.value = '';
									    } else {
	                                        this.value = fields[0].value+'/'+fields[1].value+'/'+fields[2].value;
	                                    }
                                    });
                            });
                        return mce_validator.form();
                    }, 
                    success: mce_success_cb
                };
      $('#mc-embedded-subscribe-form').ajaxForm(options);      
      
    });
}
function mce_success_cb(resp){
    $('#mce-success-response').hide();
    $('#mce-error-response').hide();
    if (resp.result=="success"){
        $('#mce-'+resp.result+'-response').show();
        $('#mce-'+resp.result+'-response').html(resp.msg);
        $('#mc-embedded-subscribe-form').each(function(){
            this.reset();
    	});
    } else {
        var index = -1;
        var msg;
        try {
            var parts = resp.msg.split(' - ',2);
            if (parts[1]==undefined){
                msg = resp.msg;
            } else {
                i = parseInt(parts[0]);
                if (i.toString() == parts[0]){
                    index = parts[0];
                    msg = parts[1];
                } else {
                    index = -1;
                    msg = resp.msg;
                }
            }
        } catch(e){
            index = -1;
            msg = resp.msg;
        }
        try{
            if (index== -1){
                $('#mce-'+resp.result+'-response').show();
                $('#mce-'+resp.result+'-response').html(msg);            
            } else {
                err_id = 'mce_tmp_error_msg';
                html = '<div id="'+err_id+'" style="'+err_style+'"> '+msg+'</div>';
                
                var input_id = '#mc_embed_signup';
                var f = $(input_id);
                if (ftypes[index]=='address'){
                    input_id = '#mce-'+fnames[index]+'-addr1';
                    f = $(input_id).parent().parent().get(0);
                } else if (ftypes[index]=='date'){
                    input_id = '#mce-'+fnames[index]+'-month';
                    f = $(input_id).parent().parent().get(0);
                } else {
                    input_id = '#mce-'+fnames[index];
                    f = $().parent(input_id).get(0);
                }
                if (f){
                    $(f).append(html);
                    $(input_id).focus();
                } else {
                    $('#mce-'+resp.result+'-response').show();
                    $('#mce-'+resp.result+'-response').html(msg);
                }
            }
        } catch(e){
            $('#mce-'+resp.result+'-response').show();
            $('#mce-'+resp.result+'-response').html(msg);
        }
    }
}

</script><!--End mc_embed_signup--><!--End mc_embed_signup-->



</body>
</html>