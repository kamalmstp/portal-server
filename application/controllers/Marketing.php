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

    function student_add()
	{
		if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

		$page_data['page_name']  = 'student_add';
		$page_data['page_title'] = get_phrase('add_student');
		$this->load->view('backend/index', $page_data);
	}

	function student_bulk_add()
	{
		if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
		$page_data['page_name']  = 'student_bulk_add';
		$page_data['page_title'] = get_phrase('add_bulk_student');
		$this->load->view('backend/index', $page_data);
	}

    function student_profile($student_id)
    {
        if ($this->session->userdata('marketing_login') != 1) {
        redirect(site_url('login'), 'refresh');
        }
        $page_data['page_name']  = 'student_profile';
        $page_data['page_title'] = get_phrase('student_profile');
        $page_data['student_id']  = $student_id;
        $this->load->view('backend/index', $page_data);
    }

    function get_sections($class_id)
    {
        $page_data['class_id'] = $class_id;
        $this->load->view('backend/marketing/student_bulk_add_sections' , $page_data);
    }

	function student_information($class_id = '')
	{
		if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

		$page_data['page_name']  	= 'student_information';
		$page_data['page_title'] 	= get_phrase('student_information'). " - ".get_phrase('class')." : ".
											$this->crud_model->get_class_name($class_id);
		$page_data['class_id'] 	= $class_id;
		$this->load->view('backend/index', $page_data);
	}

    function get_students($class_id, $running_year) {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $columns = array(
            0 => 'id',
            1 => 'photo',
            2 => 'name',
            3 => 'address',
            4 => 'email',
            5 => 'options',
            6 => 'id'
        );

        $limit = html_escape($this->input->post('length'));
        $start = html_escape($this->input->post('start'));
        $order = $columns[$this->input->post('order')[0]['column']];
        $dir   = $this->input->post('order')[0]['dir'];

        $totalData = $this->ajaxload->all_students_count();
        $totalFiltered = $totalData;

        if(empty($this->input->post('search')['value'])) {
            $students = $this->ajaxload->all_students($limit,$start,$order,$dir);
        }
        else {
            $search = $this->input->post('search')['value'];
            $students =  $this->ajaxload->student_search($limit,$start,$search,$order,$dir);
            $totalFiltered = $this->ajaxload->student_search_count($search);
        }

        $data = array();
        if(!empty($students)) {
            foreach ($students as $row) {
                $nestedData['id'] = $row->enroll_code;
                $nestedData['photo'] = '1';
                $nestedData['name'] = '2';
                $nestedData['address'] = '3';
                $nestedData['email'] = '4';
                $nestedData['options'] = '5';

                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw"            => intval($this->input->post('draw')),
            "recordsTotal"    => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data"            => $data
        );

        echo json_encode($json_data);
    }

    function student_marksheet($student_id = '') {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');
        $class_id     = $this->db->get_where('enroll' , array(
            'student_id' => $student_id , 'year' => $this->db->get_where('settings' , array('type' => 'running_year'))->row()->description
        ))->row()->class_id;
        $student_name = $this->db->get_where('student' , array('student_id' => $student_id))->row()->name;
        $class_name   = $this->db->get_where('class' , array('class_id' => $class_id))->row()->name;
        $page_data['page_name']  =   'student_marksheet';
        $page_data['page_title'] =   get_phrase('marksheet_for') . ' ' . $student_name . ' (' . get_phrase('class') . ' ' . $class_name . ')';
        $page_data['student_id'] =   $student_id;
        $page_data['class_id']   =   $class_id;
        $this->load->view('backend/index', $page_data);
    }

    function student_marksheet_print_view($student_id , $exam_id) {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $class_id     = $this->db->get_where('enroll' , array(
            'student_id' => $student_id , 'year' => $this->db->get_where('settings' , array('type' => 'running_year'))->row()->description
        ))->row()->class_id;
        $class_name   = $this->db->get_where('class' , array('class_id' => $class_id))->row()->name;

        $page_data['student_id'] =   $student_id;
        $page_data['class_id']   =   $class_id;
        $page_data['exam_id']    =   $exam_id;
        $this->load->view('backend/marketing/student_marksheet_print_view', $page_data);
    }

    function student($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('marketing_login') != 1)
            redirect(site_url('login'), 'refresh');

        $running_year = $this->db->get_where('settings' , array(
            'type' => 'running_year'
        ))->row()->description;

        if ($param1 == 'create') {
            $data['name']         = html_escape($this->input->post('name'));
            $data['blood_group']        = html_escape($this->input->post('blood'));
            $data['phone']        = html_escape($this->input->post('phone'));
            if(html_escape($this->input->post('birthday')) != null){
              $data['birthday']     = html_escape($this->input->post('birthday'));
            }
            if(html_escape($this->input->post('birthday')) != null){
                $data['birthplace']     = html_escape($this->input->post('birthplace'));
              }
            if($this->input->post('sex') != null){
              $data['sex']          = $this->input->post('sex');
            }
            if(html_escape($this->input->post('address')) != null){
              $data['address']      = html_escape($this->input->post('address'));
            }
            if(html_escape($this->input->post('nisn')) != null){
                $data['nisn'] = html_escape($this->input->post('nisn'));
            }
            $data['password']     = sha1($this->input->post('password'));

            $this->db->insert('student', $data);
            activity_log("add", "Menambahkan Data Siswa");
            $student_id = $this->db->insert_id();

            $data2['student_id']     = $student_id;
            $data2['enroll_code']    = substr(md5(rand(0, 1000000)), 0, 7);

            if($this->input->post('class_id') != null){
            $data2['class_id']       = $this->input->post('class_id');
            }
            if ($this->input->post('section_id') != '') {
                $data2['section_id'] = $this->input->post('section_id');
            }
            if (html_escape($this->input->post('roll')) != '') {
                $data2['roll']           = html_escape($this->input->post('roll'));
            }
            $data2['date_added']     = strtotime(date("Y-m-d H:i:s"));
            $data2['year']           = $running_year;

            $this->db->insert('enroll', $data2);
            $data3['student_id'] = $student_id;
            $data3['profession'] = html_escape($this->input->post('parentprofession'));
            $data3['address'] = html_escape($this->input->post('parentaddress'));
            $data3['username'] = "ortu_".html_escape($this->input->post('nisn'));
            $data3['password']           = sha1($this->input->post('nisn'));
            $data3['phone']           = html_escape($this->input->post('parentcontact'));
            

            if (html_escape($this->input->post('parent_name')) != '') {
                $data3['name']           = html_escape($this->input->post('parent_name'));
            }
            
            $this->db->insert('parent', $data3);
            move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploads/student_image/' . $student_id . '.jpg');
            $this->session->set_flashdata('flash_message' , get_phrase('data_added_successfully'));
            redirect(site_url('marketing/student_add'), 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['name']         = html_escape($this->input->post('name'));
            $data['blood_group']        = html_escape($this->input->post('blood'));
            $data['phone']        = html_escape($this->input->post('phone'));
            if(html_escape($this->input->post('birthday')) != null){
              $data['birthday']     = html_escape($this->input->post('birthday'));
            }
            if(html_escape($this->input->post('birthday')) != null){
                $data['birthplace']     = html_escape($this->input->post('birthplace'));
              }
            if($this->input->post('sex') != null){
              $data['sex']          = $this->input->post('sex');
            }
            if(html_escape($this->input->post('address')) != null){
              $data['address']      = html_escape($this->input->post('address'));
            }
            if(html_escape($this->input->post('nisn')) != null){
                $data['nisn'] = html_escape($this->input->post('nisn'));
            }

            //student id
            // if(html_escape($this->input->post('nisn')) != null){
            //     $data['nisn'] = html_escape($this->input->post('nisn'));
            //     $code_validation = code_validation_update($data['nisn'],$param2);
            //     if(!$code_validation){
            //         $this->session->set_flashdata('error_message' , get_phrase('this_id_no_is_not_available'));
            //         redirect(site_url('marketing/student_information/' . $param3), 'refresh');
            //     }
            // }

            // $validation = email_validation_for_edit($data['email'], $param2, 'student');
            // if($validation == 1){
            $this->db->where('student_id', $param2);
            $this->db->update('student', $data);
            activity_log("edit", "Mengedit Data Siswa");

            $data2['section_id'] = $this->input->post('section_id');
            if (html_escape($this->input->post('roll')) != null) {
                $data2['roll'] = html_escape($this->input->post('roll'));
            }
            else{
                $data2['roll'] = null;
            }
            $running_year = $this->db->get_where('settings' , array('type'=>'running_year'))->row()->description;
            $this->db->where('student_id' , $param2);
            $this->db->where('year' , $running_year);
            $this->db->update('enroll' , array(
                'section_id' => $data2['section_id'] , 'roll' => $data2['roll']
            ));

            move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploads/student_image/' . $param2 . '.jpg');
            $this->crud_model->clear_cache();
            $this->session->set_flashdata('flash_message' , get_phrase('data_updated'));

            redirect(site_url('marketing/student_information/' . $param3), 'refresh');
        }
    }

    function delete_student($student_id = '', $class_id = '') {
      $this->crud_model->delete_student($student_id);
      activity_log("delete", "Menghapus Data Siswa");
      $this->session->set_flashdata('flash_message' , get_phrase('student_deleted'));
      redirect(site_url('marketing/student_information/' . $class_id), 'refresh');
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
