<div class="modal" tabindex="-1" role="dialog" id="formTarik">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">D-U-D-U-T/h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{ url('tarik') }}" method="post">
            {{ csrf_field() }}
            <div id="method"></div>
          <div class="form-group">
            
            <label for="exampleInputEmail1">Kode</label>
            <input id="inputkode" name="kode_tarik" type="text" class="form-control" value="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nama Barang</label>
            <input id="namabar" name="nama_barang" type="text" class="form-control">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">tanggal</label>
            <input id="tanggal" name="tanggal" class="date-picker form-control col-md-7 col-xs-12" required="required" type="date" value="{{ date('Y-m-d') }}">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Jumlah</label>
            <input id="qty" name="qty" type="text" class="form-control">
          </div>
          <div class="form-group">
            <label for="inputJK" class="col-sm-2 control-label"> Tipe </label>
            <div class="sol-sm-10">
                <select name="jk" id="inputJK" class="select-chosen form-control" required>
                  <option value="">-- Tipe --</option>
                  <option value="1">Ditarik</option>
                  <option value="0">Masih disimpan</option>
                </select>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-success">Save</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- delete modal -->
<div class="modal" tabindex="-1" role="dialog" id="deleteModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">D-U-D-U-T | Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{ url('tarik') }}" method="post">
          {{ csrf_field() }}
          {{ method_field('delete') }}
          <input type="hidden" name="id_hapus" id="idHapus">
          Apakah anda ingin menghapus data <b id="dataHapus"></b> ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-danger">Delete</button>
      </div>
      </form>
    </div>
  </div>
</div>