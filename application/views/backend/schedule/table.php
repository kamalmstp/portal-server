<a href="<?=site_url('login');?>" class="btn btn-primary pull-right">
	<?php echo get_phrase('login_portal');?>
</a>
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title"><?php echo $page_title; ?></h3>
		    </div>
		    <div class="panel-body">
			<div class="tabs-vertical-env">

				<div class="tab-content">

					<div class="tab-pane active">
						<table class="table table-bordered">
							<thead>
								<tr>
									<td>Class</td>
									<td>Subject</td>
									<td>Time</td>
									<td>Teacher</td>
								</tr>
							</thead>
							<tbody id="target">
							</tbody>
						</table>
					</div>

				</div>

			</div>
		</div>
	</div>
</div>

<script>

window.setTimeout("ambilData()", 1000);

	function ambilData(){
		var waktu = new Date();
		var hh = waktu.getHours();
		var mm = waktu.getMinutes();
		var ss = waktu.getSeconds();

		$.ajax({
			type: 'POST',
			url:'<?php echo base_url("home/data_schedule") ?>',
			dataType:'json',
			success: function(data){
				// console.log(data);
				var baris='';
				for(var i=0;i<data.length;i++){
					if (data[i].stts == null) {
						baris += '<tr>'+
								'<td>'+data[i].cn+' ('+data[i].scn+') </td>'+
								'<td>'+data[i].sbn+'</td>'+
								'<td>'+data[i].crts+':'+data[i].crtsm+' - '+data[i].crte+':'+data[i].crtem+'</td>'+
								'<td>'+data[i].tn+' - '+'<div class="badge btn-secondary"><i>Offline</i></div>'+'</td>'+
							'</tr>';
					} else {
						baris += '<tr>'+
								'<td>'+data[i].cn+' ('+data[i].scn+') </td>'+
								'<td>'+data[i].sbn+'</td>'+
								'<td>'+data[i].crts+':'+data[i].crtsm+' - '+data[i].crte+':'+data[i].crtem+'</td>'+
								'<td>'+data[i].tn+' - '+'<div class="badge btn-success">'+data[i].stts+'</div>'+'</td>'+
							'</tr>';
					}
				}
				$('#target').html(baris);
				}
			});

		window.setTimeout("ambilData()", 1000);
	}
</script>