<div class="modal fade" id="confModal" tabindex="-1" role="dialog" arialabelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismis="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <h4 class="modal-title" id="myModalLabel">BArang</h4>
	    </div>
        <div class="modal-body">
          <table id="tblBarang2" class="table table-stripped table-compact">
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
				@foreach ($barang as $row)
				<tr>
					<td>{{ $i = (!isset($i)?$i=1:++$i) }}</td>
					<td>{{ $row->kode_barang }}</td>
					<td>{{ $row->nama_barang }}</td>
					<td>{{ $row->harga_jual }}</td>
					<td><button class="btn btn-round btn btn-success pilihBarangBtn" name="pilihBarangBtn">Pilih</button></td>
				</tr>
				@endforeach
			</tbody>
           </table>
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
           <button type="submit" class="btn-danger">Save</button>
         </div>
        </div>
    </div>
</div>
