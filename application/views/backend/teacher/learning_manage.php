<hr />
<a href="javascript:;" onclick="showAjaxModal('<?php echo site_url('modal/popup/learning_manage_add/');?>');" 
	class="btn btn-primary pull-right">
    	<i class="entypo-plus-circled"></i>
			<?php echo get_phrase('add_learning_device');?>
</a> 
<br><br><br>

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
						<table class="table table-bordered responsive">
							<thead>
								<tr>
									<th>#</th>
									<th><?php echo get_phrase('subject');?></th>
									<th><?php echo get_phrase('prota');?></th>
	                                <th><?php echo get_phrase('prosem');?></th>
									<th><?php echo get_phrase('silabus');?></th>
									<th><?php echo get_phrase('rpp');?></th>
									<th><?php echo get_phrase('prorem');?></th>
                                    <th><?php echo get_phrase('learn_material');?></th>
									<th></th>
								</tr>
							</thead>
							<tbody>

							<?php
								$count    = 1;
								$learning = $this->db->get_where('learning_device' , array(
									'teacher_id' => $teacher_id
                                ))->result_array();
                                
								foreach ($learning as $row):
							?>
								<tr>
									<td><?php echo $count++;?></td>
                                    <td><?php 
											echo $this->db->get_where('subject' , array(
                                                'subject_id' => $row['subject_id'],
											))->row()->name;
										?>
                                    </td>
									<td><?php echo $row['prota'];?></td>
									<td><?php echo $row['prosem'];?></td>
	                                <td>
                                    <?php echo $row['silabus'];?>
									</td>
									<td>
                                    <?php echo $row['rpp'];?>
									</td>
                                    <td><?php echo $row['prorem'];?></td>
									<td align="center">
                                    <?php echo $row['learn_material'];?>
									</td>
                                    <td></td>
								</tr>
							<?php endforeach;?>
								
							</tbody>
						</table>
					</div>

				</div>
				
			</div>	
		</div>
	</div>
</div>