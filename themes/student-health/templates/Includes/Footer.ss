<footer class="footer clearfix" role="contentinfo">
    <div class="container">
        <div class="colgroup">
			<div class="col-1-2">
				<a href="http://studentlife.uiowa.edu" class="hide-print"><img src="division-project/images/dosl-uiowa.png" alt="Division Of Student Life" style="margin-top: -20px;"></a><br>
				<% if $SiteConfig.GroupSummary %>
					<p>$SiteConfig.GroupSummary</p>
				<% else %>
					<p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p>
				<% end_if %>
				<p>$SiteConfig.Address<br>
				<% if $SiteConfig.PhoneNumber %>
				$SiteConfig.PhoneNumber
				<% end_if %></p>
				
			</div>
			<div class="col-1-4 hide-print">
				<div class="colgroup">
					<ul class="footer-nav">
						<% if $SiteConfig.FacebookLink %>
						<li><a href="$SiteConfig.FacebookLink" target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
						<% end_if %>
						<% if $SiteConfig.TwitterLink %>
						<li><a href="$SiteConfig.TwitterLink" target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
						<% end_if %>
					</ul>
					<ul class="footer-nav">
						<% loop Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				</div>
			</div>
			<div class="col-1-4 hide-print">
				<p>The information available on our website is provided for informational purposes. The information found on our website is not intended to replace the relationship that exists between a patient/site visitor and his/her physician. Always seek the advice of your physician or other qualified health provider with any questions you may have regarding a medical condition. The site is funded by Student Health & Wellness, and is updated by Student Health & Wellness staff.</p>
				<a href="appointments/" class="appt-btn">Make an Appointment</a>
			</div>
        </div>
        <hr>
        <p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved.</p>
    </div>
</footer>

