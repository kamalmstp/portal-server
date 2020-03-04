<?php
    $sch_name = $this->db->get_where('marketing_school', array('school_id' => $school_id))->row()->name;
    $address = $this->db->get_where('marketing_school', array('school_id' => $school_id))->row()->address;
    $contact = $this->db->get_where('marketing_school', array('school_id' => $school_id))->row()->contact;
    $phone = $this->db->get_where('marketing_school', array('school_id' => $school_id))->row()->phone;
?>
<hr>

<div class="row" style="text-align: center;">
    <div class="col-sm-12">
        <div class="tile-stats tile-white">
            <div class="col-sm-6">
                <b><h3 style="color: #696969;">"<?php echo $sch_name; ?>"</h3></b>
                <h4 style="color: #696969;">
                    <?php echo $address; ?>
                </h4>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
                <table class="table table-bordered">
                <tr>
                    <td>Contact Name</td>
                    <td><?php echo $contact; ?></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><?php echo $phone; ?></td>
                </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<hr>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title"><?php echo get_phrase('activity_promotion') ?></h3>
		    </div>
		    <div class="panel-body">

            <?php if ($plan_status->num_rows() > 0) {?>
                <table class="table table-bordered">
                    <thead>
                        <th>Process</th>
                        <th>Topick/Remark</th>
                        <th>Status</th>
                        <th>Result</th>
                        <th>Other Info</th>
                    </thead>
                    <tbody>
                        <?php foreach ($plan_status->result_array() as $row) { ?>
                            <tr>
                                <td><?=$row['status_plan'];?></td>
                                <td><?=$row['topick'];?></td>
                                <td><?php if ($row['status_result'] == NULL) {echo 'Waiting';} else {echo $row['status_result'];} ?></td>
                                <td></td>
                                <td></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            <?php }else{?>
                <center>
                    <a href="#" onclick="showAjaxModal('<?php echo site_url('modal/popup/plan_status_elementary/'.$plan_id);?>');"
                         class="btn btn-success" id="submit_button" type="submit">
                        <i class="entypo-plus"></i> Create</a>
                </center>
            <?php } ?>
		    	<!-- <div class="tabs-vertical-env">
					<ul class="nav tabs-vertical">
						<li class="active">
							<a href="#">
								<i class="entypo-dot"></i>
								<?php echo get_phrase('class');?>
							</a>
						</li>
					</ul>
				</div> -->
		    </div>
		</div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
       
    </div>
</div>

<!-----  DATA TABLE EXPORT CONFIGURATIONS ---->
<script type="text/javascript">
	jQuery(document).ready(function($)
    {
        $('#table_export').dataTable();
    });
</script>
