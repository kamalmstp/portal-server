<div class="row">
    <div class="col-md-4">
		<div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo get_phrase('execution_time') ?></h4>
                    </div>
                    <div class="panel-body">
                        
                        <?php echo form_open(site_url('marketing/marketing_time/create/') , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
                        <div class="form-group">
                            <label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('start_at');?></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control datepicker" name="start_at" value="" data-start-view="2">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="field-2" class="col-sm-3 control-label"><?php echo get_phrase('end_at');?></label>

                            <div class="col-sm-5">
                                <input type="text" class="form-control datepicker" name="end_at" value="" data-start-view="2">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button type="submit" class="btn btn-info"><?php echo get_phrase('add_time');?></button>
                            </div>
                        </div>
                        <?php echo form_close();?>
                    </div>
                </div>
            </div>
    	</div>
    </div>
</div>