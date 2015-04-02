<?php
class Page extends SiteTree {

	private static $db = array(
		'PostedBy' => 'Text',
	);

	private static $has_one = array(
		'Picture' => 'Image',
	);

	public function isAddtlSidebarPage($url_segment) {
		if (($url_segment == 'services') || ($url_segment == 'wellness') || ($url_segment == 'health-answers') || ($url_segment == 'self-care-guide')) {
			return true;
		} else {
			return false;
		}
	}

	public function getSidebarImage() {
		$homepage = HomePage::get()->First();

		return $homepage->SidebarImage();
	}

	public function getToplevel() {

		$url_segment = $this->URLSegment;

		if ($this->isAddtlSidebarPage($url_segment)) {
			return $url_segment;
		}

		if (isset($this->Parent)) {
			//Debug::show($this->Parent);
			//$currentPageParent = $this->Parent;
			$tempParent = $this->Parent;

		} else {
			return false;
		}

		while ($tempParent) {

			//$url_segment = "GOT HERE";

			$url_segment = $tempParent->URLSegment;

			if ($this->isAddtlSidebarPage($url_segment)) {
				return $url_segment;
			}

			$tempParent = $tempParent->Parent;

		}

		return $url_segment;
	}

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new UploadField('Picture'));

		//$fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
		$fields->addFieldToTab('Root.Main', new TextField('PostedBy'));

		//$dateField->setConfig('showcalendar', true);
		//$dateField->setConfig('dateformat', 'MM/dd/YYYY');

		return $fields;

	}

	public function formatDate() {
		$timestamp = strtotime($this->LastEdited);
		$formattedDate = date("l, F j, Y", $timestamp);
		return $formattedDate;
	}
	// ...

	/**
	 * Return a list of all the pages to cache
	 *
	 * @return array
	 */
	public function allPagesToCache() {
		// Get each page type to define its sub-urls
		$urls = array();

		// memory intensive depending on number of pages
		$pages = Page::get();
		$ignored = array('UserDefinedForm', 'ProgramRequestForm', 'NominationForm', 'AskYourQuestion');

		foreach ($pages as $page) {
			// check to make sure this page is not in the classname
			if (!in_array($page->ClassName, $ignored)) {
				$urls = array_merge($urls, (array) $page->subPagesToCache());
			}
		}

		// add any custom URLs which are not SiteTree instances
		$urls[] = "sitemap.xml";

		return $urls;
	}

	/**
	 * Get a list of URLs to cache related to this page.
	 *
	 * @return array
	 */
	public function subPagesToCache() {
		$urls = array();

		// add current page
		$urls[] = $this->Link();

		// cache the RSS feed if comments are enabled
		if ($this->ProvideComments) {
			$urls[] = Director::absoluteBaseURL() . "CommentingController/rss/SiteTree/" . $this->ID;
		}

		return $urls;
	}

	/**
	 * Get a list of URL's to publish when this page changes
	 */
	public function pagesAffectedByChanges() {
		$urls = $this->subPagesToCache();
		if ($p = $this->Parent) {
			$urls = array_merge((array) $urls, (array) $p->subPagesToCache());
		}

		return $urls;
	}
}

class Page_Controller extends ContentController {

	public function init() {
		parent::init();
	}

	public function getHomeChildren() {

		//This function exists because SliderItems are children of Home but shouldn't show up in the menu

		$homeparent = HomePage::get()->First();

		$homeparentID = $homeparent->ID;

		$homechildren = SiteTree::get()->filter(array(
			'Show.SiteTree.ParentID:ExactMatch' => $homeparentID))->sort('Title');

		$homechildren->exclude('ClassName', array('SliderItem'));

		return $homechildren;

	}

	public function getServicesChildren() {

		//This function exists because SliderItems are children of Home but shouldn't show up in the menu

		$servicesparent = ServicesHolder::get()->First();

		$servicesparentID = $servicesparent->ID;

		$serviceschildren = SiteTree::get()->filter(array(
			'Show.SiteTree.ParentID:ExactMatch' => $servicesparentID));

		return $serviceschildren;

	}

	public function getSidebarImage() {
		$homepage = HomePage::get()->First();
		return $homepage->SidebarImage();
	}

	public function getSidebarLink() {
		$homepage = HomePage::get()->First();
		return $homepage->SidebarLink;
	}

}