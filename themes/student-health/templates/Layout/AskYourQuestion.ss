<!--AskYourQuestion.ss-->
<div id="main" class="typography">
	<div class="container clearfix">
		<h1 class="node-82">Ask Your Question</h1>      
		$Content
	  	<% if Success %>
    	<div class="questionSuccess">Your question has been sent!</div>
		<% end_if %>
		$AskYourQuestionForm
	</div>
</div>
<!-- end main -->