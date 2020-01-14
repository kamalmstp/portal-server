<style>
  h1,h2,p,a{
    font-family: sans-serif;
    font-weight: normal;
  }

  .jam-digital{
    overflow: hidden;
    width: 330px;
    margin: 20px auto;
    border: 5px solid #efefef;
  }

  .kotak{
    float: left;
    width: 110px;
    height: 100px;
    background-color: #189fff;
  }

</style>

<style type="text/css">


.jam_analog_malasngoding {
  background: #e7f2f7;
  position: relative;
  width: 120px;
  height: 120px;
  border: 8px solid #52b6f0;
  border-radius: 50%;
  padding: 10px;
  margin:10px auto;
}

.xxx {
  height: 100%;
  width: 100%;
  position: relative;
}

.jarum {
  position: absolute;
  width: 50%;
  background: #232323;
  top: 50%;
  transform: rotate(90deg);
  transform-origin: 100%;
  transition: all 0.05s cubic-bezier(0.1, 2.7, 0.58, 1);
}

.lingkaran_tengah {
  width: 12px;
  height: 12px;
  background: #232323;
  border: 2px solid #52b6f0;
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -7px;
  margin-top: -7px;
  border-radius: 50%;
}

.jarum_detik {
  height: 2px;
  border-radius: 1px;
  background: #F0C952;
}

.jarum_menit {
  height: 2px;
  border-radius: 2px;
}

.jarum_jam {
  height: 4px;
  border-radius: 2px;
  width: 35%;
  left: 15%;
}
</style>
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

        <li class="active" style="border-top:1px solid #232540;">
          <a href="#">
            <i class="entypo-gauge"></i>
            <span><?php echo get_phrase('PUKUL'); ?></span><br>
            <div class="jam_analog_malasngoding">
            	<div class="xxx">
            		<div class="jarum jarum_detik"></div>
            		<div class="jarum jarum_menit"></div>
            		<div class="jarum jarum_jam"></div>
            		<div class="lingkaran_tengah"></div>
            	</div>
            </div>
            <h1 style="color: #a2a3b7;border:1px;text-align: -webkit-center;margin-bottom: 5px;font-weight: 300;margin-top: 10px;">
            <span id="jam"></span> :
            <span id="menit"></span> :
            <span id="detik"></span>
            </h1>
            <h4 style="color: #a2a3b7;text-align: -webkit-center;">
              <?=date('l, d M Y');?>
            </h4>
            </a>
        </li>

        <li class="active" style="border-top:1px solid #232540;">
          <a href="#">
            <i class="entypo-gauge"></i>
            <span><?php echo get_phrase('JAM KE - '); ?></span>
            <h1 style="color: #a2a3b7;text-align: -webkit-center;margin-bottom: 25px;font-weight: 300;margin-top: 10px;">
              ---
            </h1>

            </a>
        </li>

        <li class="active" style="border-top:1px solid #232540;">
          <a href="#">
            <i class="entypo-gauge"></i>
            <span><?php echo get_phrase('AGENDA'); ?></span>
            <h3 style="color: #a2a3b7;text-align: -webkit-center;margin-bottom: 25px;font-weight: 300;margin-top: 10px;">
              Tidak Ada Agenda Hari Ini
            </h3>

            </a>
        </li>

    </ul>

</div>

<script>
  window.setTimeout("waktu()", 1000);

  function waktu(){
    var waktu = new Date();
    setTimeout("waktu()", 1000);
    document.getElementById("jam").innerHTML = waktu.getHours();
    document.getElementById("menit").innerHTML = waktu.getMinutes();
    document.getElementById("detik").innerHTML = waktu.getSeconds();
  }
</script>
<script type="text/javascript">
	const secondHand = document.querySelector('.jarum_detik');
	const minuteHand = document.querySelector('.jarum_menit');
	const jarum_jam = document.querySelector('.jarum_jam');

	function setDate(){
		const now = new Date();

		const seconds = now.getSeconds();
		const secondsDegrees = ((seconds / 60) * 360) + 90;
		secondHand.style.transform = `rotate(${secondsDegrees}deg)`;
		if (secondsDegrees === 90) {
			secondHand.style.transition = 'none';
		} else if (secondsDegrees >= 91) {
			secondHand.style.transition = 'all 0.05s cubic-bezier(0.1, 2.7, 0.58, 1)'
		}

		const minutes = now.getMinutes();
		const minutesDegrees = ((minutes / 60) * 360) + 90;
		minuteHand.style.transform = `rotate(${minutesDegrees}deg)`;

		const hours = now.getHours();
		const hoursDegrees = ((hours / 12) * 360) + 90;
		jarum_jam.style.transform = `rotate(${hoursDegrees}deg)`;
	}

	setInterval(setDate, 1000)
</script>
