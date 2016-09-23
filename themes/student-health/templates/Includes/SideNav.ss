<div class="widget">
<h3>Up to date</h3>

Can’t find what you are looking for? The University of Iowa Student Health & Wellness subscribes to UpToDate, an online medical library created by doctors.

<div id="uptodatesearchcontainer" style="width:160px; padding: 6px; background-color: #ffffff; text-align: left; font-family: Helvetica; font-size: 11px; line-height: 14px;"> If you are seeing this, you have attempted to link to the UpToDate widget but are experiencing a problem. Please visit <a href="https://www.uptodate.com/patients/refer.html" rel="nofollow">UpToDate</a> for more information. </div> <script language="javascript" type="text/javascript" src="https://www.uptodate.com/patient_search_box.js?widgetId=1&clientId="></script>
</div>

 <% if Menu(2) %>
	<% with Level(1) %>
		<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
	<% end_with %>
<% end_if %>

<% if Menu(2) %>
<nav class="sec-nav">
	<ul class="first-level">
			<% with Level(1) %>
				<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
			<% end_with %>
			<% loop Menu(2) %>
				<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a>
				
				<%-- third level nav option 1 --%>
					<% if $LinkOrSection = "section" && Children %>
						<ul class="second-level">
							<% loop Children %>
								<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
									<a href="$Link">$MenuTitle</a>
									<% if $LinkOrSection = "section" && Children %>
										<ul class="third-level">
											<% loop Children %>
												<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
													<a href="$Link">$MenuTitle</a>
												</li>
											<% end_loop %>
										</ul>
									<% end_if %>

								</li>
							<% end_loop %>
						</ul>
					<% end_if %>
					
				<%-- end third level nav option 1 --%>
				
				</li>
			<% end_loop %>
		
	</ul>
</nav>
<% end_if %>

<aside>
	<div class="mod">
		$SideBarView
	</div>
	<% if SidebarItems %>
		<% loop SidebarItems %>
			<% include SidebarItem %>
		<% end_loop %>
	<% end_if %>
</aside>
<% include SideNavQuickLinks %>