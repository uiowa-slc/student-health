<?php
class HealthAnswer extends Page {

	 static $db = array(
	 "FirstName" => 'Text',
	"LastName" => 'Text',
	"ResponsePreference" => "Text",
	"Email" => "Text",
	"QuestionType" => "Text",
	'Question' => 'HTMLText',
	'Answer' => 'HTMLText',
	'Source' => 'HTMLText'
	);


	
	static $has_one = array(
	'Picture' => 'Image'
	);
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
         $fields->removeFieldFromTab('Root.Main', 'Content');
        
        $fields->addFieldToTab('Root.Main', new UploadField('Picture'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Question'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Answer'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Source')); //Harder to post a link without it
         $fields->addFieldToTab('Root.Main', new TextField('FirstName', 'First Name'));
        $fields->addFieldToTab('Root.Main', new TextField('LastName', 'Last Name'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Question', 'Question Text'));
        $fields->addFieldToTab('Root.Main', new TextField('ResponsePreference', 'Response Preference'));
        $fields->addFieldToTab('Root.Main', new TextField('Email'));
        $fields->addFieldToTab('Root.Main', new TextField('QuestionType', 'Question Type'));

        $fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        
        
        return $fields;

     }

}
class HealthAnswer_Controller extends Page_Controller {

	
	public static $allowed_actions = array (
	);
	
	public function onAfterPublish(){
		
	}


}