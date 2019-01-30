<!DOCTYPE html>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo BASEURL ?>/assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="<?php echo BASEURL ?>/assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>KUY|ontime</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="<?php echo BASEURL ?>/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="<?php echo BASEURL ?>/assets/css/material-dashboard.css" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<?php echo BASEURL ?>/assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body class="off-canvas-sidebar">
<nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <?php flasher::login(); ?>
        </div>
    </div>
</nav>
<div class="wrapper wrapper-full-page">
    <div class="full-page login-page" filter-color="black" data-image="<?php echo BASEURL ?>/assets/img/josefa-ndiaz-312261-unsplash.jpg">
        <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
        <div class="content">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">

                        <form action="<?php echo BASEURL ?>/login/masuk" method="post">
                            <div class="card card-login card-hidden">



                                <p class="category text-center">
                                    <br>
                                    <br>
                                <center><h3><b>KUY</b>|ontime</h3></center>
                                <br>


                                </p>
                                <div class="card-content">

                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">face</i>
                                            </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">username</label>
                                            <input type="text" name="username" class="form-control">
                                        </div>
                                    </div>

                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">lock_outline</i>
                                            </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Password</label>
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="footer text-center">
                                    <!--                                    <button type="submit" name="login" id="login" class="btn btn-success btn-lg" ><a class="fa fa-sign-in"><b> login</b></a></button>-->
                                    <button  type="submit" name="login" id="login" class="btn btn-success ">Login</button>
                                </div>
                                <center><b>----------- OR -----------</b></center>
                                <div class="footer text-center">
                                    <!--                                    <button type="submit" name="login" id="login" class="btn btn-success btn-lg" ><a class="fa fa-sign-in"><b> login</b></a></button>-->
                                    <button  type="button" name="login" id="login" class="text-primary btn btn-rose btn-simple "data-toggle="modal"
                                             data-target="#exampleModal1">Register</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container">

                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="http://www.creative-tim.com">IKJ</a>,
                </p>
            </div>
        </footer>
    </div>
</div>

</body>
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrasi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<?= BASEURL; ?>/datapengguna/createAction" method="post">
                    <input class="form-control" type="hidden" id="idTelegram" value="<?= $_SESSION['idtele'] ?>" name="idTelegram" readonly>
                    <div class="form-group">
                        <label for="username">Nama</label>
                        <input required type="text" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input required type="text" class="form-control" id="password" name="password">
                    </div>
                    <div class="form-group">
                        <label >Konfirmasi Password</label>
                        <input required type="text" class="form-control" id="konfpassword"  >
                    </div>
                    <div class="form-group">
                        <label for="idTelegram">ID Telegram</label>
                        <input required type="number" class="form-control" id="idTelegram" name="idTelegram">
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                        <button type="submit" id="btnSubmit" class="btn btn-success">Simpan</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#konfpassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
<!--   Core JS Files   -->
<script src="<?php echo BASEURL ?>/assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL ?>/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL ?>/assets/js/material.min.js" type="text/javascript"></script>
<script src="<?php echo BASEURL ?>/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Library for adding dinamically elements -->
<script src="<?php echo BASEURL ?>/assets/js/arrive.min.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="<?php echo BASEURL ?>/assets/js/jquery.validate.min.js"></script>
<!-- Promise Library for SweetAlert2 working on IE -->
<script src="<?php echo BASEURL ?>/assets/js/es6-promise-auto.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="<?php echo BASEURL ?>/assets/js/moment.min.js"></script>
<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="<?php echo BASEURL ?>/assets/js/chartist.min.js"></script>
<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="<?php echo BASEURL ?>/assets/js/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="<?php echo BASEURL ?>/assets/js/bootstrap-notify.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="<?php echo BASEURL ?>/assets/js/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="<?php echo BASEURL ?>/assets/js/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="<?php echo BASEURL ?>/assets/js/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="<?php echo BASEURL ?>/assets/js/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="<?php echo BASEURL ?>/assets/js/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="<?php echo BASEURL ?>/assets/js/sweetalert2.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="<?php echo BASEURL ?>/assets/js/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="<?php echo BASEURL ?>/assets/js/fullcalendar.min.js"></script>
<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="<?php echo BASEURL ?>/assets/js/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="<?php echo BASEURL ?>/assets/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="<?php echo BASEURL ?>/assets/js/demo.js"></script>
<script type="text/javascript">
    $().ready(function() {
        demo.checkFullPageBackgroundImage();

        setTimeout(function() {
            // after 1000 ms we add the class animated to the login/register card
            $('.card').removeClass('card-hidden');
        }, 700)
    });
</script>

<!--</html>-->
<!--<div class="sufee-login d-flex align-content-center flex-wrap">-->
<!--        <div class="container">-->
<!--            <div class="login-content">-->
<!--                <div class="login-logo">-->
<!--                        <img class="align-content" src="--><?php //echo BASEURL; ?><!--/img/doctor.png" width="300" height="300">-->
<!--                </div>-->
<!--                --><?php //flasher::login(); ?>
<!--                <div class="login-form">-->
<!--                    <form action="--><?php //echo BASEURL ?><!--/login/masuk" method="post">-->
<!--                        <div class="form-group">-->
<!--                            <label for="username"class="fa fa-user"><b> &nbsp;username</b></label>-->
<!--                            <input type="text" name="username" id="username" class="form-control" autocomplete="off">-->
<!--                        </div>-->
<!--                        <div class="form-group">-->
<!--                            <label for="password"class="fa fa-lock"><b> &nbsp;password</b></label>-->
<!--                            <input type="password" name="password" id="password"class="form-control" autocomplete="off">-->
<!--                        </div>-->
<!---->
<!--                        <button type="submit" name="login" id="login" class="btn btn-success btn-lg" ><a class="fa fa-sign-in"><b> login</b></a></button>-->
<!---->
<!--                        -->
<!--                    </form>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
