<div class="sidebar-menu">
    <header class="logo-env" >
        <!-- logo -->
        <!-- <div class="logo" style="">
            <a href="<?php  echo site_url('login'); ?>">
                <img src="<?php  echo base_url('uploads/logo.png');?>"  style="max-height:30px;"/>
            </a>
        </div> -->

        <!-- logo collapse icon -->
        <div class="sidebar-collapse" style="margin-top: 0px;">
            <a href="#" class="sidebar-collapse-icon" onclick="hide_brand()">
                <i class="entypo-menu"></i>
            </a>
        </div>
        <script type="text/javascript">
            function hide_brand() {
                $('#branding_element').toggle();
            }
        </script>

        <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
        <div class="sidebar-mobile-menu visible-xs">
            <a href="#" class="with-animation">
                <i class="entypo-menu"></i>
            </a>
        </div>
    </header>

    <div style=""></div>	
    <ul id="main-menu" class="">
    
        <div style="text-align: -webkit-center;" id="branding_element">
            <img src="<?php echo base_url('uploads/logo.png');?>"  style="max-height:21px;"/>
            <h4 style="color: #a2a3b7;text-align: -webkit-center;margin-bottom: 25px;font-weight: 300;margin-top: 10px;">
                <?php echo $system_name;?>
            </h4>
        </div>

        <!-- DASHBOARD -->
        <li class="<?php if ($page_name == 'dashboard') echo 'active'; ?> " style="border-top:1px solid #232540;">
            <a href="<?php echo site_url('marketing/dashboard'); ?>">
                <i class="entypo-gauge"></i>
                <span><?php echo get_phrase('dashboard'); ?></span>
            </a>
        </li>

        <!-- MASTER DATA -->
        <li class="<?php if ($page_name == 'primary_school' || $page_name == 'middle_school' || $page_name == 'marketing_time') echo 'opened active';?> ">
            <a href="#">
                <i class="entypo-book"></i>
                <span><?php echo get_phrase('master_data'); ?></span>
            </a>
            <ul>
                <li class="<?php if ($page_name == 'primary_school') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/primary_school'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('primary_school_data'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'middle_school') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/middle_school'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('middle_school_data'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'marketing_time') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/marketing_time'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('marketing_time'); ?></span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- PLANNING PROMOTION -->
        <li class="<?php if ($page_name == 'plan_primary' || $page_name == 'plan_middle' || $page_name == 'plan_primary_view' || $page_name == 'plan_middle_view') echo 'opened active';?> ">
            <a href="#">
                <i class="flaticon-layers"></i>
                <span><?php echo get_phrase('promotion_plan'); ?></span>
            </a>
            <ul>
                <li class="<?php if ($page_name == 'plan_primary') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/plan_primary'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('primary_school_plan'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'plan_middle') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/plan_middle'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('middle_school_plan'); ?></span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- GO TO SCHOOL -->
        <li class="<?php if ($page_name == 'primary_school_plan' || $page_name == 'middle_school_plan') echo 'opened active';?> ">
            <a href="#">
                <i class="flaticon-layers"></i>
                <span><?php echo get_phrase('go_to_school'); ?></span>
            </a>
            <ul>
                <li class="<?php if ($page_name == 'primary_school_plan') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/primary_school_plan'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('schedule_marketing'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'middle_school_plan') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/middle_school_plan'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('primary_school'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'middle_school_plan') echo 'active'; ?> ">
                    <a href="<?php echo site_url('marketing/middle_school_plan'); ?>">
                        <i class="entypo-dot"></i>
                        <span><?php echo get_phrase('middle_school'); ?></span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- ACCOUNT -->
        <li class="<?php if ($page_name == 'manage_profile') echo 'active'; ?> ">
            <a href="#">
                <i class="entypo-lock"></i>
                <span><?php echo get_phrase('account'); ?></span>
            </a>
        </li>

        <li class="root-level" style="border-top: 1px solid #262a44; padding: 10px 0px;text-align: -webkit-center;">
            <?php echo form_open(site_url('admin/change_session') , array('id' => 'session_change'));?>
            <li>
                
                <div class="form-group">
                    <select name="running_year" class="form-control" onchange="submit()" 
                         style="width: 60%;background-color: #232640;border-color: #242742;color: #a1a2b6;" disabled>
                        <?php $running_year = $this->db->get_where('settings' , array('type'=>'running_year'))->row()->description;?>
                        <?php for($i = 0; $i < 10; $i++):?>
                            <option value="<?php echo (2016+$i);?>-<?php echo (2016+$i+1);?>"
                            <?php if($running_year == (2016+$i).'-'.(2016+$i+1)) echo 'selected';?>>
                                Session : <?php echo (2016+$i);?>-<?php echo (2016+$i+1);?>
                            </option>
                      <?php endfor;?>
                    </select>
                </div>
            </li>
            <?php echo form_close();?>
        </li>

    </ul>

</div>