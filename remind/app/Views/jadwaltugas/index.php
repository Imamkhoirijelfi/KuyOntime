
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
                        <a class="navbar-brand" href="#"> Daftar Tugas </a>
                    </div>

                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12">
                            <?php flasher::flash();?>
                        </div>

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-icon" data-background-color="rose">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title">Daftar Tugas Kuliah</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th><b>Matakuliah</b></th>
                                                <th><b>Tanggal&Waktu</b></th>
                                                <th><b>Deskripsi Tugas</b></th>
                                                <th class="td-actions text-left"><b>Aksi</b></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ( $data['JadwalTugas'] as $tugas) : ?>
                                            <tr>

                                                <td><?= $tugas['mataKuliah'];?></td>
                                                <td><?= $tugas['jadwalWaktu'];?></td>
                                                <td ><?= $tugas['Desc'];?></td>
                                                <td class="td-actions text-left">

                                                    <button type="button" rel="tooltip" class="btn btn-success " data-original-title="" title="" data-toggle="modal"
                                                            data-target="#exampleModal1-<?=$tugas['idTugas']?>" data-idTugas="<?= $tugas['idTugas'];?>">
                                                        <i class="material-icons">edit</i> Ubah
                                                    </button>
                                                    <a  href="<?= BASEURL; ?>/jadwaltugas/deleteAction/<?= $tugas['idTugas'];?>" type="button" rel="tooltip" class="btn btn-success" data-original-title="" title="" onclick="return confirm('Selamat, Anda Telah Menyelesaikan Tugas Anda')">
                                                        <i class="material-icons">done_outline</i> Selesai
                                                    </a>

                                                    <div class="modal fade" id="exampleModal1-<?=$tugas['idTugas']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                                         aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLabel">Ubah Tugas Kuliah</h5>
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
                                                                            <input type="datetime-local" class="form-control" id="jadwalWaktu" name="jadwalWaktu" value="<?= $tugas['jadwalWaktu']  ?>"  name="idJenis">
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