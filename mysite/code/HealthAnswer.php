<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DateField;
use SilverStripe\Control\Email\Email;
use SilverStripe\Blog\Model\BlogPost;
class HealthAnswer extends BlogPost {

	private static $db = array(
		"FirstName"          => 'Text',
		"LastName"           => 'Text',
		"ResponsePreference" => "Text",
		"Email"              => "Text",
		"QuestionType"       => "Text",
		'Question'           => 'HTMLText',
		'Answer'             => 'HTMLText',
		'ArticleDate'        => 'Date',

	);

	private static $has_one = array(
	);

	private static $singular_name = 'Health Answer Page';

	private static $plural_name = 'Health Answer Pages';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldFromTab('Root.Main', 'Content');

		$fields->removeByName("StoryBy");
		$fields->removeByName("StoryByEmail");
		$fields->removeByName("StoryByTitle");
		$fields->removeByName("StoryByDept");
		$fields->removeByName("PhotosBy");
		$fields->removeByName("PhotosByEmail");
		$fields->removeByName("ExternalURL");
		$fields->removeByName(Image::class);

		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Question'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Answer'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('FirstName', 'First Name'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('LastName', 'Last Name'));

		$fields->addFieldToTab('Root.Main', $dateField = new DateField('ArticleDate'));
		$dateField->setConfig('showcalendar', true);
		$dateField->setConfig('dateformat', 'MM/dd/YYYY');

		$fields->addFieldToTab('Root.QuestionInfo', new TextField('ResponsePreference', 'Response Preference'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField(Email::class));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('QuestionType', 'Question Type'));

		return $fields;

	}

	public function formatDate() {
		$timestamp     = strtotime($this->ArticleDate);
		$formattedDate = date("l, F j, Y", $timestamp);
		return $formattedDate;
	}

	public function getStatusFlags($cached = true) {
		$flags = parent::getStatusFlags();
		if ($this->isUserSubmitted()) {
			$flags['isUserSubmitted'] = "Submitted";
		}
		return $flags;
	}

	public function isUserSubmitted() {
		if ($this->Answer == "") {
			return true;
		} else {
			return false;
		}
	}

}