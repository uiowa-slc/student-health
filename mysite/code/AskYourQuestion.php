<?php
class AskYourQuestion extends Page {

	private static $db = array(
	"EmailTo" => "Text"
	);
	
	static $has_one = array();	

	public function getCMSFields() {
	
        $fields = parent::getCMSFields();
	
        $fields->addFieldToTab('Root.Main', new EmailField('EmailTo', 'Email:'));
        
        return $fields;
   }
}
class AskYourQuestion_Controller extends Page_Controller {

	//static $allowed_actions = array('questionForm');

	public function questionForm(){
			
		$tempQuestion = QuestionPage::get()->First();
		
		//$fields = $tempQuestion->getFrontEndFields();
		
		/*
		$questionType = OptionsetField::create("QuestionType", "<span>*</span> Question type:",  $sourced = array(
      "Alcohol" => "Alcohol",
      "Cold / Flu" => "Cold / Flu",
      "Fitness" => "Fitness",
      "General" => "General",
      "Illness" => "Illness",
      "Medicine" => "Medicine",
      "Mental Health" => "Mental Health",
      "Nutrition" => "Nutrition",
      "Sexual Health" => "Sexual Health",
      "Stress" => "Stress"), $value = "1"); 
      */
   

   		
   		$responsePreference = OptionsetField::create("ResponsePreference", "<span>*</span> Would you like a response?", $source = array(
		 "Yes" => "Yes",
		 "No" => "No"), $value = "1");
		 

		
		$fields = new FieldList(
		
		TextField::create("FirstName", "First Name:"),
		TextField::create("LastName", "Last Name:"),
		TextAreaField::create("Question", "<span>*</span> Question:"),
		$responsePreference,

		EmailField::create("Email", "Email:")
		
	

		);
		
		$actions = new FieldList(
            new FormAction('askQuestion', 'Submit')
        );
        
        $validator = new RequiredFields('Question', 'ResponsePreference');
        
		$form = new Form($this, 'questionForm', $fields, $actions, $validator);
		
		$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		
		return $form;
	}
	
	function askQuestion($data, $form){
	
		Session::clear("message");
		
		//$newQuestion = new HealthAnswer();
		//$form->saveInto($newQuestion);
		
		
		$questionHolder = QuestionHolder::get()->First();

		//$newQuestion->setParent($questionHolder);
		//$newQuestion->Title = $data["FirstName"] . $data["LastName"];
		
		
		
		//$newQuestion->writeToStage('Stage');
		//$newQuestion->publish('Stage');


		/*Error message functionality for forms
		$form->AddErrorMessage('ResponsePreference', "You must indicate that you've read our Terms and Conditions before registering.", 'good');
		
		$form->sessionMessage("Your question has been sent!", "good");
		$form->setMessage("Your question has been sent!", 'good');*/
		
		Session::set("success", "1");
		//$url = Director::absoluteBaseURL() .'/health-answers/ask-your-question/?success=1';
		
		$subject = "New Student Health Question";
		
    	$body = "A new question has been asked <br><br>" . 
    	//'<br><br>Access link in CMS <a href="' . $newQuestion->Link() . '">hereee</a><br><br>'
    	'First Name: '. $data["FirstName"] . '<br><br>
    	Last Name: '. $data["LastName"] . '<br><br>
    	Question: '. $data["Question"] . '<br><br>
    	ResponsePreference: '. $data["ResponsePreference"] . '<br><br>
    	Email: '. $data["Email"] . '<br><br>';
    	

    	
    	include 'EmailArray.php';

    	$email = new Email(); 
    	$email->setTo($emailArray); 	         
    	$email->setFrom($data["Email"]); 
    	$email->setSubject($subject); 
    	$email->setBody($body); 
    	$email->send(); 

		return Controller::redirectBack();
		
		
		
	}
	
	function Success(){
		//$param = $this->request->allParams();
		//$param = $this->request->param('success');
		
		$param = Session::get("success");
		
		//print_r ("PARAM IS " . $param);
		

		if ($param=="1"){
			return true;
		}
		else {
			return false;
		}
	}
		
}