<?php
class SliderItem extends Page {

	private static $db = array(
		'PublishDate' => 'Date',
	);

	private static $has_one = array(
		'Picture' => 'Image',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new UploadField('Picture'));

		$fields->addFieldToTab('Root.Main', $dateField = new DateField('PublishDate'));
		$dateField->setConfig('showcalendar', true);
		$dateField->setConfig('dateformat', 'MM/dd/YYYY');

		return $fields;

	}

}
class SliderItem_Controller extends Page_Controller {

}
