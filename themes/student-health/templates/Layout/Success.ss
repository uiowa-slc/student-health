<div class="container clearfix">
<!--AskYourQuestion.ss-->
<div class="white-cover"></div>
<section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
	<div id="main" class="typography">
	
		<h1 class="node-82">Ask Your Question</h1>      
		$Content
	  	<% if Success %>
    	<div class="questionSuccess">Your question has been sent!</div>
		<% end_if %>
		$AskYourQuestionForm
	
	</div>
</section>

<!-- end main -->
</div>