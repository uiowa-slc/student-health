<?php
class HealthAnswerHolder extends Page {

	public static $db = array(
	
	
	);
	
	static $has_one = array();	
	
	static $allowed_children = array('HealthAnswer');

	
	

     
}
class HealthAnswerHolder_Controller extends Page_Controller {

	/*
	public function getPaginatedAnswers(){
	
		$healthanswers = HealthAnswer::get();
		
		$pages = new PaginatedList($healthanswers, $this->request);    	
	    $pages->setPageLength(2);
	    
	    $pages->sort('LastEdited');
		
	    return $pages;
	    	    		
	}
	*/
	
	public function getAllAnswers(){
		$healthanswers = HealthAnswer::get();
		
		$pages = new PaginatedList($healthanswers, $this->request);    	
	    $pages->setPageLength(3);
	    
	    $pages->sort('LastEdited', 'DESC');
		
	    return $pages;
		
	}
	
	public function getPaginatedAnswers(){
	
		
		$pages = new PaginatedList($this->Children(), $this->request);   	
	    $pages->setPageLength(3);
	    
	    $pages->sort('LastEdited', 'DESC');
		
	    return $pages;
		
	}
	
	
	

}