<?php
class ProgramRequestForm extends Page {

	private static $db = array(
	);
	
	static $has_one = array();	

	
	

     
}
class ProgramRequestForm_Controller extends Page_Controller {

	public function programRequest(){
	
		$desiredFormat = new CheckboxSetField('DesiredFormat', 'Format(s) desired:', array(
		'Powerpoint' => 'Power point presentation (if you would like a power point presentation, please list in the additional notes/comments section at the bottom of the page if you can provide the required materials – computer, projector, projector screen)',
		'Game' => 'Game',
		'Discussion' => 'Discussion'
		));
		
		
		
		$topicOfPresentation = new CheckboxSetField('TopicOfPresentation', 'Topic Of Presentation:', array(
		'StressManagement' => 'Stress Management',
		'PhysicalActivity' => 'Physical Activity',
		'SexualHealth' => 'Sexual Health',
		'Nutrition' => 'Nutrition',
		'SubstanceAbuse' => 'Substance Abuse',
		'Tobacco' => 'Tobacco',
		'GeneralHealth' => 'General health'
		));
		
	
		$fields = new FieldList(
		new TextField('FirstName', '<span>*</span> First Name:'),
		new TextField('LastName', '<span>*</span> Last Name:'),
		new OptionsetField('PreferredMode', '<span>*</span> Preferred mode of communication:', array(
			'Phone' => 'Phone',
			'Email' => 'Email'
			
			)),
		new TextField('Phone', '<span>*</span> Phone:'),
		new TextField('Email', '<span>*</span> Email:'),
		new TextareaField('Organization', 'Organization:'),
		new TextField('FirstChoice', '<span>*</span> First choice of date and time:'),
		new TextField('SecondChoice', '<span>*</span> Second choice of date and time:'),
		new TextField('LocationOfEvent', 'Location Of Event:'),
		$desiredFormat,
		$topicOfPresentation,
		new TextareaField('ExtraNotes', 'Extra notes/comments we need to know:'));
				
	
		
		$actions = new FieldList(
            new FormAction('makeProgramRequest', 'Submit')
        );
        
        $validator = new RequiredFields('FirstName', 'LastName', 'Phone', 'Email', 'FirstChoice', 'SecondChoice');
        
		$form = new Form($this, 'programRequest', $fields, $actions, $validator);
		
		$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		
		return $form;
	}
	
	public function makeProgramRequest($data, $form){
	
		Session::clear("programRequestSuccess");
		
		$desiredFormatResult = '';
		$topicOfPresentationResult = '';
		
		$subject = "Student Health -- Program Request ";
		
		if (isset($data["DesiredFormat"])){
			if ($data["DesiredFormat"]){
				$desiredFormat = $data["DesiredFormat"];
				foreach ($desiredFormat as $format=>$formatValue){
					if ($desiredFormatResult != ''){
						$desiredFormatResult .= ',';
					}
					$desiredFormatResult .= ' ' . $formatValue;
				}
			}
		}
		
		if (isset($data["TopicOfPresentation"])){
			if ($data["TopicOfPresentation"]){
				$topicOfPresentation = $data["TopicOfPresentation"];
				
				foreach ($topicOfPresentation as $format=>$formatValue){
					if ($topicOfPresentationResult != ''){
						$topicOfPresentationResult .= ',';
					}
					$topicOfPresentationResult .= ' ' . $formatValue;
				}
			}
		}
		
    	$body = "A new program request has been made <br><br>"  .
    	'First Name: '. $data["FirstName"] . '<br><br>
    	Last Name: '. $data["LastName"] . '<br><br>
    	PreferredMode: '. $data["PreferredMode"] . '<br><br>
    	Phone: '. $data["Phone"] . '<br><br>
    	Email: '. $data["Email"] . '<br><br>
    	Organization: '. $data["Organization"] . '<br><br>
    	FirstChoice: '. $data["FirstChoice"] . '<br><br>
    	SecondChoice: '. $data["SecondChoice"] . '<br><br>
    	LocationOfEvent: '. $data["LocationOfEvent"] . '<br><br>
    	DesiredFormat: '. $desiredFormatResult . '<br><br>
    	TopicOfPresentation: '. $topicOfPresentationResult . '<br><br>
    	ExtraNotes: '. $data["ExtraNotes"] . '<br><br>';
    	
    	
    	include 'EmailArray.php';
    	
    	$email = new Email(); 
    	$email->setTo($emailArray); 	         
    	$email->setFrom($data["Email"]); 
    	$email->setSubject($subject); 
    	$email->setBody($body); 
    	$email->send(); 
    	
    	Session::set("programRequestSuccess", "1");

		return Controller::redirectBack();
		
	}
	
	
	function Success(){
		//$param = $this->request->allParams();
		//$param = $this->request->param('success');
		
		$param = Session::get("programRequestSuccess");
		
		//print_r ("PARAM IS " . $param);
		

		if ($param=="1"){
			return true;
		}
		else {
			return false;
		}
	}

	
	

}