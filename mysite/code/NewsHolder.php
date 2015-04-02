<?php
class NewsHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array();

	private static $allowed_children = array('NewsArticle');

}
class NewsHolder_Controller extends Page_Controller {

	public function getPaginatedNews() {

		$news = NewsArticle::get()->sort('PublishDate', 'DESC');

		$pages = new PaginatedList($news, $this->request);
		$pages->setPageLength(4);

		return $pages;

	}

}