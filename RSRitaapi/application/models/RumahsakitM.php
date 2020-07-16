<?php

class RumahsakitM extends CI_Model {
    // response jika field ada yang kosong
    public function empty_response() {
        $response['status'] = 502;
        $response['error'] = true;
        $response['message'] = 'Field tidak boleh kosong';
        return $response;
    }
    
    // mengambil semua data person
    public function all_laporan() {

        $all = $this->db->get("tb_rs")->result();
        $response['status'] = 200;
        $response['error'] = false;
        $response['data'] = $all;
        $response['message'] = "success";
        return $response;
    }
}