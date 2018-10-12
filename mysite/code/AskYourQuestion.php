<?php

use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextField;
class AskYourQuestion extends Page {

	private static $db = array(
		"EmailTo" => "Text",
		"SuccessMessage" => "Text"
	);
	private static $has_one = array(
	);	
	private static $has_many = array(
	);
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new EmailField('EmailTo', 'Email this form to:'));
        $fields->addFieldToTab('Root.Main', new TextField('SuccessMessage', 'Success Message:'));
        return $fields;
   }
   
}

		
