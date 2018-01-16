<?php
class ModelCatalogOurFeedbacks extends Model {
	public function getAllFeedbacks() {
		$query = $this->db->query("SELECT `id`, `name`, `description`, `date`, `raiting` FROM `oc_ourfeedbacks`");
		$feedback_data = array();
		foreach ($query->rows as $row) {
			$feedback_data[$row['id']] = $row;
		}
		return $feedback_data;
	}
	public function addFeedback($data){
		$this->db->query("INSERT INTO `oc_ourfeedbacks`(`name`, `description`, `date`, `raiting`) VALUES ('".$data['author']."','".$data['text']."','".$data['date_added']."','".$data['rating']."')");
	}
	public function getFeedback($feedback_id) {
		$query = $this->db->query("SELECT `name`, `description`, `date`, `raiting` FROM `oc_ourfeedbacks` WHERE `id` =".$feedback_id."");
		return $query->rows[0];
	}
	public function editFeedback($feedback_id, $data) {
		$query = $this->db->query("UPDATE `oc_ourfeedbacks` SET `name`='".$data['author']."',`description`='".$data['text']."',`date`='".$data['date_added']."',`raiting`='".$data['rating']."' WHERE `id` = '".$feedback_id."'");
	}
	public function deleteFeedback($feedback_id) {
		$query = $this->db->query("DELETE FROM `oc_ourfeedbacks` WHERE `id` = '".$feedback_id."'");
	}
}