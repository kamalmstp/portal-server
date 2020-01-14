<a href="<?=site_url('login');?>" class="btn btn-primary pull-right">
	<?php echo get_phrase('login_portal');?>
</a>
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title"><?php echo get_phrase('SCHEDULE IN TODAY') ?></h3>
		    </div>
		    <div class="panel-body">
			<div class="tabs-vertical-env">

				<div class="tab-content">

					<div class="tab-pane active">
						<table class="table table-bordered">
							<thead>
								<tr>
                  <th><?php echo get_phrase('class') ?></th>
									<th><?php echo get_phrase('subject');?></th>
									<th><?php echo get_phrase('duration');?></th>
                  <th><?php echo get_phrase('teacher');?></th>
								</tr>
							</thead>
							<tbody>
                <?php
									$this->db->select('section.section_id as sid, class.name as cn, section.name as sn');
									$this->db->from('section');
									$this->db->join('class','section.class_id = class.class_id');
									$kelas = $this->db->get()->result_array();

									foreach ($kelas as $kls) {
										?>
										<tr>
											<td><?=$kls['cn']." (".$kls['sn'].")";?></td>
											<?php
												$cek = $this->db->get_where('journal', array('date' => date('Y-m-d'), 'section_id' => $kls['sid']));
												if ($cek->num_rows() > 0) {
													$data = $cek->row();
													?>
													<td>
														<?php echo $this->db->get_where('subject', array('subject_id' => $data->subject_id))->row()->name;?>
													</td>
													<td>
														<?=$data->duration;?>
													</td>
													<td>
														<?php echo $this->db->get_where('teacher', array('teacher_id' => $data->teacher_id))->row()->name;?>
													</td>
											<?php	}else{
											 ?>
											<td>-</td>
											<td>-</td>
											<td>-</td>
										<?php }?>
										</tr>
									<?php }
                ?>
							</tbody>
						</table>
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
