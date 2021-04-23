<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Pemasok</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{ url('pemasok') }}" class="form-horizontal" method="POST">
        {{ csrf_field() }}
        <div id="method"></div>
        <div class="form-group row">
          <label for="inputKode" class="col-sm-2 col-form-label">Kode Pemasok</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputKode" name="kode_pemasok" value="{{ $kode_pemasok }}" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputAlamat" class="col-sm-2 col-form-label">Alamat</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputAlamat" name="alamat" placeholder="Input Alamat Lengkap">
          </div>
        </div>
        <div class="form-group row">
          <label for="inputKota" class="col-sm-2 col-form-label">Kota</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputKota" name="kota" placeholder="Input asal kota">
          </div>
        </div>
        <div class="form-group row">
          <label for="inputTelp" class="col-sm-2 col-form-label">Nomor Telepon</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTelp" name="no_telp" placeholder="Input Nomor Telepon">
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Save</button>
      </div>
    </form>
    </div>
  </div>
</div>

<!-- Modal Delete-->
<!-- Modal -->
<div class="modal fade" id="confModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalLabel">Hapus Data Pemasok</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form>
      <div class="modal-body">
        {{ csrf_field() }}
        {{ method_field('delete') }}
        <input type="hidden" name="id_hapus" id="idHapus">
        Apakah anda yakin ingin menghapus <b id="dataHapus"></b> ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
        <button type="submit" class="btn btn-success">Yes</button>
      </div>
      </form>
    </div>
  </div>
</div>