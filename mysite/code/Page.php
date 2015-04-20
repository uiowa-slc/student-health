<?php
class Page extends SiteTree {

	private static $db = array(
		'PostedBy' => 'Text',
	);

	private static $has_one = array(
		'Picture' => 'Image',
	);

	private static $many_many = array(
	);

	private static $many_many_extraFields = array(
	);

	private static $plural_name = "Pages";

	private static $defaults = array();

	public function getCMSFields() {
		$f = parent::getCMSFields();

		return $f;
	}

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
	);

	public function RandomQuestions() {
		return HealthAnswer::get()->Sort('RAND()');
	}

	public function allStaffTeams() {
		//print_r(StaffTeam::get());
		return StaffTeam::get();

	}

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work

	}

}