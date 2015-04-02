<?php
class QuestionHolder extends Page {

	private static $db = array(
	);

	private static $has_one = array();

	private static $allowed_children = array("QuestionPage", "HealthAnswer");

}
class QuestionHolder_Controller extends Page_Controller {

}