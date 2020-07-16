<?php

require APPPATH . 'libraries/REST_Controller.php';

class Rumahsakit extends REST_Controller {

    public function __construct() {
        parent::__construct();
    $this->load->model('RumahsakitM');
    }

    public function index_get() {
        $response = $this->RumahsakitM->all_laporan();
        $this->response($response);
    }

}
