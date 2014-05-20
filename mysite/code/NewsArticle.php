<?php
class NewsArticle extends Page {

	 static $db = array(
	'PublishDate' => 'Date'
	);


	
	static $has_one = array(
	'Picture' => 'Image'
	);
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new UploadField('Picture'));
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        
        
        return $fields;

     }
     
     private static $plural_name = "News Articles";


}
class NewsArticle_Controller extends Page_Controller {

	
	private static $allowed_actions = array (
	);
	



}