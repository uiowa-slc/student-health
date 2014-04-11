<?php
class WellnessHolder extends Page {

	private static $db = array(
	'RightColumn' => 'HTMLText'
	);
	
	static $has_one = array();	

	public function getCMSFields() {
	
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('RightColumn', 'Put content for the right column of the main wellness page here'));
                
        return $fields;

     }
	

     
}
class WellnessHolder_Controller extends Page_Controller {

	
	private static $allowed_actions = array (
	);
	


	

	

}