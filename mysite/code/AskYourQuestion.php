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
		OptionsetField::create("ResponsePreference", "Response Preference",  $source = array(
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
   ), $value = "1"),
		TextField::create("Email"),
		TextField::create("QuestionType")

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
		$newQuestion->Title = $data["FirstName"] . $data["LastName"] . 'Question';
		
		print_r($questionHolder);
		
		$newQuestion->writeToStage('Stage');
		$newQuestion->publish('Stage', 'Live');
		return $this->redirectBack();
		
	}
}