@extends('templates/header')

@section('content')

<div class="">
  <div class="page-title">
    <div class="title_left">
      <h3>Barang</h3>
    </div>
    <div class="title_right"></div>
  </div>
</div>

<div class="clearfix"></div>

<div class="row">
  <div class="col-md-12 col-sm-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>
          <!-- Tombol trigger modal -->
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#formModal">
            <i class="fa fa-plus"></i>
          </button>
          Data Barang
        </h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
        </ul>
        <div class="clearfix"></div>
      </div>

      <div class="x_content">
        @include('templates/feedback')
        <table id="dt-entah" class="table table-hover" style="margin-top:25px">
          <thead>
            <tr>
              <th>NO</th>
              <th>ID</th>
              <th>Kode Barang</th>
              <th>ID Produk</th>
              <th>Nama Barang</th>
              <th>Satuan</th>
              <th>Harga Jual</th>
              <th>Stok</th>
              <th>AKsi</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($result as $row)
              <tr>
                  <td>{{ $i = (!isset($i)?$i=1:++$i) }}</td>
                  <td>{{ $row->id }}</td>
                  <td>{{ $row->kode_barang }}</td>
                  <td>{{ $row->produk_id }}</td>
                  <td>{{ $row->nama_barang }}</td>
                  <td>{{ $row->satuan }}</td>
                  <td>{{ $row->harga_jual }}</td>
                  <td>{{ $row->stok }}</td>
                <td>
                  <a data-toggle="modal" data-target="#formModal" data-mode="edit" 
                  data-id="{{ $row->id }}"
                  data-kode="{{ $row->kode_barang }}"
                  data-proid="{{ $row->produk_id }}"
                  data-nama="{{ $row->nama_barang }}"
                  data-satuan="{{ $row->satuan }}"
                  data-harga="{{ $row->harga_jual }}"
                  data-stok="{{ $row->stok }}">
                  <span class="fa fa-edit" style="color:blue"></span>
                  </a>&nbsp;
                  <a href="#edit" data-toggle="modal" data-target="#confModal" 
                  data-nik="{{ $row->id }}"
                  data-nama="{{ $row->kode_barang }}">
                  <span class="fa fa-trash" style="color:red"></span>
                  </a>&nbsp;
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>


@endsection
@include('barang/form')
@push('script')
  <script>
  $(function(){
    $('#dt-entah').DataTable();
    $('#formModal').on('show.bs.modal', function(event){
      var button = $(event.relatedTarget);
      var id = button.data('id');
      var kode = button.data('kode_barang');
      var proid = button.data('produk_id');
      var nama = button.data('nama_barang');
      var satuan = button.data('satuan');
      var harga = button.data('harga_jual');
      var stok = button.data('stok');
      var modal = $(this);
      var mode = button.data('mode');
      if (mode == 'edit'){

        modal.find('.modal-title').text('Edit Data Barang');
        modal.find('.modal-body #inputKode').val(kode);
        modal.find('.modal-body #inputProdukId').val(proid);
        modal.find('.modal-body #inputNamaBarang').val(nama);
        modal.find('.modal-body #inputSatuan').val(satuan);
        modal.find('.modal-body #inputHargaBarang').val(harga);
        modal.find('.modal-body #inputStok').val(stok);
        modal.find('.modal-body #method').html('{{ method_field("put") }}<input type="text" name="id" value="'+id+'">');
      }else{
          modal.find('.modal-title').text('Tambah Data Barang');
          modal.find('.modal-body #inputKode').val('');
          modal.find('.modal-body #inputProdukId').val('');
          modal.find('.modal-body #inputNamaBarang').val('');
          modal.find('.modal-body #inputSatuan').val('');
          modal.find('.modal-body #inputHargaBarang').val('');
          modal.find('.modal-body #inputStok').val('');
          modal.find('.modal-body #method').html("");
      }
    });

    $('#confModal').on('show.bs.modal', function(event){
      var button = $(event.relatedTarget);
      var id = button.data('id');
      var kode = button.data('kode');
      var modal = $(this);
      modal.find('.modal-body #IdHapus').val(id);
      modal.find('.modal-body #dataHapus').text(kode);
    });
  })
</script>
@endpush

      