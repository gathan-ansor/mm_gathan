@extends('templates/header')

@section('content')
<!-- page content -->
<section style="margin-bottom:50px;">
	<h3>Penarikan Barang Kadaluarsa</h3>
</section>
@include('templates/feedback')
<div class="row">
    <div class="col-md-12 col-sm-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>
                    <!-- Tombol trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#formTarik">
                        <i class="fa fa-plus"></i>
                    </button>
                    Penarikan
                </h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                @include('templates/feedback')
            <table id="dt-databarang" class="table" style="margin-top:25px">
            <thead>
            <tr>
                <th>No</th>
                <th>Kode</th>
                <th>Nama Barang</th>
                <th>Tanggal Expire</th>
                <th>QTY</th>
                <th>Ditarik?</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($result as $row)
            <tr>
                <th>{{ !empty($i) ? ++$i : $i = 1 }}</th>
                <td>{{ $row->kode_tarik }}</td>
                <td>{{ $row->nama_barang }}</td>
                <td>{{ $row->tanggal }}</td>
                <td>{{ $row->qty }}</td>
                <td>{{ $row->ditarik }}</td>
                <td>
                    <a href="#" type="button" class="btn btn-warning" data-toggle="modal" data-target="#formTarik"
                data-mode="edit"
                data-kode="{{ $row->kode_tarik }}"
                data-namabar="{{ $row->nama_barang }}"
                data-tanggal="{{ $row->tanggal }}"
                data-qty="{{ $row->qty }}"
                data-dudut="{{ $row->ditarik }}"
                ><i class="fa fa-edit"></i></a>

                    <a href="#" type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal"
                data-id="{{ $row->kode_tarik }}"
                data-namabar="{{ $row->nama_barang }}"
                ><i class="fa fa-trash"></i></a>
                </td>
            </tr>
            @endforeach
            </tbody>
            </table>
            </div>
        </div>
    </div>
</div>

<!-- /page content -->
@endsection
@include('tarik/form')
@push('script')
<script>
$(function(){
    $('#dt-databarang').DataTable();
    $('#formTarik').on('show.bs.modal', function(event){

        var button = $(event.relatedTarget);
        var id = button.data('kode');
        var nama = button.data('namabar');
        var tanggal = button.data('tanggal');
		var qty = button.data('qty');
		var dudut = button.data('dudut');
        var modal = $(this);
        var mode = button.data('mode');
        if(mode == 'edit'){
            modal.find('.modal-title').text('D-U-D-U-T | Edit');
			modal.find('.modal-body #inputkode').val(id);
			modal.find('.modal-body #namabar').val(nama);
            modal.find('.modal-body #tanggal').val(tanggal);
            modal.find('.modal-body #qty').val(qty);
            modal.find('.modal-body #dudut').val(dudut);
            modal.find('.modal-body #method').html('{{ method_field("patch") }}');
        }else{
            modal.find('.modal-title').text('D-U-D-U-T | Tambah');
            modal.find('.modal-body #inputkode').val('');
			modal.find('.modal-body #namabar').val('');
            modal.find('.modal-body #tanggal').val('');
            modal.find('.modal-body #qty').val('');
            modal.find('.modal-body #dudut').val('');
            modal.find('.modal-body #method').html("");
        }
    });

    $('#deleteModal').on('show.bs.modal', function(event){

        var button = $(event.relatedTarget);
        var id = button.data('id');
        var namabar = button.data('namabar');
        var modal = $(this);
        modal.find('.modal-body #idHapus').val(id);
        modal.find('.modal-body #dataHapus').text(namabar);
    });
});
</script>
@endpush
