<div class="row">
    
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading" >
                <div class="panel-title" style="font-size: 16px; color: white; text-align: center;">
                    Ibadah Harian (<?=date('l, d M Y');?>)
                </div>
            </div>
            <div class="panel-body">
                <table cellpadding="0" cellspacing="0" border="0"  class="table table-bordered">
                    <thead>
                        <tr class="gradeA">
                            <th width="10%">Waktu</th>
                            <th width="80%">Kegiatan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="ibadah">
                    </tbody>
                </table>
                
            </div>
        </div>

    </div>

</div>

<script>

window.setTimeout("ambilData()", 1000);

	function ambilData(){
		$.ajax({
			type: 'POST',
			url:'<?php echo base_url("student/data_ibadah") ?>',
			dataType:'json',
			success: function(data){
				// console.log(data);
				var baris='';
				for(var i=0;i<data.length;i++){
                    if (data[i].student == null) {
                        baris += '<tr class="gradeA">'+
                                '<td width="10%">'+data[i].waktu+'</td>'+
								'<td width="80%">'+data[i].judul+'</td>'+
								'<td><div class="btn-group"><a href="<?php echo site_url('student/new_activity/');?>'+data[i].id+'"><button class="btn btn-default">Absen</button></a></div></td>'+
                                '</tr>';
                    }else{
                        baris += '<tr class="gradeA">'+
                                '<td width="10%">'+data[i].waktu+'</td>'+
								'<td width="80%">'+data[i].judul+'</td>'+
								'<td><div class="btn-group"><a href="#"><button class="btn btn-success">Success</button></a></div></td>'+
                                '</tr>';
                    }
						
				}
				$('#ibadah').html(baris);
				}
			});

		window.setTimeout("ambilData()", 1000);
	}
</script>