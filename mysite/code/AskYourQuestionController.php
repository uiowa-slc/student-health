<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Session;
use SilverStripe\Control\Controller;
class AskYourQuestionController extends PageController {

	private static $allowed_actions = array(
		'AskYourQuestionForm',
		'success',
	);
	private static $url_handlers = array(
        'success//' => 'success',
       
    );
	public function init() {
		parent::init();
	}
	
	// function Success(){
	// 	$param = Session::get("success");
	// 	//print_r ("PARAM IS " . $param);
	// 	if ($param=="1"){
	// 		return true;
	// 	}
	// 	else {
	// 		return false;
	// 	}
	// }
	
	public function Success(){

  		return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }   

	public function AskYourQuestionForm(){
		   		
		$fields = new FieldList(
			new TextField("FirstName", "First Name:"),
			new TextField("LastName", "Last Name:"),
			new TextAreaField("Question", "<span>*</span> Question:"),
			new EmailField(Email::class, "Your Email: "),
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
        
        $validator = new RequiredFields('FirstName', 'Question', Email::class);
        
		$form = new Form($this, 'AskYourQuestionForm', $fields, $actions, $validator);
		//$form->enableSpamProtection();
		//$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		return $form;
		
	}
	
	function askQuestion($data, $form){
	
		$ResponseType = $data["ResponsePreference"];		
		
		$newHealthQuestion = new HealthAnswer();
		$newHealthQuestion->setParent(12);
		$newHealthQuestion->Title = 'New Submitted Health Answer';
	
	    $form->saveInto($newHealthQuestion);
	        	    
	    if ($newHealthQuestion->ResponsePreference == 1) {
	        
	        $newHealthQuestion->write();
	        //$newHealthQuestion->doRestoreToStage();
	       $newHealthQuestion->writeToStage('Stage');
	        Session::set('Success', true);
	        
	     }
	            
        //Email notification
		
		if($newHealthQuestion->Email){
			$from = $newHealthQuestion->Email;
		}else {
			$from = "Student Health Questions";
		}
		
		$to = $this->EmailTo;
		$subject = "New Student Health Question";
		$body1 = '<p>Someone submitted an Health Question.</p>
		
				<ul>
				
					<li><strong>First Name:</strong> '.$newHealthQuestion->FirstName.'</li>
					<li><strong>Last Name:</strong> '.$newHealthQuestion->LastName.'</li>
					<li><strong>Email:</strong> '.$newHealthQuestion->Email.'</li>
					<li><strong>Question:</strong> '.$newHealthQuestion->Question.'</li>
					
				</ul>';
				
		$body2 = '<p>Someone submitted an Health Question.</p>
		
				<ul>
				
					<li><strong>First Name:</strong> '.$newHealthQuestion->FirstName.'</li>
					<li><strong>Last Name:</strong> '.$newHealthQuestion->LastName.'</li>
					<li><strong>Email:</strong> '.$newHealthQuestion->Email.'</li>
					<li><strong>Question:</strong> '.$newHealthQuestion->Question.'</li>
				</ul>
				
				<p><a href="http://studenthealth.uiowa.edu/admin/pages/edit/show/'.$newHealthQuestion->ID.'">Approve it (or don\'t) here</a></p> ';
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

		if ($newHealthQuestion->ResponsePreference == 1){
    		$email = new Email($from, $to, $subject, $body2); 
    	}
    	else{
    		$email = new Email($from, $to, $subject, $body1); 
    	}

    	$email->send(); 

		Controller::curr()->redirect($this->Link('?success=1'));
		
	}
	
 

}