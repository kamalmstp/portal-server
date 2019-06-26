<hr />

<?php echo form_open(site_url('admin/daily_attendance_selector')); ?>
<div class="panel panel-primary ">
    <div class="panel-heading">
        <div class="panel-title">
            <?php echo get_phrase('daily_attendance');?>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">

            <?php
            $query = $this->db->get('class');
            if ($query->num_rows() > 0):
                $class = $query->result_array();
                ?>

                <div class="col-md-3">
                    <div class="form-group">
                        <label class="control-label" style="margin-bottom: 5px;"><?php echo get_phrase('class'); ?></label>
                        <select class="form-control selectboxit" name="class_id" onchange="select_section(this.value)">
                            <option value=""><?php echo get_phrase('select_class'); ?></option>
                            <?php foreach ($class as $row): ?>
                                <option value="<?php echo $row['class_id']; ?>"<?php if ($class_id == $row['class_id']) echo 'selected'; ?> ><?php echo $row['name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
            <?php endif; ?>

            <?php
            $query = $this->db->get_where('section', array('class_id' => $class_id));
            if ($query->num_rows() > 0):
                $sections = $query->result_array();
                ?>
                <div id="section_holder">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label" style="margin-bottom: 5px;"><?php echo get_phrase('section'); ?></label>
                            <select class="form-control selectboxit" name="section_id">
                                <?php foreach ($sections as $row): ?>
                                    <option value="<?php echo $row['section_id']; ?>"
                                            <?php if ($section_id == $row['section_id']) echo 'selected'; ?>><?php echo $row['name']; ?></option>
                                        <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <div class="col-md-2" style="margin-top: 20px;">
                <button type="submit" class="btn btn-info"><?php echo get_phrase('select'); ?></button>
            </div>

        </div>
    </div>
</div>
<?php echo form_close(); ?>


<?php if ($class_id != '' && $section_id != ''): ?>

    <br>

<div class="panel panel-primary ">
    <div class="panel-heading">
        <div class="panel-title">
            <?php echo get_phrase('class') . ' ' . $class_name;?> : <?php echo get_phrase('section');?> <?php echo $section_name; ?>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered" id="my_table">
                    <thead>
                        <tr>
                            <td style="text-align: center;" rowspan="2">
                                <?php echo get_phrase('no'); ?>
                            </td>
                            <td style="text-align: center;" rowspan="2">
                                <?php echo get_phrase('student'); ?>
                            </td>
                            <td style="text-align: center;" colspan="2">
                                <?php echo get_phrase('schedule'); ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">
                                <?php echo get_phrase('coming'); ?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo get_phrase('home'); ?>
                            </td>
                        </tr>
                    </thead>

                    <tbody>
                                <?php
                                $data = array();

                                $students = $this->db->get_where('enroll', array('class_id' => $class_id, 'year' => $running_year, 'section_id' => $section_id))->result_array();

                                foreach ($students as $row):
                                    ?>
                            <tr>
                                <td style="text-align: center;">
                                <?php echo $this->db->get_where('student', array('student_id' => $row['student_id']))->row()->name; ?>
                                </td>
                                <?php
                                $status = 0;
                                for ($i = 1; $i <= $days; $i++) {
                                    $timestamp = strtotime($i . '-' . $month . '-' . $sessional_year);
                                    //$this->db->group_by('timestamp');
                                    $attendance = $this->db->get_where('attendance', array('section_id' => $section_id, 'class_id' => $class_id, 'year' => $running_year, 'timestamp' => $timestamp, 'student_id' => $row['student_id']))->result_array();


                                    foreach ($attendance as $row1):
                                        $month_dummy = date('d', $row1['timestamp']);

                                        if ($i == $month_dummy)
                                        $status = $row1['status'];


                                    endforeach;
                                    ?>
                                    <td style="text-align: center;">
                <?php if ($status == 1) { ?>
                                            <i class="entypo-record" style="color: #00a651;"></i>
                                <?php  } if($status == 2)  { ?>
                                            <i class="entypo-record" style="color: #ee4749;"></i>
                <?php  } if($status == 3)   { ?> 
                    <i class="entypo-record" style="color: #8c8c8c;"></i>
                <?php } $status =0;?>


                                    </td>

            <?php } ?>
        <?php endforeach; ?>

                        </tr>

        <?php ?>

                    </tbody>
                </table>

                <p><b>NOTE :</b></p>
                <p><i class="entypo-record" style="color: #00a651;"></i> = Present </p>
                <p><i class="entypo-record" style="color: #8c8c8c;"></i> = Permission </p>
                <p><i class="entypo-record" style="color: #ee4749;"></i> = Absent </p>


                <center>
                    <a href="<?php echo site_url('admin/attendance_report_print_view/' . $class_id . '/' . $section_id . '/' . $month . '/' . $sessional_year); ?>"
                       class="btn btn-primary" target="_blank">
        <?php echo get_phrase('print_attendance_sheet'); ?>
                    </a>
                </center>
            </div>
        </div>
    <?php endif; ?>
    </div>
</div>

<script type="text/javascript">

    // ajax form plugin calls at each modal loading,
    $(document).ready(function() {

        // SelectBoxIt Dropdown replacement
        if($.isFunction($.fn.selectBoxIt))
        {
            $("select.selectboxit").each(function(i, el)
            {
                var $this = $(el),
                    opts = {
                        showFirstOption: attrDefault($this, 'first-option', true),
                        'native': attrDefault($this, 'native', false),
                        defaultText: attrDefault($this, 'text', ''),
                    };

                $this.addClass('visible');
                $this.selectBoxIt(opts);
            });
        }
    });

</script>

<script type="text/javascript">

    function select_section(class_id) {

        $.ajax({
            url: '<?php echo site_url('admin/get_section/'); ?>' + class_id,
            success: function (response)
            {

                jQuery('#section_holder').html(response);
            }
        });
    }

</script>
