<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);
	
	public function getToplevel(){
	
		$url_segment = $this->URLSegment;
		
		if (isset($this->Parent)){
			//Debug::show($this->Parent);
			$currentPageParent = $this->Parent;
			$tempParent = $this->Parent;
			
		}
		else {
			$url_segment = $this->URLSegment;
			return "False";
		}
		
		
		echo '<script type="text/
javascript">console.log("Parent is" + $this->Parent);</script>';

		echo '<script type="text/
javascript">console.log("URLSegment is " + $url_segment );</script>';


		
		echo '<script type="text/
javascript">console.log("{$CurrentPageParent->Title}");</script>';

		
		while ($tempParent){
		
			//$url_segment = "GOT HERE";
			
			
			if ($tempParent){
				$currentPageParent = $tempParent;
				$url_segment = $currentPageParent->URLSegment;
			}
			
			$tempParent = $currentPageParent->Parent;
			
			
		}		

		return $url_segment;
	}

}

class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		/*
		Requirements::themedCSS('reset');
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form');
		*/
	}

}