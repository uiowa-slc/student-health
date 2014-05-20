<?php
class Page extends SiteTree {

	private static $db = array(
	'PostedBy' => 'Text'
	);

	private static $has_one = array(
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
	
	public function getSidebarImage(){
		$homepage = HomePage::get()->First();
		
		return $homepage->SidebarImage();
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
	private static $allowed_actions = array (
	);


	public function init() {
				parent::init();
			
			
			
				$themeFolder = $this->ThemeDir();
			 
				//Set the folder to our theme so that relative image paths work
				Requirements::set_combined_files_folder($themeFolder . '/combinedfiles');
				
				Requirements::block('event_calendar/css/calendar_widget.css'); 
				
				/*
				Requirements::block('event_calendar/javascript/locale/date_en.js'); 
				Requirements::block('event_calendar/javascript/jquery.date.js'); 
				Requirements::block('event_calendar/javascript/jquery.datePicker.js'); 
				Requirements::block('event_calendar/javascript/calendar_core.js'); 
				Requirements::block('event_calendar/javascript/calendar_widget.js');
				Requirements::block('sapphire/thirdparty/jquery/jquery.js');  */
				
				$jsFiles = array(
				
					    $themeFolder.'/javascript/jquery.bgiframe.min.js',
						$themeFolder.'/javascript/superfish.js',
						$themeFolder.'/javascript/supersubs.js',
						$themeFolder.'/javascript/supposition.js',
						$themeFolder.'/javascript/sftouchscreen.js',
						$themeFolder.'/javascript/hoverIntent.js',
						$themeFolder.'/javascript/superfish.js',
						$themeFolder.'/javascript/jquery-easing.1.2.pack.js',
						$themeFolder.'/javascript/jquery-easing-compatibility.1.2.pack.js',
						$themeFolder.'/javascript/jquery.coda-slider-2.0.js',
						'division-bar/js/division-bar.js',
						$themeFolder.'/javascript/mailchimp.js'
					);
		
					//Add all the files to combine into an array
					$cssFiles = array(
					    $themeFolder.'/css/superfish.css',
					    $themeFolder.'/css/system-menus.css',
					    $themeFolder.'/css/styles.css',
						$themeFolder.'/css/reset.css',
						$themeFolder.'/css/reset-min.css',
						$themeFolder.'/css/ie7.css',
						$themeFolder.'/css/system.css',
						$themeFolder.'/css/form.css',
		
					);
		
				
				if(Director::isDev()) {
				
					foreach($jsFiles as $jsFile){
						Requirements::javascript($jsFile);	
					}
					foreach($cssFiles as $cssFile){
						Requirements::css($cssFile);	
					}			
		
				}else{
					//Combine!  
					Requirements::combine_files("combinedCSS.css", $cssFiles);
					Requirements::combine_files(
						'allcombined.js',$jsFiles);
					}
			}
	
		
	
	public function getHomeChildren(){
	
		//This function exists because SliderItems are children of Home but shouldn't show up in the menu 
				
		$homeparent = HomePage::get()->First();
    
        $homeparentID = $homeparent->ID;
    	
	    $homechildren = SiteTree::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $homeparentID))->sort('Title');
    
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
	/*
	public function getHomeChildren(){
		$home = HomePage::get()->where("\"URLSegment\" = 'home'")->sort('Title');
		return $home->Children();
	}
	*/
	
	public function getSidebarImage(){
		$homepage = HomePage::get()->First();
		return $homepage->SidebarImage();
	}
	
	
	public function getSidebarLink(){
		$homepage = HomePage::get()->First();
		return $homepage->SidebarLink;
	}
	
	
	
	
	


}