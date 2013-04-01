<?php
class AskYourQuestion extends Page {

	public static $db = array(
	);
	
	static $has_one = array();	

	
	

     
}
class AskYourQuestion_Controller extends Page_Controller {

	//static $allowed_actions = array('questionForm');

	public function questionForm(){
			
		$tempQuestion = QuestionPage::get()->First();
		
		//$fields = $tempQuestion->getFrontEndFields();
		
		$fields = new FieldList(
		
		TextField::create("FirstName", "First Name:"),
		TextField::create("LastName", "Last Name:"),
		TextAreaField::create("Question", "Question:"),
		OptionsetField::create("ResponsePreference", "Would you like a response?", $source = array(
		 "1" => "Yes",
		 "2" => "No"), $value = "1"),
		
		EmailField::create("Email", "Email:"),
		OptionsetField::create("QuestionType", "Question type:",  $source = array(
      "1" => "Alcohol",
      "2" => "Cold / Flu",
      "3" => "Fitness",
      "4" => "General",
      "5" => "Illness",
      "6" => "Medicine",
      "7" => "Mental Health",
      "8" => "Nutrition",
      "9" => "Sexual Health",
      "10" => "Stress"
   ), $value = "1")
	

		);
		
		$actions = new FieldList(
            new FormAction('askQuestion', 'Submit')
        );
        
        $validator = new RequiredFields('FirstName', 'LastName', 'Question', 'ResponsePreference', 'Email', 'QuestionType');
        
		$form = new Form($this, 'questionForm', $fields, $actions);
		
		$protector = SpamProtectorManager::update_form($form, 'Message', null, "Please enter the following words");
		
		return $form;
	}
	
	function askQuestion($data, $form){
	
		Session::clear("message");
		
		$newQuestion = new HealthAnswer();
		$form->saveInto($newQuestion);
		
		
		$questionHolder = QuestionHolder::get()->First();

		$newQuestion->setParent($questionHolder);
		$newQuestion->Title = $data["FirstName"] . $data["LastName"];
		
		
		
		$newQuestion->writeToStage('Stage');
		//$newQuestion->publish('Stage');

		//$form->AddErrorMessage('ResponsePreference', "You must indicate that you've read our Terms and Conditions before registering.", 'good');
		
		//$form->sessionMessage("Your question has been sent!", "good");
		//$form->setMessage("Your question has been sent!", 'good');
		Session::set("success", "1");
		//$url = Director::absoluteBaseURL() .'/health-answers/ask-your-question/?success=1';
		Director::redirectBack();
		return $this->redirect($url);
		
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