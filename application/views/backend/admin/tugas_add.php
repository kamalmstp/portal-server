<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
<style type="text/css">
    #results { padding:20px; border:1px solid; background:#ccc; }
</style>

<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title" >
                    <i class="entypo-plus"></i>
                    <?php echo get_phrase('add_tugas_harian');?>
                </div>
            </div>
            <div class="panel-body">
                <form action="<?=site_url('student/tugas_create')?>" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <input type="file" accept="image/*;capture=camera">
                            <input type="file" accept="video/*;capture=camcorder">
                            <input type="file" accept="audio/*;capture=microphone">

                            <device type="media" onchange="update(this.data)"></device>
                            <video autoplay></video>
                            <script>
                            function update(stream) {
                                document.querySelector('video').src = stream.url;
                            }
                            </script>
                        </div>
                        <div class="col-md-12">
                            <br/>
                            <button class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>