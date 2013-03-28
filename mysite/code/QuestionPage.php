<?php
class QuestionPage extends Page {

	public static $db = array(
		"FirstName" => 'Text',
		"LastName" => 'Text',
		"Question" => 'Text',
		"ResponsePreference" => "Text",
		"Email" => "Text",
		"QuestionType" => "Text"
		
	);
	
	static $summary_fields = array('FirstName', 'LastName', 'Question', 'ResponsePreference', 'Email', 'QuestionType');
	
	static $has_one = array();	

	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new TextField('FirstName', 'First Name'));
        $fields->addFieldToTab('Root.Main', new TextField('LastName', 'Last Name'));
        $fields->addFieldToTab('Root.Main', new TextField('Question', 'Question Text'));
        $fields->addFieldToTab('Root.Main', new TextField('ResponsePreference', 'Response Preference'));
        $fields->addFieldToTab('Root.Main', new TextField('Email'));
        $fields->addFieldToTab('Root.Main', new TextField('QuestionType', 'Question Type'));
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        
        
        return $fields;

     }

	

     
}
class QuestionPage_Controller extends Page_Controller {

	function onAfterPublish(){
		//$holder = $this->QuestionType::get()->First();
		//$this->setParent($holder);
	}
	

}