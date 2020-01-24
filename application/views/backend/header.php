<div class="row" style="margin-left:0px; margin-right:0px;">
	<!-- <div class="col-md-12 col-sm-12 clearfix" style="text-align:center;">
		<h2 style="font-weight:200; margin:0px;"><?php echo $system_name;?></h2>
    </div> -->
	<!-- Raw Links -->

	<div class="col-md-12 col-sm-12 clearfix " style="background-color:#ffffff; box-shadow: 0px 10px 30px 0px rgba(82,63,105,0.08); border-radius: 5px;">
		<ul class="list-inline links-list pull-left" style="margin-top:9px;">
			<!-- <li>
				<div class="input-group minimal" style="width: 300px;margin-left: 10px;">
					<span class="input-group-addon"><i class="entypo-search"></i></span>
					<input type="text" class="form-control" placeholder="Search student">
				</div>
				
			</li> -->
			
			<!-- Sementara
			<li>
				<a href="<?php echo site_url('home');?>" target="_blank">
					<i class="entypo-paper-plane"></i> Website
				</a>
			</li>
			-->
		</ul>
       

		<ul class="user-info pull-right pull-none-xsm" style="margin-top: 6px;">
			<li class="dropdown pull-left">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-envelope"></i>
					<span class="label label-success">4</span>
				</a>
				<ul class="dropdown-menu">
				<li class="header">You have 4 messages</li>
				<li>
					<!-- inner menu: contains the actual data -->
					<ul class="menu">
					<li><!-- start message -->
						<a href="#">
						<div class="pull-left">
							<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
						</div>
						<h4>
							Support Team
							<small><i class="fa fa-clock-o"></i> 5 mins</small>
						</h4>
						<p>Why not buy a new awesome theme?</p>
						</a>
					</li>
					<!-- end message -->
					</ul>
				</li>
				<li class="footer"><a href="#">See All Messages</a></li>
				</ul>
			</li>
			<li class="profile-info dropdown pull-right"><!-- add class "pull-right" if you want to place this from right -->
				
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<?php if ($account_type == "headmaster"){ ?>
						<img src="<?php echo $this->crud_model->get_image_url('teacher', 'teacher_id');?>" alt="" class="img-circle" width="44">
					<?php
						$name = $this->db->get_where('teacher', array('teacher_id' => $this->session->userdata('login_user_id')))->row()->name;
						echo $name;
					?>

					<?php }else{ ?>
					<img src="<?php echo $this->crud_model->get_image_url($account_type, $account_type_id);?>" alt="" class="img-circle" width="44">
					<?php
						$name = $this->db->get_where($account_type, array($account_type.'_id' => $this->session->userdata('login_user_id')))->row()->name;
						echo $name;
					?>
					<?php } ?>

					<div style="margin-top: -15px;
							    font-size: 10px;
							    text-align: left;
							    padding-left: 53px;
							    color: #707696;">
						<p style="<?php if($this->session->userdata('login_type') == 'admin') echo'margin-top: 0px'; ?>"><?php echo $this->session->userdata('login_type');?></p>
					</div>
				</a>
				
				<ul class="dropdown-menu">
					
					<!-- Reverse Caret -->
					<li class="caret"></li>
					
					<!-- Profile sub-links -->
					<li>
						<a href="<?php echo site_url($account_type . '/manage_profile');?>">
							<i class="flaticon-rotate"></i>
							<?php echo get_phrase('edit_profile');?>
						</a>
					</li>
					
					<li>
						<a href="<?php echo site_url($account_type . '/manage_profile');?>">
							<i class="flaticon-lock"></i>
							<?php echo get_phrase('change_password');?>
						</a>
					</li>
					
					<li>
						<a href="<?php echo site_url('login/logout');?>">
							<i class="flaticon-paper-plane-1"></i>
							<?php echo get_phrase('log_out');?>
						</a>
					</li>
					
				</ul>
			</li>
		
		</ul>
	</div>

</div>

<hr style="margin-top:0px;" />

<script type="text/javascript">
	function get_session_changer()
	{
		$.ajax({
            url: '<?php echo site_url('admin/get_session_changer');?>',
            success: function(response)
            {
                jQuery('#session_static').html(response);
            }
        });
	}
</script>
