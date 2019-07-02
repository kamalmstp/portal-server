
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title" >
                    <i class="entypo-plus-circled"></i>
                    <?php echo get_phrase('upload_learning_device'); ?>
                </div>
            </div>
            <div class="panel-body">

                <?php
                echo form_open(site_url('teacher/'), array(
                    'class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top', 'enctype' => 'multipart/form-data'
                ));
                ?>
                <div class="form-group">
                    <label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('subject'); ?></label>
                    <div class="col-sm-5">
                        <select id="subject_id" name="subject_id" class="form-control" required="required">
                            <option value=""><?php echo get_phrase('select_subject'); ?></option>
                            <?php
                            $subject = $this->db->get('subject')->result_array();
                            foreach ($subject as $row):
                                ?>
                                <option value="<?php echo $row['subject_id']; ?>"><?php echo $row['name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('prota'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="prota" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                        <!-- data-validate="required" data-message-required="<?php echo get_phrase('required'); ?>" -->
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('prosem'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="prosem" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('silabus'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="silabus" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('rpp'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="rpp" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('prorem'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="prorem" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('learn_material'); ?></label>
                    <div class="col-sm-5">
                        <input type="file" name="learn_material" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-5">
                        <button type="submit" id = 'submit' class="btn btn-info">
                            <i class="entypo-upload"></i> <?php echo get_phrase('upload'); ?>
                        </button>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
<script type = 'text/javascript'>
                var subject_id = '';
                jQuery(document).ready(function($) {
                    $("#submit").attr('disabled', 'disabled');
                });

                function check_validation(){
                    if(subject_id !== ''){
                        $('#submit').removeAttr('disabled');
                    }
                    else{
                        $("#submit").attr('disabled', 'disabled');
                    }
                }
                $('#subject_id').change(function(){
                    subject_id = $('#class_id').val();
                    check_validation();
                });
</script>