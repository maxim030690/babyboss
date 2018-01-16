<?php
class ModelCatalogOurFeedbacks extends Model {
	public function getAllFeedbacks() {
		$query = $this->db->query("SELECT `id`, `name`, `description`, `date`, `raiting` FROM `oc_ourfeedbacks` ORDER BY DATE ASC");
		$feedback_data = array();
		foreach ($query->rows as $row) {
			$feedback_data[$row['id']] = $row;
		}
		return $feedback_data;
	}
	public function getTotalReviewsByProductId() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `oc_ourfeedbacks`");
		return $query->row['total'];
	}
	public function getFeedbackById($page, $limit) {
		$query = $this->db->query("SELECT * FROM `oc_ourfeedbacks` ORDER BY DATE ASC LIMIT $page,$limit");
		return $query->rows;
	}
}