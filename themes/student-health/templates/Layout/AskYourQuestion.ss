<div class="gradient">
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

	 <section class="sec-content hide-print">
	    	<% include BlogSideBar %>
	       	<div class="ask-sidebar"><a href="ask-your-question/" class="btn">Ask a question!</a></div>
	    </section>

	<!-- end main -->
	</div>
</div>