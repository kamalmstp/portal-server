<div class="row">
    
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading" >
                <div class="panel-title" style="font-size: 16px; color: white; text-align: center;">
                    Tugas Harian (<?=date('l, d M Y');?>)
                </div>
            </div>
            <div class="panel-body">
                <table cellpadding="0" cellspacing="0" border="0"  class="table table-bordered">
                    <thead>
                        <tr class="gradeA">
                            <th width="10%">#</th>
                            <th width="80%">Kegiatan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach($tugas as $row): 
                            if ($row['student'] == null) {?>
                            <tr class="gradeA">
                                <th width="10%"></th>
                                <th width="80%"><?=$row['judul'];?></th>
                                <td><div class="btn-group"><a href="<?php echo site_url('student/new_activity1/'.$row['id']);?>"><button class="btn btn-default">Absen</button></a></div></td>
                            </tr>
                            <?php } else { ?>
                                <tr class="gradeA">
                                <th width="10%"></th>
                                <th width="80%"><?=$row['judul'];?></th>
                                <td><div class="btn-group"><a href="#"><button class="btn btn-success">Success</button></a></div></td>
                            </tr>
                            <?php }?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                
            </div>
        </div>

    </div>

</div>