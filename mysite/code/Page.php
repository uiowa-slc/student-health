<?php
class Page extends SiteTree {

	public static $db = array(
	'PostedBy' => 'Text'
	);

	public static $has_one = array(
		'Picture' => 'Image'
	);
	
	
	
	public function isAddtlSidebarPage($url_segment){
		if (($url_segment == 'services') || ($url_segment == 'wellness') || ($url_segment == 'health-answers') || ($url_segment == 'self-care-guide')){
			return true;
		}
		else {
			return false;
		}
	}
	
	
	
	public function getToplevel(){
	
	
		$url_segment = $this->URLSegment;
		
		if ($this->isAddtlSidebarPage($url_segment)){
			return $url_segment; 
		}
		
		if (isset($this->Parent)){
			//Debug::show($this->Parent);
			//$currentPageParent = $this->Parent;
			$tempParent = $this->Parent;
			
		}
		else {
			return false;
		}


		
		while ($tempParent){
		
			//$url_segment = "GOT HERE";
			
			

			$url_segment = $tempParent->URLSegment;
			
			if ($this->isAddtlSidebarPage($url_segment)){
				return $url_segment; 
			}
			
			$tempParent = $tempParent->Parent;
						
		}		

		return $url_segment;
	}
	
	
	/*
	public function isSelfCare(){
		//Used in sidebar to determine if the self-care sidebar should show up (because the page is the self-care page holder or a children of it).  No, this is not the best way to do this
		$url_segment = $this->URLSegment;
		
		if ($url_segment == 'self-care-guide'){
			return true;
		}
		
		$parent = $this->parent;
		
		while ($parent){
			if ($url_segment == 'self-care-guide'){
				return true;
				}
		}
		
		return false;
	}
	*/
	
	
	public function getCMSFields() {
	
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new UploadField('Picture'));

        //$fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
        $fields->addFieldToTab('Root.Main', new TextField('PostedBy'));
        
        //$dateField->setConfig('showcalendar', true);
        //$dateField->setConfig('dateformat', 'MM/dd/YYYY');
                
        return $fields;

     }
     
     
     //Used to record the name of the person that last published the page when a page is published
     /*
     public function onBeforeWrite(){
     
		$member = Member::currentUser();
		$postedby = $member->FirstName . ' ' . $member->Surname;
		$this->PostedBy = $postedby;
		parent::onBeforeWrite();
		//return Debug::show($this);
	
		
	}	*/
	
	public function formatDate(){
		$timestamp = strtotime($this->LastEdited);
		$formattedDate = date("l, F j, Y", $timestamp);	
		return $formattedDate;
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
	
	public function getHomeChildren(){
	
		//This function exists because SliderItems are children of Home but shouldn't show up in the menu 
				
		$homeparent = HomePage::get()->First();
    
        $homeparentID = $homeparent->ID;
    	
	    $homechildren = SiteTree::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $homeparentID));
    
     	$homechildren->exclude('ClassName', array('SliderItem'));
         
    	return $homechildren;
    	
	}
	
	public function getServicesChildren(){
	
		//This function exists because SliderItems are children of Home but shouldn't show up in the menu 
				
		$servicesparent = ServicesHolder::get()->First();
    
        $servicesparentID = $servicesparent->ID;
    	
	    $serviceschildren = SiteTree::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $servicesparentID));
            
    	return $serviceschildren;
    	
	}
	
	
	
	
	
	


}