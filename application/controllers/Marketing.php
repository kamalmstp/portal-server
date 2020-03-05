<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Marketing extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
        $this->load->library('session');
        $this->load->model(array('Ajaxdataload_model' => 'ajaxload'));

       /*cache control*/
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
    }

    public function index()
    {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
        if ($this->session->userdata('marketing_login') == 1)
            redirect(site_url('marketing/dashboard'), 'refresh');
    }

    function dashboard()
    {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(base_url(), 'refresh');

        $page_data['page_name']  = 'dashboard';
        $page_data['page_title'] = get_phrase('marketing_dashboard');
        $this->load->view('backend/index', $page_data);
    }

    function elementary_school($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        if ($param1 == '') {
            $page_data['school'] = $this->db->get_where('marketing_school', array('level' => 'SD'))->result_array();
        }
        if ($param1 == 'create') {
            $this->crud_model->create_elementary_school();
            activity_log("add","Menambah Data elementary School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/elementary_school'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_elementary_school();
            activity_log("edit","Mengubah Data elementary School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/elementary_school'), 'refresh');
        }
        if ($param1 == 'delete') {
            $this->db->where('school_id', $param2);
            $this->db->delete('marketing_school');
            activity_log("delete","Menghapus Data elementary School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_deleted'));
            redirect(site_url('marketing/elementary_school'), 'refresh');
        }
        $page_data['page_name'] = 'elementary_school';
        $page_data['page_title'] = get_phrase('elementary_school');
        $this->load->view('backend/index', $page_data);
    }

    function junior_school($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        if ($param1 == '') {
            $page_data['school'] = $this->db->get_where('marketing_school', array('level' => 'SMP'))->result_array();
        }
        if ($param1 == 'create') {
            $this->crud_model->create_junior_school();
            activity_log("add","Menambah Data Junior High School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/junior_school'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_junior_school();
            activity_log("edit","Mengubah Data Junior High School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/junior_school'), 'refresh');
        }
        if ($param1 == 'delete') {
            $this->db->where('school_id', $param2);
            $this->db->delete('marketing_school');
            activity_log("delete","Menghapus Data Junior High School");
            $this->session->set_flashdata('flash_message' , get_phrase('data_deleted'));
            redirect(site_url('marketing/junior_school'), 'refresh');
        }
        $page_data['page_name'] = 'junior_school';
        $page_data['page_title'] = get_phrase('junior_high_school');
        $this->load->view('backend/index', $page_data);
    }

    function plan_elementary($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
        
        $year = $this->db->get_where('settings' , array('type' => 'running_year'))->row()->description;

        if ($param1 == '') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->where('ms.level','SD');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();
            $page_data['status'] = 'active';
            $page_data['school'] = $query->result_array();
        }
        if ($param1 == 'waiting') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->join('marketing_plan_status mps', 'mp.plan_id=mps.plan_id');
            $this->db->where('ms.level','SD');
            $this->db->where('mps.status_result','Waiting');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();

            $page_data['status'] = 'waiting';
            $page_data['school'] = $query->result_array();
        }
        if ($param1 == 'approved') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->join('marketing_plan_status mps', 'mp.plan_id=mps.plan_id');
            $this->db->where('ms.level','SD');
            $this->db->where('mps.status_result','Approved');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();

            $page_data['status'] = 'approved';
            $page_data['school'] = $query->result_array();
        }
        if ($param1 == 'rejected') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->join('marketing_plan_status mps', 'mp.plan_id=mps.plan_id');
            $this->db->where('ms.level','SD');
            $this->db->where('mps.status_result','Rejected');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();

            $page_data['status'] = 'rejected';
            $page_data['school'] = $query->result_array();
        }
        if ($param1 == 'select') {
            // $this->crud_model->select_elementary();
            $id = $_POST['id'];
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $timestamp = strtotime(date("Y-m-d H:i:s"));

            foreach ($id as $key => $value) {
                $p = $id[$key];
                $data['school_id'] = $p;
                $data['time_id'] = $time->time_id;
                $data['timestamp'] = $timestamp;
                $this->db->insert('marketing_plan', $data); 
            }
            redirect(site_url('marketing/plan_elementary'), 'refresh');
        }
        if ($param1 == 'create') {
            $this->crud_model->create_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/plan_elementary'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/plan_elementary'), 'refresh');
        }
        if ($param1 == 'delete') {
            $this->db->where('school_id', $param2);
            $this->db->delete('marketing_school');
            $this->session->set_flashdata('flash_message' , get_phrase('data_deleted'));
            redirect(site_url('marketing/plan_elementary'), 'refresh');
        }
        $page_data['page_name'] = 'plan_elementary';
        $page_data['page_title'] = get_phrase('plan_elementary');
        $this->load->view('backend/index', $page_data);
    }

    function plan_junior($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
        
        $year = $this->db->get_where('settings' , array('type' => 'running_year'))->row()->description;

        if ($param1 == '') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->where('ms.level','SMP');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();
            $page_data['status'] = 'active';
            $page_data['school'] = $query->result_array();
        }

        if ($param1 == 'permission') {
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $this->db->select('*');
            $this->db->from('marketing_plan mp'); 
            $this->db->join('marketing_school ms', 'ms.school_id=mp.school_id');
            $this->db->join('marketing_time mt', 'mt.time_id=mp.time_id');
            $this->db->where('ms.level','SMP');
            $this->db->where('mt.time_id',$time->time_id);
            $query = $this->db->get();
            $page_data['status'] = 'active';
            $page_data['school'] = $query->result_array();
        }

        if ($param1 == 'select') {
            // $this->crud_model->select_elementary();
            $id = $_POST['id'];
            $time = $this->db->get_where('marketing_time', array('running_year' => $year))->row();
            $timestamp = strtotime(date("Y-m-d H:i:s"));

            foreach ($id as $key => $value) {
                $p = $id[$key];
                $data['school_id'] = $p;
                $data['time_id'] = $time->time_id;
                $data['timestamp'] = $timestamp;
                $this->db->insert('marketing_plan', $data); 
            }
            redirect(site_url('marketing/plan_junior'), 'refresh');
        }

        if ($param1 == 'create') {
            $this->crud_model->create_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/plan_junior'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/plan_junior'), 'refresh');
        }
        if ($param1 == 'delete') {
            $this->db->where('school_id', $param2);
            $this->db->delete('marketing_school');
            $this->session->set_flashdata('flash_message' , get_phrase('data_deleted'));
            redirect(site_url('marketing/plan_junior'), 'refresh');
        }
        $page_data['page_name'] = 'plan_junior';
        $page_data['page_title'] = get_phrase('plan_junior_high_school');
        $this->load->view('backend/index', $page_data);
    }

    function plan_elementary_view($id,  $param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $sql = $this->db->get_where('marketing_plan' , array('plan_id' => $id))->row();
        $plan_id = $sql->plan_id;
        $school_id = $sql->school_id;

        $page_data['page_name'] = 'plan_elementary_view';
        $page_data['plan_id'] = $plan_id;
        $page_data['school_id'] = $school_id;
        $page_data['plan_status'] = $this->db->get_where('marketing_plan_status', array('plan_id' => $id));
        $page_data['page_title'] = get_phrase('plan_elementary_view');
        $this->load->view('backend/index', $page_data);
    }

    function plan_elementary_status($status_id = "", $task = "", $type = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $sql = $this->db->get_where('marketing_plan_status' , array('status_id' => $status_id))->row();
        $id = $sql->plan_id;

        if ($task == 'add') {
            if ($type == 'waiting') {
                $this->crud_model->add_status_waiting($status_id);
            }
            elseif ($type == 'approved') {
                $this->crud_model->add_status_approved($status_id);
            }
            elseif ($type == 'rejected') {
                $this->crud_model->add_status_rejected($status_id);
            }
            redirect(site_url('marketing/plan_elementary_view/'.$id), 'refresh');
        }
    }

    function load_result_type($type, $status_id) {
        $page_data['result_type'] = $type;
        $page_data['status_id'] = $status_id;
        $this->load->view('backend/marketing/status_add_'.$type, $page_data);
    }

    function proses_elementary($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
        
        if ($param1 == 'permission_add') {
            $id = $this->input->post('plan_id');
            $data['plan_id'] = $this->input->post('plan_id');
            $data['status_plan'] = 'Permission';
            $data['topick'] = html_escape($this->input->post('topick'));
            $data['person'] = $this->session->userdata('name');
            $data['user_id'] = $this->session->userdata('login_user_id');
            $data['timestamp_plan'] = strtotime(date('Y-m-d H:i:s'));
            $this->db->insert('marketing_plan_status', $data);

            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/plan_elementary_view/'.$id), 'refresh');
        }
        if ($param1 == 'permission_add') {
            $id = $this->input->post('plan_id');
            $data['plan_id'] = $this->input->post('plan_id');
            $data['status_plan'] = 'Permission';
            $data['topick'] = html_escape($this->input->post('topick'));
            $data['person'] = $this->session->userdata('name');
            $data['user_id'] = $this->session->userdata('login_user_id');
            $data['timestamp_plan'] = strtotime(date('Y-m-d H:i:s'));
            $this->db->insert('marketing_plan_status', $data);

            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/plan_elementary_view/'.$id), 'refresh');
        }
    }


    function school_visit($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $running_year = get_settings('running_year');

        if ($param1 == '') {
            // $match = array('status !=' => 'visited');
            $page_data['status'] = 'active';
            // $page_data['school'] = $this->db->where($match)->get('marketing_school')->result_array();
            $page_data['school'] = $this->db->get('marketing_school')->result_array();
        }

        if ($param1 == 'visited') {
            $match = array('status' => 'visited');
            $page_data['status'] = 'visited';
            $this->db->order_by("exam_date", "dsc");
            $page_data['school'] = $this->db->where($match)->get('marketing_school')->result_array();
        }

        if ($param1 == 'create') {
            $this->crud_model->create_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/school_list'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_online_exam();
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/school_list'), 'refresh');
        }
        if ($param1 == 'delete') {
            $this->db->where('school_id', $param2);
            $this->db->delete('marketing_school');
            $this->session->set_flashdata('flash_message' , get_phrase('data_deleted'));
            redirect(site_url('marketing/school_list'), 'refresh');
        }
        $page_data['page_name'] = 'school_list';
        $page_data['page_title'] = get_phrase('school_list');
        $this->load->view('backend/index', $page_data);
    }

    function marketing_time($param1 = "", $param2 = ""){
        if ($this->session->userdata('marketing_login') != 1)
            redirect(base_url(), 'refresh');
        
        if ($param1 == 'create') {
            $this->crud_model->create_marketing_time();
            activity_log("add","Menambah Data Marketing Time");
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/marketing_time'), 'refresh');
        }
        if ($param1 == 'edit') {
            $this->crud_model->update_marketing_time();
            activity_log("edit","Mengubah Data Marketing Time");
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated_successfully'));
            redirect(site_url('marketing/marketing_time'), 'refresh');
        }

        $year = $this->db->get_where('settings' , array('type' => 'running_year'))->row()->description;
        $page_data['time']  = $this->db->get_where('marketing_time', array('running_year' => $year));
        $page_data['page_name']  = 'marketing_time';
        $page_data['page_title'] = get_phrase('marketing_time');
        $this->load->view('backend/index', $page_data);
    }

}
