<hr />
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
                                    <th><?php echo get_phrase('teacher');?></th>
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
								$learning = $this->db->get('learning_device')->result_array();
                                
								foreach ($learning as $row):
							?>
								<tr>
									<td><?php echo $count++;?></td>
                                    <td><?php echo $this->db->get_where('teacher', array(
                                        'teacher_id' => $row['teacher_id']
                                    ))->row()->name;?></td>
                                    <td><?php 
											echo $this->db->get_where('subject' , array(
                                                'subject_id' => $row['subject_id']
											))->row()->name;
										?>
                                    </td>
                                    <td>
                                    <?php 
                                        if ($row['prota'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            //echo $row['prota'];
                                            //echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/prota/'.$row['prota'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
                                    </td>
									<td>
                                    <?php 
                                        if ($row['prosem'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            //echo $row['prosem'];
                                            //echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/prosem/'.$row['prosem'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
                                    </td>
	                                <td>
                                    <?php 
                                        if ($row['silabus'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            //echo $row['silabus'];
                                            //echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/silabus/'.$row['silabus'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
									</td>
									<td>
                                    <?php 
                                        if ($row['rpp'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            // echo $row['rpp'];
                                            // echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/rpp/'.$row['rpp'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
									</td>
                                    <td>
                                    <?php 
                                        if ($row['prorem'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            //echo $row['prorem'];
                                            //echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/prorem/'.$row['prorem'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
                                    </td>
									<td>
                                    <?php 
                                        if ($row['learn_material'] == "") {
                                            # code...
                                            echo "Not Found";
                                        } else {
                                            //echo $row['learning_material'];
                                            //echo '</br>';
                                            echo '<a href= '.base_url().'uploads/learning/learning_material/'.$row['learn_material'].' class="btn btn-blue btn-icon icon-left">
                                            <i class="entypo-download"></i>Download</a>';
                                        }
                                    ?>
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