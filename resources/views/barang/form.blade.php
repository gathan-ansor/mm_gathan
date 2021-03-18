<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4  class="modal-title" id="myModalLabel">Tambah Barang</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" id="formModal" action="{{ url('barang') }}" method="POST">
              {{ csrf_field() }}
            <div id="method"></div>
            <div class="form-group">
              <label for="inputKode" class="col-sm-2 control-label"> ID </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputKode" placeholder="Masukkan Kode" name="kode_barang">
              </div>
            </div>

            <div class="form-group">
              <label for="inputProdukId" class="col-sm-2 control-label"> Id Produk </label>

              <div class="sol-sm-10">
                <textarea class="form-control" id="inputProdukId" placeholder="Masukkan Kode" name="produk_id"></textarea>
              </div>
            </div>

            <div class="form-group">
              <label for="inputProdukId" class="col-sm-2 control-label"> Id Produk </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputProdukId" placeholder="Masukkan Id Produk" name="produk_id">
              </div>
            </div>

            <div class="form-group">
              <label for="inputJK" class="col-sm-2 control-label"> Jenis Kelamin </label>

              <div class="sol-sm-10">
                <select name="jk" id="inputJK" class="select-chosen form-control" required>
                  <option value="">-- Jenis Kelamin --</option>
                  <option value="L">Lelaki</option>
                  <option value="P">Perempuan</option>
                  <option value="Jokowi">Jokowi</option>
                </select>
              </div>
            </div>
            
            <div class="form-group">
              <label for="inputAgama" class="col-sm-2 control-label"> Agama </label>

              <div class="sol-sm-10">
                <select name="agama" id="inputAgama" class="select-chosen form-control" required>
                  <option value="">-- Agama --</option>
                  <option value="Jokowi">Jokowi</option>
                  <option value="Prabowo">Prabowo</option>
                  <option value="Naruto">Naruto</option>
                </select>
              </div>
            </div>
            
            <div class="form-group">
              <label for="inputUsername" class="col-sm-2 control-label"> Username </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputUsername" placeholder="Masukkan Username" name="username">
              </div>
            </div>
            
            <div class="form-group">
              <label for="inputsPassword" class="col-sm-2 control-label"> Password </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputPassword" placeholder="Masukkan Password" name="password">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            <button type="submit" class="btn btn-primary">Simpan</button>
          </div>
        </form>
            
        </div>
      </div>
    </div>

  <div class="modal fade" id="confModal" tabindex="-1" role="dialog" arialabelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismis="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Konfirmasi</h4>
          </div>
          <div class="modal-body">
            <form action="{{ url('Klas') }}" method="post">
              {{ csrf_field() }}
              {{ method_field('delete') }}
              <input type="hidden" name="id_hapus" id="idHapus">
              Apakah Data <b id="dataHapus"></b> ini akan di hapus?
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">TIDAK</button>
            <button type="submit" class="btn-danger">YA</button>
          </div>
          </form>
        </div>
      </div>
    </div>