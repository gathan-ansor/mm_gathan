@extends('templates/header')
@section('content')
<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3>Pemasok</h3>
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
					Data Pemasok
				</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
				</ul>
				<div class="clearfix"></div>
			</div>

			<div class="x_content">
				@include('templates/feedback')
				<div style="margin-bottom: 20px">
					<button type="button" id="btn-expor-xls"><i class="fa fa-file-excel-o>" style="color: #007C00"></i>Expor Xls</button>
					<button href="{{ url('cetakpdf') }}" type="button" id="btn-expor-pdf"><i class="fa fa-file-pdf-o>"></i>Expor PDF</button>
				</div>
				<table class="table table-hover" id="dt-pemasok">
					<thead>
						<tr>
							<th>No.</th>
							<th>Kode</th>
							<th>Nama Pemasok</th>
							<th>Alamat</th>
							<th>Kota</th>
							<th>No. Telp</th>
							<th>AKsi</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($result as $row)
							<tr>
								<td>{{ !empty($i) ? ++$i : ($i = 1) }}</td>
								<td>{{ $row->kode_pemasok }}</td>
								<td>{{ $row->nama_pemasok }}</td>
								<td>{{ $row->alamat }}</td>
								<td>{{ $row->kota }}</td>
								<td>{{ $row->no_telp }}</td>
								<td>
									<a data-toggle="modal" data-target="#formModal" data-mode="edit" data-id="{{ $row->kode_pemasok }}" data-nama="{{ $row->nama_pemasok }}" data-alamat="{{ $row->alamat }}" data-kota="{{ $row->kota }}" data-telp="{{ $row->no_telp }}">
										<span class="fa fa-edit" style="color: blue"></span>
									</a> &nbsp;
									<a href="#delete" data-toggle="modal" data-target="#confModal" data-id="{{ $row->kode_pemasok }}" data-nama="{{ $row->nama_pemasok }}">
										<span class="fa fa-trash" style="color: red"></span>
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
@include('pemasok/form')
@push('script')
<script>
	$(function(){
		$('#dt-pemasok').DataTable();

		$('#btn-expor-xls').on('click', function(e){
			window.location = '{{ url("pemasok/export/xls") }}';
		})

		$('#btn-expor-pdf').on('click', function(e){
			window.location = '{{ url("cetakpdf") }}';
		})
		$('#formModal').on('show.bs.modal', function(event){
			var button = $(event.relatedTarget);
			var id = button.data('id');
			var nama = button.data('nama');
			var telp = button.data('telp');
			var alamat = button.data('alamat');
			var kota = button.data('kota');
			var modal = $(this);
			var mode = button.data('mode');
			if (mode == 'edit') {
				modal.find('.modal-title').text('Edit Data Outlet')
				modal.find('.modal-body #inputKode').val(id);
				modal.find('.modal-body #inputNama').val(nama);
				modal.find('.modal-body #inputTelp').val(telp);
				modal.find('.modal-body #inputAlamat').val(alamat);
				modal.find('.modal-body #inputKota').val(kota);
				modal.find('.modal-body #method').html('{{ method_field("patch") }}');
			} else {
				modal.find('.modal-title').text('Tambah Data Outlet')
				modal.find('.modal-body #inputKode').val();
				modal.find('.modal-body #inputNama').val('');
				modal.find('.modal-body #inputTelp').val('');
				modal.find('.modal-body #inputAlamat').val('');
				modal.find('.modal-body #inputKota').val('');
				modal.find('.modal-body #method').html('');
			}
			$('#confModal').on('show.bs.modal', function(event){
      			var button = $(event.relatedTarget);
      			var id = button.data('id');
      			var nama = button.data('nama');
      			var modal = $(this);
      			modal.find('.modal-body #idHapus').val(id);
      			modal.find('.modal-body #dataHapus').text(nama);
    		});
		});
	});
</script>
@endpush