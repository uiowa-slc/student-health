<?php
class HealthAnswerHolder extends Page {

	public static $db = array(
	
	
	);
	
	static $has_one = array();	

	
	

     
}
class HealthAnswerHolder_Controller extends Page_Controller {

	public function getPaginatedAnswers(){
	
		$healthanswers = HealthAnswer::get();
		
		$pages = new PaginatedList($healthanswers, $this->request);    	
	    $pages->setPageLength(2);
	    
	    $pages->sort('LastEdited');
		
	    return $pages;
	    	    		
	}
	
	
	

}