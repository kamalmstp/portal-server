<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 *  @author   : Al-Mazaya
 *  date      : April, 2019
 *  Ekattor School Management System
 *  http://almazayaislamicschool.sch.id/
 *
 */
class Home extends CI_Controller {

  protected $theme;

  // constructor
  function __construct()
  {
    parent::__construct();
    $this->load->database();
    $this->load->library('session');
    $this->theme = $this->frontend_model->get_frontend_general_settings('theme');
  }

  // default function
  public function index0() {
    $page_data['page_name']  = 'home';
    $page_data['page_title'] = get_phrase('home');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  public function index() {
    $this->db->select('c.name as cname, s.name as sname, s.section_id');
    $this->db->from('section s');
    $this->db->join('class c', 's.class_id = c.class_id');
    $sql = $this->db->get();

    $page_data['page_name']  = 'schedule';
    $page_data['page_title'] = get_phrase('schedule');
    $page_data['class'] = $sql->result_array();
    $this->load->view('backend/index1', $page_data);
  }

  function data_schedule(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem, o.status as stts');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->join('online o', 't.teacher_id = o.user_id', 'left');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', date('H'));
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule1(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '8');
    $this->db->where('cr.time_start_min', '40');
    $this->db->where('cr.time_end', '9');
    $this->db->where('cr.time_end_min', '20');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule2(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '9');
    $this->db->where('cr.time_start_min', '20');
    $this->db->where('cr.time_end', '10');
    $this->db->where('cr.time_end_min', '0');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule3(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '10');
    $this->db->where('cr.time_start_min', '30');
    $this->db->where('cr.time_end', '11');
    $this->db->where('cr.time_end_min', '10');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule4(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '11');
    $this->db->where('cr.time_start_min', '10');
    $this->db->where('cr.time_end', '11');
    $this->db->where('cr.time_end_min', '50');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule5(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '12');
    $this->db->where('cr.time_start_min', '40');
    $this->db->where('cr.time_end', '13');
    $this->db->where('cr.time_end_min', '20');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule6(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '13');
    $this->db->where('cr.time_start_min', '20');
    $this->db->where('cr.time_end', '14');
    $this->db->where('cr.time_end_min', '0');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule7(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '14');
    $this->db->where('cr.time_start_min', '20');
    $this->db->where('cr.time_end', '15');
    $this->db->where('cr.time_end_min', '0');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_schedule8(){
    // $data = $this->db->get_where('class_routine', array('day' => date('l')))->result_array();
    $this->db->select('c.name as cn, sc.name as scn, sb.name as sbn, t.name as tn, cr.time_start as crts, cr.time_start_min as crtsm, cr.time_end as crte, cr.time_end_min as crtem');
    $this->db->from('class_routine cr');
    $this->db->join('class c', 'cr.class_id = c.class_id');
    $this->db->join('section sc', 'cr.section_id = sc.section_id');
    $this->db->join('subject sb', 'cr.subject_id = sb.subject_id');
    $this->db->join('teacher t', 'sb.teacher_id = t.teacher_id');
    $this->db->where('cr.day', date('l'));
    $this->db->where('cr.time_start', '15');
    $this->db->where('cr.time_start_min', '0');
    $this->db->where('cr.time_end', '15');
    $this->db->where('cr.time_end_min', '40');
    $this->db->order_by('cr.time_start', 'asc');
    $this->db->order_by('cr.time_start_min', 'asc');
    $query = $this->db->get();
    $data = $query->result_array();

    echo json_encode($data);
  }

  function data_agenda(){
    $data = $this->db->get('noticeboard')->result_array();
    // $data = $this->db->select('class_routine');

    echo json_encode($data);
  }

  // noticeboard
  function noticeboard() {
    $count_notice = $this->db->get_where('noticeboard', array('show_on_website' => 1))->num_rows();
    $config = array();
    $config = manager($count_notice, 9);
    $config['base_url']  = site_url('home/noticeboard/');
    $this->pagination->initialize($config);

    $page_data['per_page']    = $config['per_page'];
    $page_data['page_name']  = 'noticeboard';
    $page_data['page_title'] = get_phrase('noticeboard');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function schedule() {
    $page_data['page_name']  = 'schedule';
    $page_data['page_title'] = get_phrase('schedule');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function notice_details($notice_id = '') {
    $page_data['notice_id'] = $notice_id;
    $page_data['page_name']  = 'notice_details';
    $page_data['page_title'] = get_phrase('notice_details');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function events() {
    $count_events = $this->db->get_where('frontend_events', array('status' => 1))->num_rows();
    $config = array();
    $config = manager($count_events, 8);
    $config['base_url']  = site_url('home/events/');
    $this->pagination->initialize($config);

    $page_data['per_page']    = $config['per_page'];
    $page_data['page_name']  = 'event';
    $page_data['page_title'] = get_phrase('event_list');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function teachers() {
    $count_teachers = $this->db->get_where('teacher', array('show_on_website' => 1))->num_rows();
    $config = array();
    $config = manager($count_teachers, 9);
      $config['base_url']  = site_url('home/teachers/');
    $this->pagination->initialize($config);

    $page_data['per_page']    = $config['per_page'];
    $page_data['page_name']  = 'teacher';
    $page_data['page_title'] = get_phrase('teachers');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function gallery() {
    $count_gallery = $this->db->get_where('frontend_gallery', array('show_on_website' => 1))->num_rows();
    $config = array();
    $config = manager($count_gallery, 6);
    $config['base_url']  = site_url('home/gallery/');
    $this->pagination->initialize($config);

    $page_data['per_page']    = $config['per_page'];
    $page_data['page_name']  = 'gallery';
    $page_data['page_title'] = get_phrase('gallery');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function gallery_view($gallery_id = '') {
    $count_images = $this->db->get_where('frontend_gallery_image', array(
      'frontend_gallery_id' => $gallery_id
    ))->num_rows();
    $config = array();
    $config = manager($count_images, 9);
    $config['base_url']  = site_url('home/gallery_view/'.$gallery_id.'/');
    $this->pagination->initialize($config);

    $page_data['per_page']    = $config['per_page'];
    $page_data['gallery_id']  = $gallery_id;
    $page_data['page_name']  = 'gallery_view';
    $page_data['page_title'] = get_phrase('gallery');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function admission() {
    $page_data['page_name']  = 'admission';
    $page_data['page_title'] = get_phrase('admission_form');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function about() {
    $page_data['page_name']  = 'about';
    $page_data['page_title'] = get_phrase('about_us');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function contact($param1 = '') {
    if ($param1 == 'send') {
      $this->frontend_model->send_contact_message();
      redirect(site_url('home/contact'), 'refresh');
    }
    $page_data['page_name']  = 'contact';
    $page_data['page_title'] = get_phrase('contact_us');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function privacy_policy() {
    $page_data['page_name']  = 'privacy_policy';
    $page_data['page_title'] = get_phrase('privacy_policy');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }

  function terms_conditions() {
    $page_data['page_name']  = 'terms_conditions';
    $page_data['page_title'] = get_phrase('terms_&_conditions');
    $this->load->view('frontend/'.$this->theme.'/index', $page_data);
  }
}
