<?php
class NominationForm extends Page {

	public static $db = array(
	
	);
	
	static $has_one = array();	

	
	

     
}
class NominationForm_Controller extends Page_Controller {

	
	public function NominationForm(){
		$fields = new FieldList(
			new TextField('HonoreeName', 'Honoree Name:'),
			new TextAreaField('Description', 'Please describe the exemplary performance (include date and time of event)'),
			new TextField('SubmitterName', 'Submitter Name:'),
			new OptionsetField('IAmA', 'I am a:', array(
			'Patient/Visitor' => 'Patient/Visitor',
			'Staff Member' => 'Staff Member',
			'Other' => 'Other'))
		);
				
		$actions = new FieldList(
            new FormAction('sendNominationForm', 'Submit')
        );
        
        $validator = new RequiredFields();
        
		$form = new Form($this, 'NominationForm', $fields, $actions, $validator);
		
		//$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		
		return $form;
	}
	
	public function sendNominationForm($data, $form){
	
		$subject = 'New nomination';
		
		$body = "A new program request has been made <br><br>" .
		'Honoree Name: '. $data["HonoreeName"] . '<br><br>
		Description: '. $data["Description"] . '<br><br>
		Submitter Name: '. $data["SubmitterName"] . '<br><br>
		I am a: '. $data["IAmA"] . '<br><br>';
		
		include 'EmailArray.php';
		
		$email = new Email(); 
    	$email->setTo($emailArray); 	         
    	$email->setFrom('nominationform@uiowa.edu'); 
    	$email->setSubject($subject); 
    	$email->setBody($body); 
    	$email->send(); 
    	
    	return Controller::redirectBack();
	}
	
	

	

}