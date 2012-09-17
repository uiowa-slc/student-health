<?php
class HomePage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);
	


}
class HomePage_Controller extends Page_Controller {

	
	public static $allowed_actions = array (
	);
	
		
	public function getNewsItems(){
	
		$news = NewsArticle::get()->limit(3);
		
		/*
		$homepageNews = new ArrayList(); 
		
		
		$IDArray = $news->getIDList();
		
		$newsID1 = $IDArray[1];
		$newsID2 = $IDArray[2];
		$newsID3 = $IDArray[3];
		
		$newsArticle1 = $news->byID($newsID1);
		$newsArticle2 = $news->byID($newsID2);
		$newsArticle3 = $news->byID($newsID3);
		
		$homepageNews->add($newsArticle1);
		$homepageNews->add($newsArticle2);
		$homepageNews->add($newsArticle3);
		*/
	    
	    return $news;
	    	    		
	}
	
		
	public function getHealthItem(){
	
		$healthanswer = HealthAnswer::get()->limit(1);
			    
	    return $healthanswer;
	    	    		
	}
	
	



}