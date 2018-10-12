<?php

use SilverStripe\Blog\Model\Blog;
class HealthAnswerHolder extends Blog{

	private static $db = array();

	private static $has_one = array();

	private static $singular_name = 'Health Answer Holder';

	private static $plural_name = 'Health Answer Holder';

	private static $allowed_children = array('HealthAnswer');
}

