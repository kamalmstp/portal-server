<hr />
<div class="row">

<?php echo form_open(site_url('student/report_selector/')); ?>
<div class="col-md-6">
<div class="panel panel-primary ">
    <div class="panel-heading">
        <div class="panel-title">
            <?php echo get_phrase('report');?>
        </div>
    </div>
    <div class="panel-body">
        <div class="form-group">
            <label class="col-sm-3 control-label"><?php echo get_phrase('select_time');?></label>
            <div class="col-sm-8">
                <select class="form-control selectboxit" name="time">
                    <option value="0"><?php echo get_phrase('all_time'); ?></option>
                    <option value="1"><?php echo get_phrase('minggu_ke-1'); ?></option>
                    <option value="2"><?php echo get_phrase('minggu_ke-2'); ?></option>
                    <option value="3"><?php echo get_phrase('minggu_ke-3'); ?></option>
                    <option value="4"><?php echo get_phrase('minggu_ke-4'); ?></option>
                </select>
            </div>
        </div>
        	<div class="col-md-2" style="margin-top: 20px;">
        		<button type="submit" class="btn btn-info"><?php echo get_phrase('show_report');?></button>
        	</div>
    </div>
</div>
</div>
<?php echo form_close(); ?>

</div>