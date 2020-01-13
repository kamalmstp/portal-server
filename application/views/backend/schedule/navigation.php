<div class="sidebar-menu">
    <header class="logo-env" >
        <!-- logo collapse icon -->
        <!-- <div class="sidebar-collapse" style="margin-top: 0px;">
            <a href="#" class="sidebar-collapse-icon" onclick="hide_brand()">
                <i class="entypo-menu"></i>
            </a>
        </div> -->
        <!-- <script type="text/javascript">
            function hide_brand() {
                $('#branding_element').toggle();
            }
        </script> -->

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



    </ul>

</div>
