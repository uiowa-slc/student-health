<?php
class AskYourQuestion extends Page {

	public static $db = array(
	);
	static $has_one = array(
	);	
	static $has_many = array(
	);
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new EmailField('EmailTo', 'Email:'));
        
        return $fields;
   }
   
}
class AskYourQuestion_Controller extends Page_Controller {

	public static $allowed_actions = array(
		'AskYourQuestionForm'
	);
	public function init() {
		parent::init();
	}
	
	function Success(){
		$param = Session::get("success");
		//print_r ("PARAM IS " . $param);
		if ($param=="1"){
			return true;
		}
		else {
			return false;
		}
	}
	
	public function AskYourQuestionForm(){
		   		
		$fields = new FieldList(
			new TextField("FirstName", "First Name:"),
			new TextField("LastName", "Last Name:"),
			new TextAreaField("Question", "<span>*</span> Question:"),
			new EmailField("Email", "Your Email: "),
			new CheckboxField("ResponsePreference", "Check this box if it's ok to publish the response.")
	
		);
		
		/*
		$responsePreference = OptionsetField::create("ResponsePreference", "<span>*</span> Is it ok to publish the response to your question", $source = array(
		 "Yes" => "Yes",
		 "No" => "No"), $value = "1");
		 */
		
		$actions = new FieldList(
            new FormAction('askQuestion', 'Submit')
        );
        
        $validator = new RequiredFields('FirstName', 'Question', 'Email');
        
		$form = new Form($this, 'AskYourQuestionForm', $fields, $actions, $validator);
		//$form->enableSpamProtection();
		//$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		return $form;
		
	}
	
	function askQuestion($data, $form){
	
		$ResponseType = $data["ResponsePreference"];		
		
		$newHealthQuestion = new HealthAnswer();
		$newHealthQuestion->setParent(12);
	
	    $form->saveInto($newHealthQuestion);
	        	    
	    if ($newHealthQuestion->ResponsePreference == 1) {
	        
	        $newHealthQuestion->write();
	        $newHealthQuestion->writeToStage("Stage");
	        Session::set('Success', true);
	        
	     }
	            
        //Email notification
		
		if($newHealthQuestion->Email){
			$from = $newHealthQuestion->Email;
		}else {
			$from = "Student Health Questions";
		}
		
		$to = "placeholder@uiowa.edu";
		$subject = "New Student Health Question";
		$body = '<p>Someone submitted an Health Question.</p>
		
				<ul>
				
					<li><strong>Title:</strong> '.$newHealthQuestion->FirstName.'</li>
					<li><strong>Title:</strong> '.$newHealthQuestion->LastName.'</li>
					<li><strong>Sponsored By:</strong> '.$newHealthQuestion->Question.'</li>
					<li><strong>Description:</strong> '.$newHealthQuestion->Email.'</li>
					
				</ul>
				
				<!--<p><a href="http://afterclass.uiowa.edu/admin/pages/edit/show/'.$newHealthQuestion->ID.'">Approve it (or don\'t) here</a></p> -->';
		/*		
		$body = "A new question has been asked <br><br>" . 
	    	//'<br><br>Access link in CMS <a href="' . $newQuestion->Link() . '">hereee</a><br><br>'
	    	'First Name: '. $data["FirstName"] . '<br><br>
	    	Last Name: '. $data["LastName"] . '<br><br>
	    	Question: '. $data["Question"] . '<br><br>
	    	ResponsePreference: '. $data["ResponsePreference"] . '<br><br>
	    	Email: '. $data["Email"] . '<br><br>';
	    */
	
		//Session::clear("message");
				
		//$questionHolder = QuestionHolder::get()->First();
		//$newQuestion->setParent($questionHolder);
		//$newQuestion->Title = $data["FirstName"] . $data["LastName"];	
		//$newQuestion->writeToStage('Stage');
		//$newQuestion->publish('Stage');

		/*Error message functionality for forms
		$form->AddErrorMessage('ResponsePreference', "You must indicate that you've read our Terms and Conditions before registering.", 'good');
		
		$form->sessionMessage("Your question has been sent!", "good");
		$form->setMessage("Your question has been sent!", 'good');*/
		
		//Session::set("success", "1");
		//$url = Director::absoluteBaseURL() .'/health-answers/ask-your-question/?success=1';
 	
    	//include 'EmailArray.php';

    	$email = new Email($from, $to, $subject, $body); 
    	$email->send(); 

		Controller::curr()->redirect('./Ask-Your-Question/Success');
		
	}
	

		
}