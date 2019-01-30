<?php
if(!isset($_SESSION['hak_akses']) || ($_SESSION['hak_akses']) != 'Admin'){
    header('Location:' .BASEURL. '/eror');
}
?>
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>>></b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>MARSM</b>Pekanbaru</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- User Image -->
                                                <img src="<?php echo BASEURL; ?>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <!-- Message title and timestamp -->
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->

                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li><!-- start notification -->
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="<?php echo BASEURL; ?>/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs"><?= $_SESSION['namaPegawai'] ?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="<?php echo BASEURL; ?>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    <?= $_SESSION['namaPegawai'] ?> - <?= $_SESSION['hak_akses'] ?>
                                    <small><?= $_SESSION['userID'] ?></small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <form action="<?php echo BASEURL ?>/login/keluar" method="post">
                                        <button  type="submit" name="login-out" id="log-out" onclick="return confirm('Anda Yakin Ingin Keluar')" class="btn btn-default btn-flat">Log out</button>

                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<?php echo BASEURL; ?>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info" >
                    <p><?= $_SESSION['namaPegawai'] ?></p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> Online as <?= $_SESSION['hak_akses'] ?></a>
                </div>
            </div>

            <!-- search form (Optional) -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
                </div>
            </form>
            <!-- /.search form -->

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">HEADER</li>
                <!-- Optionally, you can add icons to the links -->

                <li><a href="<?php echo BASEURL; ?>/dashboard/index2"><i class="fa fa-link"></i> <span>Dashboard</span></a></li>

                <li ><a href="<?php echo BASEURL; ?>/obat/index"><i class="fa fa-link"></i> <span>Data Obat</span></a></li>
                <li ><a href="<?php echo BASEURL; ?>/jenisobat/index"><i class="fa fa-link"></i> <span>Jenis Obat</span></a></li>
                <li class="active">
                    <a href="<?php echo BASEURL; ?>/datapengguna/index"><i class="fa fa-link"></i> <span>Daftar Pengguna</span>

                </li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <b><?= $data['judul'];?> |</b>
                <small>Rumah Sakit Madani Pekanbaru</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <?php flasher::flash();?>
                </div>

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">

                        <button type="button" class="kananbawahsikit btn btn-success tombolTambahUser" data-toggle="modal" data-target="#modal-success2">
                            Tambah
                        </button>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>ID PENGGUNA</th>
                                    <th>NAMA PENGGUNA</th>
                                    <th>TUGAS</th>
                                    <th>USERNAME</th>

                                    <th>ID TELEGRAM</th>
                                    <th>ACTION</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ( $data['user'] as $user) : ?>
                                    <tr>
                                        <td><?= $user['userID'];?></td>
                                        <td><?= $user['namaPegawai'];?></td>
                                        <td><?= $user['tugasPegawai'];?></td>
                                        <td><?= $user['username'];?></td>

                                        <td><?= $user['noHp'];?></td>
                                        <td><button type="button" class="btn btn-light tampilModalUbahuser" data-toggle="modal" data-target="#modal-success3-<?= $user['userID'] ?>" data-idObat="<?= $user['userID'];?>">
                                                EDIT
                                            </button>  <a type="button" href="<?= BASEURL; ?>/datapengguna/deleteAction/<?= $user['userID'];?>"  class="btn btn-danger"onclick="return confirm('yakin Ingin Menghapus')">HAPUS</a>


                                            <div class="modal modal-success fade" id="modal-success3-<?= $user['userID'] ?>">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="formModalLabel">Ubah Data User</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="<?= BASEURL; ?>/datapengguna/updateAction" method="post">
                                                                <input type="hidden" name="userID" value="<?= $user['userID']  ?>" id="userID">
                                                                <div class="box-body">

                                                                    <div class="form-group">
                                                                        <label for="namaPegawai">NAMA LENGKAP</label>
                                                                        <input type="text" class="form-control" value="<?= $user['namaPegawai'] ?>" id="namaPegawai" placeholder="Nama Lengkap" name="namaPegawai" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="tugasPegawai">TUGAS</label>
                                                                        <select class="form-control" id="tugasPegawai" value="<?= $user['tugasPegawai']  ?> "data-placeholder="Pilih tugas" name="tugasPegawai">
                                                                            <option>Apoteker</option>w
                                                                            <option>Admin</option>
                                                                        </select>

                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="username">USERNAME</label>
                                                                        <input type="text" class="form-control"  value="<?= $user['username']  ?>" id="username" placeholder="Username" name="username" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="password">PASSWORD</label>
                                                                        <input type="password" class="form-control" value="<?= $user['password']  ?>" id="password" placeholder="Password" name="password" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="noHp">NO ID TELEGRAM</label>
                                                                        <input type="number" class="form-control" id="noHp" value="<?= $user['noHp']  ?>"placeholder="No Handphone" name="noHp">
                                                                    </div>
                                                                </div>

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Tutup</button>
                                                            <button type="submit" class="btn btn-outline">Ubah Data</button>
                                                        </div>
                                                        </form>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>


                                    </tr>
                                <?php endforeach; ?>
                                </tbody>

                                </tfoot>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            </div>


            <div class="modal modal-success fade" id="modal-success2">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="formModalLabel">Tambah Data User</h4>
                        </div>
                        <div class="modal-body">
                        <form action="<?= BASEURL; ?>/datapengguna/createAction" method="post">
                            <input type="hidden" name="userID" id="userID">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="namaPegawai">NAMA LENGKAP</label>
                                    <input type="text" class="form-control" id="namaPegawai" placeholder="Nama Lengkap" name="namaPegawai">
                                </div>
                                <div class="form-group">
                                    <label for="tugasPegawai">TUGAS</label>
                                    <select class="form-control" id="tugasPegawai" data-placeholder="Pilih tugas" name="tugasPegawai">
                                        <option>Apoteker</option>w
                                        <option>Admin</option>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label for="username">USERNAME</label>
                                    <input type="text" class="form-control" id="username" placeholder="Username" name="username">
                                </div>
                                <div class="form-group">
                                    <label for="password">PASSWORD</label>
                                    <input type="text" class="form-control" id="password" placeholder="Password" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="noHp">NO ID TELEGRAM</label>
                                    <input type="number" class="form-control" id="noHp" placeholder="No Handphone" name="noHp">
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Tutup</button>
                            <button type="submit" class="btn btn-outline">Simpan</button>
                        </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->


            </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
