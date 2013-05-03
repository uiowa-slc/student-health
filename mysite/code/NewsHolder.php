<?php
class NewsHolder extends Page {

	public static $db = array(
	
	);
	
	static $has_one = array();	

	
	public static $allowed_children = array ('NewsArticle');
	

     
}
class NewsHolder_Controller extends Page_Controller {

	
	public static $allowed_actions = array (
	);
	
	public function getPaginatedNews(){
	
		$news = NewsArticle::get();
		
		$pages = new PaginatedList($news, $this->request);    	
	    $pages->setPageLength(4);
		
	    return $pages;
	    	    		
	}
	
	

}