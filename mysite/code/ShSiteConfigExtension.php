<?php
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
	class ShSiteConfigExtension extends DataExtension{

		private static $db = array(
			'Hours' => 'HTMLText'
		);


		public function updateCMSFields(FieldList $f){
			$f->addFieldToTab('Root.Main',HTMLEditorField::create('Hours', 'Hours')->setRows(4));
		}

	}
