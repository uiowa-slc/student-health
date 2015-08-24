<?php
class HealthAnswerHolder extends BlogHolder {

	private static $db = array();
	
	static $has_one = array();	

	private static $singular_name = 'Health Answer Holder';

	private static $plural_name = 'Health Answer Holder';
	
	static $allowed_children = array('HealthAnswer');
}


class HealthAnswerHolder_Controller extends BlogHolder_Controller {
	
	public function getAllAnswers(){
		$healthanswers = HealthAnswer::get();
		
		$pages = new PaginatedList($healthanswers, $this->request);    	
	  
	    $pages->setPageLength(5);
	    
	    $pages->sort('ArticleDate', 'DESC');
		
	    return $pages;
		
	}
	
	public function getPaginatedAnswers(){
	
		$pages = new PaginatedList($this->Children(), $this->request);   	
	
	    $pages->setPageLength(5);
	    
	    $pages->sort('ArticleDate', 'DESC');
		
	    return $pages;
		
	}
}