<?php
class HealthAnswerHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array();

	private static $allowed_children = array('HealthAnswer', 'HealthAnswerHolder');

}
class HealthAnswerHolder_Controller extends Page_Controller {

	public function getAllAnswers() {
		$healthanswers = HealthAnswer::get();

		$pages = new PaginatedList($healthanswers, $this->request);
		$pages->setPageLength(5);

		$pages->sort('ArticleDate', 'DESC');

		return $pages;

	}

	public function getPaginatedAnswers() {

		$pages = new PaginatedList($this->Children(), $this->request);
		$pages->setPageLength(5);

		$pages->sort('ArticleDate', 'DESC');

		return $pages;

	}

	public function withinPageRange() {

	}

}