<?php
class HealthAnswer extends BlogEntry {

	static $db = array(
		"FirstName" => 'Text',
		"LastName" => 'Text',
		"ResponsePreference" => "Text",
		"Email" => "Text",
		"QuestionType" => "Text",
		'Question' => 'HTMLText',
		'Answer' => 'HTMLText',
		'ArticleDate' => 'Date',

		);


	
	static $has_one = array(
		);
	
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
		$fields->removeByName("Image");
		
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Question'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Answer'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('FirstName', 'First Name'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('LastName', 'Last Name'));
		
		$fields->addFieldToTab('Root.Main', $dateField = new DateField('ArticleDate'));
		$dateField->setConfig('showcalendar', true);
		$dateField->setConfig('dateformat', 'MM/dd/YYYY');
		
		
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('ResponsePreference', 'Response Preference'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('Email'));
		$fields->addFieldToTab('Root.QuestionInfo', new TextField('QuestionType', 'Question Type'));
		

		
		return $fields;

	}
	
	public function formatDate(){
		$timestamp = strtotime($this->ArticleDate);
		$formattedDate = date("l, F j, Y", $timestamp);	
		return $formattedDate;
	}

}
class HealthAnswer_Controller extends BlogEntry_Controller {

	

}