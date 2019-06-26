<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Fingerprint extends CI_Model {

    function __construct() {
        parent::__construct();
    }

     public function get_setting(){
    	$data = $this->db->get('fingerprint_options')->row();
    	return $data;
    }
    
     public function if_exist_check($PIN, $DateTime){
        $data = $this->db->get_where('fingerprint', array('pin' => $PIN, 'date_time' => $DateTime))->row();
        return $data;
    }

     public function get_data_absen($i){
		error_reporting(0);
        $IP = $this->get_setting()->ip;
        $Key = $this->get_setting()->password;
        if($IP!=""){
        $Connect = fsockopen($IP, "80", $errno, $errstr, 1);
            if($Connect){
           
                $soap_request="<GetAttLog><ArgComKey xsi:type=\"xsd:integer\">".$Key."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN></Arg></GetAttLog>";
                
                $newLine="\r\n";
                fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
                fputs($Connect, "Content-Type: text/xml".$newLine);
                fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
                fputs($Connect, $soap_request.$newLine);
                $buffer="";
                while($Response=fgets($Connect, 1024)){
                    $buffer=$buffer.$Response;
                }
            
                $buffer = Parse_Data($buffer,"<GetAttLogResponse>","</GetAttLogResponse>");
                $buffer = explode("\r\n",$buffer);
                //}
                for($a=0;$a<count($buffer);$a++){
                    $data = Parse_Data($buffer[$a],"<Row>","</Row>");
                    $PIN = Parse_Data($data,"<PIN>","</PIN>");
                    $DateTime = Parse_Data($data,"<DateTime>","</DateTime>");
                    $Verified = Parse_Data($data,"<Verified>","</Verified>");
                    $Status = Parse_Data($data,"<Status>","</Status>");
                    $ins = array(
                            "pin"       =>  $PIN,
                            "date_time" =>  date('Y-m-d H:i', strtotime($DateTime)),
                            "ver"		=>  $Verified,
                            "status"    =>  $Status
                            );
                    if (!$this->if_exist_check($PIN, date('Y-m-d H:i', strtotime($DateTime))) && $PIN && date('Y-m-d H:i', strtotime($DateTime))) {
                    	$this->db->insert('fingerprint', $ins);
                    }
                }
            
                if($buffer){
                    $this->session->set_flashdata('flash_message' , get_phrase('fingerprint_connected'));
                } else {
                    $this->session->set_flashdata('error_message' , get_phrase('fingerprint_not_connected'));
                }
            }
        } 
    }
}