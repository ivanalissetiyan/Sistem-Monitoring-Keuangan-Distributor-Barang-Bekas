<?php
  $sql = $koneksi->query("SELECT SUM(masuk) as tot_masuk  from tb_kardus where jenis='Masuk'");
  while ($data= $sql->fetch_assoc()) {
    $masuk=$data['tot_masuk'];
  }
?>

<?php
  $sql = $koneksi->query("SELECT SUM(keluar) as tot_keluar  from tb_kardus where jenis='Keluar'");
  while ($data= $sql->fetch_assoc()) {
    $keluar=$data['tot_keluar'];
  }
?>

<div class="alert alert-info alert-dismissible">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<h5>
		<i class="icon fas fa-info"></i> Saldo Keuangan Barang Kardus</h5>
	<h5>Pemasukan :
		<?php
  echo rupiah($masuk);
  ?>
	</h5>

	<h5>Pengeluaran :
		<?php
    echo rupiah($keluar);
    ?>
	</h5>
	<hr>

	<h3>Saldo Akhir :
		<?php
    $saldo= $masuk-$keluar;
    echo rupiah($saldo);
    ?>
	</h3>
</div>

<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Rekap Kas Keuangan Kardus</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Uraian</th>
						<th>Tempat Barang</th>
						<th>Tanggal</th>
						<th>Pemasukan</th>
						<th>Pengeluaran</th>
					</tr>
				</thead>
				<tbody>

					<?php
              $no = 1;
              $sql = $koneksi->query("select * from tb_kardus order by uri_brg asc");
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
						<td align="right">
							<?php echo rupiah($data['keluar']); ?>
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