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
						@foreach ($pemasok as $row)
							<tr>
								<td>{{ !empty($i) ? ++$i : ($i = 1) }}</td>
								<td>{{ $row->kode_pemasok }}</td>
								<td>{{ $row->nama_pemasok }}</td>
								<td>{{ $row->alamat }}</td>
								<td>{{ $row->kota }}</td>
								<td>{{ $row->no_telp }}</td>
							</tr>
						@endforeach
					</tbody>
				</table>