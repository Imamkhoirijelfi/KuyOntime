
        <div class="main-panel ps-container ps-theme-default" data-ps-id="bb75fbec-fcca-e165-f84a-38abe74c7622">
            <nav class="navbar navbar-transparent navbar-absolute">

                <div class="container-fluid">
                    <div class="navbar-minimize">
                        <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                            <i class="material-icons visible-on-sidebar-regular">more_vert</i>
                            <i class="material-icons visible-on-sidebar-mini">view_list</i>
                        </button>
                    </div>
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"> Jadwal Kuliah</a>
                    </div>


                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-xs-12">
                                <?php flasher::flash();?>
                            </div>
                            <div class="card">
                                <div class="card-header card-header-icon" data-background-color="rose">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title">Daftar Jadwal Kuliah</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>

                                                <th><b>Matakuliah</b></th>
                                                <th><b>Dosen</b></th>
                                                <th><b>Ruangan</b></th>
                                                <th><b>Hari</b></th>
                                                <th class="text-left"><b>Jam</b></th>
                                                <th class="text-right"><b>Actions</b></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ( $data['JadwalKuliah'] as $jadwal) : ?>
                                            <tr >

                                                <td ><?= $jadwal['mataKuliah'];?></td>
                                                <td><?= $jadwal['dosen'];?></td>
                                                <td><?= $jadwal['ruangan'];?></td>
                                                <td><?= $jadwal['hari'];?></td>
                                                <td class="td-actions text-left"><?= $jadwal['tanggalWaktu'];?></td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" class="btn btn-success " data-original-title="" title="" data-toggle="modal"
                                                            data-target="#exampleModal1-<?=$jadwal['kodeJadwalkuliah']?>" data-idTugas="<?= $tugas['idTugas'];?>">
                                                        <i class="material-icons">edit</i> Ubah
                                                    </button>
                                                    <a  href="<?= BASEURL; ?>/jadwalkuliah/deleteAction/<?=$jadwal['kodeJadwalkuliah']?>" type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="" onclick="return confirm('Anda Yakin Ingin Mengapus Data Ini')">
                                                        <i class="material-icons">close</i> Hapus
                                                    </a>

                                                    <div class="modal fade" id="exampleModal1-<?=$jadwal['kodeJadwalkuliah']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                                                                    <form action="<?= BASEURL; ?>/dashboard/updateAction" method="post">
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
                                                                            <label for="jadwalWaktu">Dosen</label>
                                                                            <input type="datetime-local" class="form-control" id="jadwalWaktu" name="jadwalWaktu" value="<?= $tugas['jadwalWaktu']  ?>"  name="idJenis">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="Desc">Ruangan</label>
                                                                            <input type="text" class="form-control" id="Desc" name="Desc">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="Desc">hari</label>
                                                                            <input type="text" class="form-control" id="Desc" name="Desc">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="Desc">Jam</label>
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
                                                </td>
                                            <tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
</div>
</body>
