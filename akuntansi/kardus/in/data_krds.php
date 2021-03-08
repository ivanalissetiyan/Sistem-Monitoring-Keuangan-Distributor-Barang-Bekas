<div class="alert alert-success alert-dismissible">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<h5>
		<i class="icon fas fa-info"></i> Total Pemasukan Kardus</h5>
	<?php
    $sql = $koneksi->query("SELECT SUM(masuk) as tot_masuk  from tb_kardus where jenis='Masuk'");
    while ($data= $sql->fetch_assoc()) {
  ?>
	<h2>
		<?php echo rupiah($data['tot_masuk']); }?>
	</h2>

</div>

<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Keuangan Pemasukan Kardus</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<div>
				<a href="?page=i_add_krds" class="btn btn-primary">
					<i class="fa fa-edit"></i> Tambah Data</a>
			</div>
			<br>
			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Uraian barang</th>
						<th>Tempat barang</th>
						<th>Tanggal</th>
						<th>Jumlah</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>

					<?php
              $no = 1;
              $sql = $koneksi->query("select * from tb_kardus where jenis='Masuk' order by uri_brg desc");
              while ($data= $sql->fetch_assoc()) {
            ?>

					<tr>
						<td>
							<?php echo $no++; ?>
						</td>
						<td>
							<?php echo $data['uri_brg']; ?>
						</td>
						<td>
							<?php echo $data['tmpt_brg']; ?>
						</td>
						<td>
							<?php  $tgl = $data['tgl_brg']; echo date("d/M/Y", strtotime($tgl))?>
						</td>
						
						<td align="right">
							<?php echo rupiah($data['masuk']); ?>
						</td>
						<td>
							<a href="?page=i_edit_krds&kode=<?php echo $data['id_krds']; ?>" title="Ubah" class="btn btn-success btn-sm">
								<i class="fa fa-edit"></i>
							</a>
							<a href="?page=i_del_krds&kode=<?php echo $data['id_krds']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')"
							 title="Hapus" class="btn btn-danger btn-sm">
								<i class="fa fa-trash"></i>
								</>
						</td>
					</tr>

					<?php
              }
            ?>
				</tbody>
				</tfoot>
			</table>
		</div>
	</div>
	<!-- /.card-body -->