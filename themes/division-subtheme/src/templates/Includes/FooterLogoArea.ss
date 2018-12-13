<%-- footer logo area, used only in a few sites, override in division-subtheme if necessary --%>
<footer class="footer-logo-area" role="contentinfo">
	<div class="row">
		<div class="columns medium-6 large-4">
			<% include LastEditedNote %>
			<p>
				<a href="appointments/" class="button text-center">Make an Appointment</a>
			</p>
			$SiteConfig.Hours
			</div>
			<div class="show-for-large columns large-5">

				<div class="row">

					<div class="large-7 columns">
			
						<div class="quick-links">
							<ul>
								<li class="quick-links__item"><a href="info/parents/" class="quick-links__link quick-links__link--small quick-links__link--parents"> For Parents / Guardians</a></li>
								<li class="quick-links__item"><a href="info/insurance/" class="quick-links__link quick-links__link--insurance quick-links__link--small">Insurance</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--intl quick-links__link--small" href="info/requirements-and-forms/#international">International Students</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--mychart quick-links__link--small" href="info/my-medical-chart/">MyChart</a></li>
								<li class="quick-links__item"><a class="quick-links__link quick-links__link--self-care quick-links__link--small" href="services/self-care-guide/">Health Answers &amp; Self-Care Guide</a></li>
							</ul>
						</div>

					</div>

					<div class="large-5 columns">
						<a href="{$BaseHref}"><img class="footer-logo-area__logo" alt="Student Health & Wellness Logo" src="{$ThemeDir}/src/images/SHW-Stacked.png" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"/></a>
					</div>

				</div>

			</div>
			<div class="columns large-3">
				<p>
					Medical services: <br />
					<a href="http://www.aaahc.org/" target="_blank"><img class="footer-logo-area__accred" alt="Accredited by the Accreditation Association for Ambulatory Health Care, Inc." src="{$ThemeDir}/src/images/aaahc.jpg"/></a>
				</p>
			</div>
		</div>
	</footer>