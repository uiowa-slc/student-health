<?php
class ViewMergedPagesTask extends BuildTask {

	protected $title = 'Echo out pages that were merged';
	protected $description = '';
	protected $enabled = true;

	function init() {
		parent::init();
		// Unless called from the command line, all CliControllers need ADMIN privileges
		if (!Director::is_cli() && !Permission::check("ADMIN")) {
			return Security::permissionFailure();
		}
	}
	function run($request) {

		$pages = Page::get()->filter(array('LastEdited:GreaterThan' => '2015-04-08 12:00'));
		foreach ($pages as $page) {
			echo '<li><a href="http://hulk.imu.uiowa.edu' . $page->Link() . '">' . $page->Title . '</a></li>';
		}
	}

}
