<?php
class StaffPage extends Page {

	 static $db = array(	 
	'Name' => 'Text',
	'JobTitle' => 'Text',
	'Email' => 'Text'
	);


	
	static $has_one = array(
	'Picture' => 'Image'
	);
	

	

	
	
	public function getCMSFields() {
	
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new UploadField('Picture'));
        
        
        $fields->addFieldToTab('Root.Main', new TextField('Name'));
        
        //$categoryArray = array('Health Care Provider Staff', 'Health Iowa Staff', 'Nursing Staff', 'Scheduling Staff', 'Administrative Staff');    
        //$fields->addFieldToTab('Root.Main', new DropdownField('Category', 'Category', $categoryArray));
        
        $fields->addFieldToTab('Root.Main', new TextField('JobTitle'));
        $fields->addFieldToTab('Root.Main', new TextField('Email'));
                
        return $fields;

     }

}

class StaffPage_Controller extends Page_Controller {

	

	



}