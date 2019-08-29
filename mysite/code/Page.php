<?php
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;

class Page extends SiteTree {

	private static $db = array(
		'PostedBy' => 'Text',
	);

	private static $has_one = array(
		'Picture' => Image::class,
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
