
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo BASEURL; ?>/assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="<?php echo BASEURL; ?>/assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>KUY|ONTIME</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="<?php echo BASEURL; ?>/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="<?php echo BASEURL; ?>/assets/css/material-dashboard.css?" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<?php echo BASEURL; ?>/assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="rose" data-background-color="black" data-image="../assets/img/sebastian-mantel-105235-unsplash.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="http://www.creative-tim.com" class="simple-text logo-mini">
                KO
            </a>
            <a href="http://www.creative-tim.com" class="simple-text logo-normal">
                KUY|ontime
            </a>
        </div>
        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="<?php echo BASEURL; ?>/assets/img/faces/card-profile2-square.jpg" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                            <span>
                                <?php echo $_SESSION['nama'] ?>
                                <b class="caret"></b>
                            </span>
                    </a>
                    <div class="clearfix"></div>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini">MP</span>
                                    <span class="sidebar-normal">My Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini">EP</span>
                                    <span class="sidebar-normal">Edit Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini">S</span>
                                    <span class="sidebar-normal">Settings</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav">
                <li class="">
                    <a href="<?php echo BASEURL ?>/dashboard/index">
                        <i class="material-icons">dashboard</i>
                        <p>Dashboard</p>
                    </a>
                </li>




                <li>
                    <a href="<?php echo BASEURL ?>/jadwalkuliah/index">
                        <i class="material-icons">today</i>
                        <p>Jadwal Kuliah</p>
                    </a>
                </li>
                <li>
                    <a href="<?php echo BASEURL ?>/jadwaltugas/index">
                        <i class="material-icons">assignment</i>
                        <p>Daftar Tugas</p>
                    </a>
                </li>
                <li>
                    <a href="<?php echo BASEURL ?>/login/keluar">
                        <i class="material-icons">reply</i>
                        <p>Logout</p>
                    </a>
                </li>
               </ul>
        </div>
    </div>