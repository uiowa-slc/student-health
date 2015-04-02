<?php
class HomePage extends Page {

	private static $db = array(
		'SidebarLink' => 'Text',

	);

	private static $has_one = array(
		'SliderImage1' => 'Image',
		'SliderImage2' => 'Image',
		'SliderImage3' => 'Image',
		'SliderImage4' => 'Image',
		'SidebarImage' => 'Image',
	);
	/*

	function getCMSFields(){
	$fields = parent::getCMSFields();

	$fields->addFieldToTab('Root.Main', new UploadField("SliderImage1", "Slider Image 1"));
	$fields->addFieldToTab('Root.Main', new UploadField("SliderImage2", "Slider Image 2"));
	$fields->addFieldToTab('Root.Main', new UploadField("SliderImage3", "Slider Image 3"));
	$fields->addFieldToTab('Root.Main', new UploadField("SliderImage4", "Slider Image 4"));

	return $fields;

	}
	 */

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		//$fields->addFieldToTab('Root.Main', new UploadField('SidebarImage', 'Place an image in the bottom-left portion of the sidebar here'));
		$fields->addFieldToTab('Root.Main', new TextField('SidebarLink', 'Link for the bottom-left sidebar image'));

		return $fields;
	}

}
class HomePage_Controller extends Page_Controller {

	public function getNewsItems() {

		$news = NewsArticle::get()->sort('PublishDate', 'DESC')->limit(3);

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

	public function getHealthItem() {

		$healthanswer = HealthAnswer::get()->sort('ArticleDate', 'DESC')->limit(1);

		return $healthanswer;

	}

	public function getSliderItems($limit = 4) {
		$slideritems = SliderItem::get()->limit($limit)->sort('PublishDate', 'DESC');

		return $slideritems;

	}

}