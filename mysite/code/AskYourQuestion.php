<?php
class AskYourQuestion extends Page {

	public static $db = array(
	);
	
	static $has_one = array();	

	
	

     
}
class AskYourQuestion_Controller extends Page_Controller {

	public function questionForm(){
		$tempQuestion = QuestionPage::get()->First();
		
		//$fields = $tempQuestion->getFrontEndFields();
		
		$fields = new FieldList(
		
		TextField::create("FirstName"),
		TextField::create("LastName"),
		TextAreaField::create("Question"),
		OptionsetField::create("ResponsePreference", "Would you like a response?", $source = array(
		 "1" => "Yes",
		 "2" => "No"), $value = "1"),
		
		TextField::create("Email"),
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
            new FormAction('askQuestion', 'Submit Your Question')
        );
        
        $validator = new RequiredFields('FirstName', 'LastName', 'Question', 'ResponsePreference', 'Email', 'QuestionType');
        
		$form = new Form($this, 'questionForm', $fields, $actions);
		
		return $form;
	}
	
	function askQuestion($data, $form){
	
		$newQuestion = new QuestionPage();
		$form->saveInto($newQuestion);
		
		
		$questionHolder = QuestionHolder::get()->First();

		$newQuestion->setParent($questionHolder);
		$newQuestion->Title = $data["FirstName"] . $data["LastName"];
		
		print_r($questionHolder);
		
		$newQuestion->writeToStage('Stage');
		//$newQuestion->publish('Stage');
		return $this->redirectBack();
		
	}
}