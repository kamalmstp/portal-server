<hr />
<!-- <a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add/');?>');" 
	class="btn btn-primary pull-right">
    	<i class="entypo-plus-circled"></i>
			<?php echo get_phrase('add_learning_device');?>
</a> 
<br><br><br> -->

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title"><?php echo get_phrase('learning_manager') ?></h3>
		    </div>
		    <div class="panel-body">
			<div class="tabs-vertical-env">
            
				<div class="tab-content">

					<div class="tab-pane active">
						<?php echo '<p>Learning Device for : <h3>'.$this->db->get_where('subject' , array(
                                                'teacher_id' => $teacher_id,
											))->row()->name.'</p></h3>' ?>
						<?php $learning = $this->db->get_where('learning_device' , array(
									'teacher_id' => $teacher_id
                                ))->result_array();
                                 ?>
						<br>
						<?php 
						$cek = $this->db->get_where('learning_device', array('teacher_id' => $teacher_id))->result_array();
						if ($cek == null) {
							# code...
							echo "
							<div class='col-md-offset-4 col-md-4' style='padding: 15px;'>
							<a href=".site_url('teacher/learning_manage/create').">
								<button type='button' class='btn btn-primary' name='submit'><i class='entypo-plus-circled'></i>Add Learning Device</button>
							</a> 
							</div>
							";
						} else { ?>
							<?php 
							foreach($cek as $row):
							 ?>
							<table class="table table-bordered responsive">
								<tr>
									<td width="20%">Prota</td>
									<td>: 
										<?php 
											if ($row['prota'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['prota'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['prota'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prota/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_prota');?>
												</a> 
											<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/prota/'.$row['prota']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prota/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
								<tr>
									<td width="20%">Prosem</td>
									<td>: 
										<?php 
											if ($row['prosem'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['prosem'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['prosem'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prosem/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_prosem');?>
												</a> 
												<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/prosem/'.$row['prosem']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prosem/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
								<tr>
									<td width="20%">Silabus</td>
									<td>: 
										<?php 
											if ($row['silabus'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['silabus'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['silabus'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_silabus/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_silabus');?>
												</a> 
												<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/silabus/'.$row['silabus']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_silabus/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
								<tr>
									<td width="20%">RPP</td>
									<td>: 
										<?php 
											if ($row['rpp'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['rpp'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['rpp'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_rpp/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_rpp');?>
												</a> 
												<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/rpp/'.$row['rpp']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_rpp/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
								<tr>
									<td width="20%">Prorem</td>
									<td>: 
										<?php 
											if ($row['prorem'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['prorem'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['prorem'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prorem/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_prorem');?>
												</a> 
												<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/prorem/'.$row['prorem']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_prorem/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
								<tr>
									<td width="20%">Learning Material</td>
									<td>: 
										<?php 
											if ($row['learn_material'] == null) {
												# code...
												echo "Not Found";
											} else {
												# code...
												echo $row['learn_material'];
											}
										?>
									</td>
									<td>
										<?php 
											if ($row['learn_material'] == null) {
												# code... ?>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_learning_material/'.$row['learning_id']);?>');" 
													class="btn btn-primary">
														<i class="entypo-plus-circled"></i>
															<?php echo get_phrase('add_learning_material');?>
												</a> 
												<?php } else { ?>
												<a href= "<?php echo base_url().'uploads/learning/learning_material/'.$row['learn_material']?>" class="btn btn-success btn-icon icon-left">
												<i class="entypo-download"></i>Download</a>
												<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add_learning_material/'.$row['learning_id']);?>');" 
													class="btn btn-danger btn-icon icon-left">
														<i class="entypo-pencil"></i>
															<?php echo get_phrase('edit');?>
												</a>
											<?php } ?>
									</td>
								</tr>
							</table>
						<?php 
						endforeach;
						}
						 ?>
						<!-- <div class="col-md-offset-4 col-md-4" style="padding: 15px;">
							<a href="<?php echo site_url('teacher/learning_manage/create') ?>">
								<button type="button" class="btn btn-primary" name="submit"><i class="entypo-plus-circled"></i><?php echo get_phrase('add_learning_device')?></button>
							</a> 
						</div> -->
					</div>

				</div>
				
			</div>	
		</div>
	</div>
</div>