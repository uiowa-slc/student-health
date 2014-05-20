<?php
class NominationForm extends Page {

	private static $db = array(
	
	);
	
	static $has_one = array();	

	
	

     
}
class NominationForm_Controller extends Page_Controller {

	
	public function NominationForm(){
		$fields = new FieldList(
			new TextField('HonoreeName', '<span>*</span> Honoree Name:'),
			new TextAreaField('Description', '<span>*</span> Please describe the exemplary performance (include date and time of event)'),
			new TextField('SubmitterName', 'Submitter Name:'),
			new OptionsetField('IAmA', 'I am a:', array(
			'Patient/Visitor' => 'Patient/Visitor',
			'Staff Member' => 'Staff Member',
			'Other' => 'Other'))
		);
				
		$actions = new FieldList(
            new FormAction('sendNominationForm', 'Submit')
        );
        
        $validator = new RequiredFields('HonoreeName', 'Description');
        
		$form = new Form($this, 'NominationForm', $fields, $actions, $validator);
		
		$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		
		return $form;
	}
	
	public function sendNominationForm($data, $form){
	
		Session::clear("nominationSuccess");
	
		$subject = 'New nomination';
		
		$body = "A new nomination has been made <br><br>" .
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
    	
    	Session::set("nominationSuccess", "1"); 
    	
    	return Controller::redirectBack();
	}
	
	function Success(){
		//$param = $this->request->allParams();
		//$param = $this->request->param('success');
		
		$param = Session::get("nominationSuccess");
		
		//print_r ("PARAM IS " . $param);
		

		if ($param=="1"){
			return true;
		}
		else {
			return false;
		}
	}

	

	

}