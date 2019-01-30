<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo BASEURL; ?>/assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="<?php echo BASEURL; ?>/assets/img/favicon.png"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Material Dashboard Pro by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <!-- Bootstrap core CSS     -->
    <link href="<?php echo BASEURL; ?>/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!--  Material Dashboard CSS    -->
    <link href="<?php echo BASEURL; ?>/assets/css/material-dashboard.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<?php echo BASEURL; ?>/assets/css/demo.css" rel="stylesheet"/>
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body class="off-canvas-sidebar">
<nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<?php echo BASEURL ?>/jadwalkuliah/index">
                        <i class="material-icons">event</i> Daftar Jadwal Kuliah
                    </a>
                </li>
                <li class="">
                    <a href="<?php echo BASEURL ?>/jadwaltugas/index">
                        <i class="material-icons">assignment</i> Daftar Tugas Kuliah
                    </a>
                </li>

                <li class="">
                    <a href="<?php echo BASEURL ?>/login/keluar">
                        <i class="material-icons">reply</i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="wrapper wrapper-full-page">
    <div class="full-page pricing-page" data-image="<?php echo BASEURL; ?>/assets/img/josefa-ndiaz-312261-unsplash.jpg">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center"><br>
                        <b><h1 class="title">"WELCOME BRO & SIS"</h1></b>
                    </div>
                    <br>
                </div>
                <div class="row">

                    <div class="col-md-3 col-md-offset-3 text-center ">
                        <div class="card card-pricing card-plain">
                            <div class="card-content">
                                <h6 class="description ">Tambahkan Jadwal Kuliah Anda Di Pengingat</h6>
                                <div class="icon icon-rose">
                                    <i class="material-icons">today</i>
                                </div>
                                <br>
                                <p class="card-description">
                                    Mengingatkan Kepada Anda Jadwal Kuliah
                                </p>
                                <button type="button" class="btn btn-success btn-round" data-toggle="modal"
                                        data-target="#exampleModal1">Tambah Jadwal
                                </button>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card card-pricing card-plain">
                            <div class="card-content">
                                <h6 class="description text-primary">Tambahkan Tugas Kuliah Anda Di Pengingat</h6>
                                <div class="icon icon-rose">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <br>
                                <p class="card-description">
                                    Mengingatkan Kepada Anda Tugas-tugas yang Harus Dikerjakan
                                </p>
                                <button type="button" class="btn btn-success btn-round" data-toggle="modal"
                                        data-target="#exampleModal2">Tambah Tugas
                                </button>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
<!--   Core JS Files   -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL; ?>/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL; ?>/assets/js/material.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL; ?>/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Library for adding dinamically elements -->
<script src="<?php echo BASEURL; ?>/assets/js/arrive.min.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery.validate.min.js"></script>
<!-- Promise Library for SweetAlert2 working on IE -->
<script src="<?php echo BASEURL; ?>/assets/js/es6-promise-auto.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="<?php echo BASEURL; ?>/assets/js/moment.min.js"></script>
<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="<?php echo BASEURL; ?>/assets/js/chartist.min.js"></script>
<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="<?php echo BASEURL; ?>/assets/js/bootstrap-notify.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="<?php echo BASEURL; ?>/assets/js/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="<?php echo BASEURL; ?>/assets/js/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="<?php echo BASEURL; ?>/assets/js/sweetalert2.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="<?php echo BASEURL; ?>/assets/js/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="<?php echo BASEURL; ?>/assets/js/fullcalendar.min.js"></script>
<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="<?php echo BASEURL; ?>/assets/js/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="<?php echo BASEURL; ?>/assets/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="<?php echo BASEURL; ?>/assets/js/demo.js"></script>
<script type="text/javascript">
    $().ready(function () {
        demo.checkFullPageBackgroundImage();

        setTimeout(function () {
            // after 1000 ms we add the class animated to the login/register card
            $('.card').removeClass('card-hidden');
        }, 700)
    });
</script>
</html>
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Jadwal Kuliah</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<?= BASEURL; ?>/dashboard/createAction2" method="post">
                    <input class="form-control" type="hidden" id="idTelegram" value="<?= $_SESSION['idtele'] ?>" name="idTelegram" readonly>
                    <div class="form-group">
                        <label for="mataKuliah">Mata Kuliah</label>
                        <input type="text" class="form-control" id="mataKuliah" name="mataKuliah">
                    </div>
                    <div class="form-group">
                        <label for="dosen">Dosen</label>
                        <input type="text" class="form-control" id="dosen" name="dosen">
                    </div>
                    <div class="form-group">
                        <label for="ruangan">Ruangan</label>
                        <input type="text" class="form-control" id="ruangan" name="ruangan">
                    </div>
                    <div class="form-group">
                        <label for="hari">Hari</label>
                        <select class="form-control selectpicker" data-style="btn btn-link" id="hari" name="hari">
                            <option>Monday</option>
                            <option>Tuesday</option>
                            <option>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="tanggalWaktu">Jam</label>
                        <input type="time" class="form-control" id="tanggalWaktu" name="tanggalWaktu">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-success">Simpan</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Tugas Kuliah</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<?= BASEURL; ?>/dashboard/createAction" method="post">
                    <input class="form-control" type="hidden" id="idTelegram" value="<?= $_SESSION['idtele'] ?>" name="idTelegram" readonly>
                    <div class="form-group">
                        <label for="mataKuliah">Mata Kuliah</label>

                        <select class="form-control selectpicker"data-placeholder="Pilih Mata Kuliah" data-style="btn btn-link" id="mataKuliah" name="mataKuliah">
                            <?php foreach ($data['JadwalKuliah'] as $matkul) : ?>
                                <option value="<?= $matkul['mataKuliah'];?>"><?= $matkul['mataKuliah'];?></option>
                            <?php endforeach; ?>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="jadwalWaktu">Tanggal & Waktu Deadline</label>
                        <input type="datetime-local" class="form-control" id="jadwalWaktu" name="jadwalWaktu">
                    </div>
                    <div class="form-group">
                        <label for="Desc">Deskripsi</label>
                        <input type="text" class="form-control" id="Desc" name="Desc">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-success">Simpan</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>