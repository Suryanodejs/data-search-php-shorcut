<?php
public function certificate_find(){

    $this->load->view('website/include/web_header'); 
      $p_p_no	 = $this->input->post('p_p_no');
    //   $job_location = $this->input->post('job_location');
    
    if(isset($_POST['submit'])){
        
       $data['jobposted_list'] = $this->db->query("select * from cer_tbl where status ='0'AND `p_p_no` LIKE '$p_p_no'")->result(); 
     //echo $this->db->last_query();
       $this->load->view('website/student-certificate-find',$data);
      $this->load->view('website/include/web_footer'); 
     //exit();
      }
      else{
      $data['web_international_job'] = $this->db->query("select * from job_posted_tbl where job_type ='2'")->result();
        $this->load->view('website/student-certificate-find',$data);
      $this->load->view('website/include/web_footer'); 
    
      }
    
   }

?>

