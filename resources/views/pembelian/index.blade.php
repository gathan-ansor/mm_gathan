@extends('templates/header')

@section('content')
<div class=""></div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_title">
		<h2>Pembelian Barang</h2>
		<ul class="nav navbar-right panel_toolbox">
			<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"></a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">Settings 1</a></li>
				<li><a href="#">Settings 2</a></li>
			</ul>
			</li>
			<li><a class="close-link"><i class="fa fa-close"></i></a></li>
		</ul>
		<div class="clearfix"></div>
		</div>
		<div class="x_content">

<form class="form-horizontal form-label-left input_mask">
		<div class="col-md-6 col-sm-6 col-xs-12 form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">Kode Pembelian </label>
			<div class="col-md-9 col-sm-9 col-xs-12">
            	<input class="date-picker form-control col-md-7 col-xs-12" required="required" type="text" value="{{ $kode }}" readonly>
        	</div>
		</div>

		<div class="col-md-6 col-sm-6 col-xs-12 form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Pembelian </label>
			<div class="col-md-9 col-sm-9 col-xs-12">
            	<input class="date-picker form-control col-md-7 col-xs-12" required="required" type="date" value="{{ date('Y-m-d') }}">
        	</div>
		</div>

		<div class="col-md-6 col-sm-6 col-xs-12 form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">&nbsp; </label>
			<div class="col-md-9 col-sm-9 col-xs-12">
            	<button type="button" class="btn btn-primary" id="tambahBarangBtn" data-toggle="modal" data-target="#confModal"> Tambah Barang </button>
        	</div>
		</div>

		<div class="col-md-6 col-sm-6 col-xs-12 form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">Distributor </label>
			<div class="col-md-9 col-sm-9 col-xs-12">
            	<select class="form-control col-md-4 col-xs-12" required="required">
            		@foreach($pemasok as $p)
            			<option value="{{ $p->id }}">{{ $p->nama_pemasok }}</option>
            		@endforeach
            	</select>
        	</div>
		</div>
	</form>

		<div>
			<h3>Barang</h3>
			<table id="#tblTransaksi" class="table table-striped table-bordered bulk_action">
				<thead>
					<tr>
						<th>Kode Barang</th>
						<th>Nama Barang</th>
						<th>Harga</th>
						<th>Qty</th>
						<th>Total</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="6" style="text-align: center;font-style: italic;"> Belum Ada Data</td>
					</tr>
				</tbody>
			</table>
			<!-- Bagian Total, Submit, data Hidden -->
			<div class="row" style="text-align: right;margin-bottom: 10px">
				<div class="col-md-12">
					<div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-6" style="text-align: right;">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Total harga </label>
						<div class="col-md-3 col-sm-3 col-xs-12" style="text-align: right;margin-right: 0;padding-right: 0">
							<input class="form-control col-md-6 col-xs-12" required="required" type="text">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-6 col-xs-12" style="text-align: right;margin-right: 0;padding-right: 0">
					<div class="col-md-12 col-sm-9 col-xs-12">
						<button type="button" class="btn btn-succes"> Simpan Transaksi </button>
					</div>
				</div>
			</div>
		</div>
	</div>	
	</div>
</div>
</div>

@endsection
@include('pembelian/form')
@push('script')
<script>
var totalBarang(a){
	let d = $(a).closest('tr');
	let kodeBarang = d.find('td:eq(1)').text();
	let namaBarang = d.find('td:eq(2)').text();
	let hargaBarang = d.find('td:eq(3)').text();
	let data = '';
	let tbody = $('#tblTransaksi tbody tr td').text();
	data += '<tr>';
	data += '<td>'+kodeBarang+'</td>';
	data += '<td>'+namaBarang+'</td>';
	data += '<td>'+hargaBarang+'</td>';
	data += '<td><input type="number" value="1" min="1" class="qty"></td>';
	data += '<td><span class="subTotal">'+hargaBarang+'</span></td>';
	data += '<td><button type="button" class="btnRemoveBarang"><span class="fa fa-remove"></span></button></td>';
	data += '</tr>';
	if(tbody == 'Belum Ada Data') $('#tblTransaksi tbody tr').remove();

	$('#tblTransaksi tbody').append(data);
	totalHarga += parseFloat(hargaBarang);
	$('#totalHarga').val(totalHarga);
	$('#tblBarangModal').modal('hide');
}

function calcSubTotal(a){
	let qty = parseInt($(a).closest('tr').find('.qty').val());
	let hargaBarang = parseFloat($(a).closest('tr').find('.td:eq(2)').text());
	let subTotalAwal = parseFloat($(a).closest('tr').find('.subTotal').text());
	let subTotal = qty * hargaBarang;
	totalHarga += subTotal - subTotalAwal;
	$(a).closest('tr').find('.subTotal').text(subTotal);
	$('#totalHarga').val(totalHarga);
}

$(function(){
	$('#tblBarang2').DataTable();

	//pemilihan barang
	$('confModal').on('click', '.pilihBarangBtn' function(){
		tambahBarang(this);
	});

	//ganti qty event
	$('#formTransaksi').on('change','.qty',function(){
		calcSubTotal(this);
	});

	//remove barang
	$('#formTransaksi').on('click','btnRemoveBarang',function(){
		let subTotalAwal = parseFloat($(this).closest('tr').find('.subTotal').text());
		totalHarga -= subTotalAwal;

		$currentRow = $(this).closest('tr').remove();
		$('#totalHarga').val(totalHarga);
	});

});
</script>

@endpush