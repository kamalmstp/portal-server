<!--password-->
<div class="row">
	<div class="col-md-12">

    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs bordered">

			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="entypo-lock"></i>
					<?php echo get_phrase('change_password');?></a></li>

            <li class="">
                <a href="#list2" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('identitas_sekolah');?></a></li>

            <li class="">
                <a href="#list3" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('identitas_pendidikan');?></a></li>
            <li class="">
                <a href="#list4" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('data_pribadi');?></a></li>
            <li class="">
                <a href="#list5" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('kepegawaian');?></a></li>
            <li class="">
                <a href="#list6" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('kopetensi_khusus');?></a></li>
            <li class="">
                <a href="#list7" data-toggle="tab"><i class="entypo-lock"></i>
                    <?php echo get_phrase('kontak');?></a></li>
		</ul>
    	<!------CONTROL TABS END------->


		<div class="tab-content">
        	<!----EDITING FORM STARTS---->
			<div class="tab-pane box active" id="list" style="padding: 5px">
                <div class="box-content padded">
					<?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/change_password') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('current_password');?></label>
                                <div class="col-sm-5">
                                    <input type="password" class="form-control" name="password" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('new_password');?></label>
                                <div class="col-sm-5">
                                    <input type="password" class="form-control" name="new_password" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('confirm_new_password');?></label>
                                <div class="col-sm-5">
                                    <input type="password" class="form-control" name="confirm_new_password" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
								</div>
                        </form>
						<?php
                    endforeach;
                    ?>
                </div>
			</div>
            <!----EDITING FORM ENDS---> 

            <div class="tab-pane box" id="list2" style="padding: 5px">
                    <div class="box-content padded">
                        <?php
                        foreach($edit_data as $row):
                            ?>
                            <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><?php echo get_phrase('nama_sekolah');?></label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="nama_sekolah" value="" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><?php echo get_phrase('NPSN');?></label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="npsn" value="" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><?php echo get_phrase('alamat_sekolah');?></label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="alamat_sekolah" value="" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                  <div class="col-sm-offset-3 col-sm-5">
                                      <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                                  </div>
                                    </div>
                            </form>
                            <?php
                        endforeach;
                        ?>
                    </div>
            </div>

            <div class="tab-pane box" id="list3" style="padding: 5px">
                <div class="box-content padded">
                    <?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nama_lengkap_(tanpa_gelar)');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nama_lengkap" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('NIK');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="NIK" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('jenis_kelamin');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="jenis_kelamin" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('tempat_lahir');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="tempat_lahir" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('tanggal_lahir');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="tgl_lahir" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nama_ibu_kandung');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nama_ibu_kandung" value="" required/>
                                </div>
                            </div>

                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
                                </div>
                        </form>
                        <?php
                    endforeach;
                    ?>
                </div>
            </div>

            <div class="tab-pane box" id="list4" style="padding: 5px">
                <div class="box-content padded">
                    <?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('alamat_jalan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="alamat_jalan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('rt');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="rt" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('rw');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="rw" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nama_dusun');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nama_dusun" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('kecamatan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="kec" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('kode_pos');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="kode_pos" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('agama');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="agama" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('npwp');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="npwp" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nama_wajib_pajak');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nama_wajib_pajak" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('kewarganegaraan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="kewarganegaraan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('status_perkawinan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="status_perkawinan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nama_suami/istri');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nama_suami" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nip_suami');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nip_suami" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('pekerjaan_suami');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="pekerjaan_suami" value="" required/>
                                </div>
                            </div>

                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
                                </div>
                        </form>
                        <?php
                    endforeach;
                    ?>
                </div>
            </div>

            <div class="tab-pane box" id="list5" style="padding: 5px">
                <div class="box-content padded">
                    <?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('status_kepegawaiaan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="status_kepegawaiaan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('NIP');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="NIP" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('NIY/NIGK');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="niy" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nuptk');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nuptk" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('jenis_ptk');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="jenis_ptk" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('SK_pengangkatan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="SK_pengangkatan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('TMT_pengangkatan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="TMT_pengangkatan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('lembaga_pengangkatan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="lembaga_pengangkatan" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('SK_CPNS');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="sk_cpns" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('TMT_PNS');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="tmt_pns" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('pangkat/Golongan');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="pangkat" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('sumber_gaji');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="sumber_gaji" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('kartu_pegawai');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="kartu_pegawai" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('kartu_istri(KARIS)/_kartu_suami(KARSU)');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="kartu_pegawai" value="" required/>
                                </div>
                            </div>


                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
                                </div>
                        </form>
                        <?php
                    endforeach;
                    ?>
                </div>
            </div>

            <div class="tab-pane box" id="list6" style="padding: 5px">
                <div class="box-content padded">
                    <?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('punya_lisensi_kepala_sekolah');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="lisensi" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('keahlian_leb_oratorium');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="keahlian" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('mampu_menangani_kebutuhan_khusus');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="khusus" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('keahlian_braile');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="keahlian_braile" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('keahlian_bahasa_isyarat');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="keahlian_bahasa_isyarat" value="" required/>
                                </div>
                            </div>

                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
                                </div>
                        </form>
                        <?php
                    endforeach;
                    ?>
                </div>
            </div>

            <div class="tab-pane box" id="list7" style="padding: 5px">
                <div class="box-content padded">
                    <?php
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open(site_url('teacher/manage_profile/   ') , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nomor_telepon_rumah');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="telepon_rumah" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('nomor_hp');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="nomor_hp" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('email');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="email" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('id_bank');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="id_bank" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('no_req_bank');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="no_req_bank" value="" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('req_atas_nama');?></label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" name="req_atas_nama" value="" required/>
                                </div>
                            </div>

                            <div class="form-group">
                              <div class="col-sm-offset-3 col-sm-5">
                                  <button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
                              </div>
                                </div>
                        </form>
                        <?php
                    endforeach;
                    ?>
                </div>
            </div>


		</div>
        
        
	</div>
</div>
