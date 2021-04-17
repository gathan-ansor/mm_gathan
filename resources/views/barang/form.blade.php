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
              <label for="inputKode" class="col-sm-2 control-label"> Kode </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputKode" placeholder="Masukkan Kode" name="kode_barang">
              </div>
            </div>

            <div class="form-group">
              <label for="inputProdukId" class="col-sm-2 control-label"> Id Produk </label>

              <div class="sol-sm-10">
                <textarea class="form-control" id="inputProdukId" placeholder="Masukkan ID" name="produk_id"></textarea>
              </div>
            </div>

            <div class="form-group">
              <label for="inputProdukId" class="col-sm-2 control-label"> Nama Barang </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputNamaBarang" placeholder="Masukkan Nama Barang" name="nama_barang">
              </div>
            </div>

            <div class="form-group">
              <label for="inputUsername" class="col-sm-2 control-label"> Satuan </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputSatuan" placeholder="Masukkan Jenis Satuan" name="satuan">
              </div>
            </div>
            
            <div class="form-group">
              <label for="inputUsername" class="col-sm-2 control-label"> Harga Jual </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputHargaBarang" placeholder="Masukkan Harga Jual" name="harga_jual">
              </div>
            </div>
            
            <div class="form-group">
              <label for="inputsPassword" class="col-sm-2 control-label"> STOK </label>

              <div class="sol-sm-10">
                <input type="text" class="form-control" id="inputStok" placeholder="Masukkan Jumlah STOK" name="stok">
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
            <form action="{{ url('barang') }}" method="post">
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