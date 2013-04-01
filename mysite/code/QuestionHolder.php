<?php
class QuestionHolder extends Page {

	public static $db = array(
	);
	
	static $has_one = array();	

	public static $allowed_children = array("QuestionPage", "HealthAnswer");
	

     
}
class QuestionHolder_Controller extends Page_Controller {

	
	

}