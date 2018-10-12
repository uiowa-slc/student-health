<?php

use SilverStripe\ORM\PaginatedList;
use SilverStripe\Blog\Model\BlogController;

class HealthAnswerHolderController extends BlogController {

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
}