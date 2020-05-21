<?php include "header.php"; ?>

<div class="container">

<?php
$view = isset($_GET['view']) ? $_GET['view'] : null;

switch($view){
	default:
	?>
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Data Barang</h3>
			</div>
			<div class="panel-body">
				<a class="btn btn-primary" style="margin-bottom: 10px" href="data_barang.php?view=tambah">Tambah Data</a>
				<table class="table table-bordered table-striped">
					<tr>
						<th>No</th>
						<th>Berat Kentang</th>
						<th>Asal Petani Kentang</th>
						<th>Tanggal Panen</th>
						<th>Expired Date</th>
						<th>Nomor Barcode</th>
						<th>Jalur Distribusi</th>
						<th>QR</th>
					</tr>
					<?php
					$sql=mysqli_query($konek, "SELECT * FROM mahasiswa ORDER BY id ASC");
					$no=1;
					while($d=mysqli_fetch_array($sql)){
						echo "<tr>
							<td width='40px' align='center'>$no</td>
							<td>$d[nama_mhs] gram</td>
							<td>$d[prodi]</td>
							<td>$d[tgl_lulus]</td>
							<td>$d[npm]</td>
							<td>$d[no_ijazah]</td>
							<td>$d[ipk]</td>
							<td width='180px' align='center'>
								<a class='btn btn-danger btn-sm' href='buatQRCode.php?npm=$d[npm]&nomor=$d[no_ijazah]'>Buat Kode QR</a>
								<a class='btn btn-success btn-sm' href='cetak_ijazah.php?id=$d[id]' target='_blank'>Cetak</a>
							</td>
						</tr>";
						$no++;
					}
					?>
				</table>
			</div>
		</div>
	</div>

<?php
	break;
	case "tambah":

?>
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Tambah Data KENTANG</h3>
			</div>
			<div class="panel-body">
				
				<form method="post" action="aksi_mahasiswa.php?act=insert">
					<table class="table">
						<tr>
							<td>Berat Kentang</td>
							<td><div class="col-md-6"><input class="form-control" type="text" name="nama" required /></div></td>
						</tr>
						<tr>
							<td>Asal Petani Kentang</td>
							<td>
							<div class="col-md-6"><input class="form-control" type="text" name="prodi" required /></div>
							</td>
						</tr>
						<tr>
							<td>Tanggal Panen</td>
							<td><div class="col-md-4"><input class="form-control" type="date" name="tgllulus" required /></div></td>
						</tr>
						<tr>
							<td width="160">Expired</td>
							<td>
								<div class="col-md-4"><input class="form-control" type="date" name="npm" required /></div>
							</td>
						</tr>
						<tr>
							<td>Nomor Barcode</td>
							<td><div class="col-md-6"><input class="form-control" type="text" name="noijazah" required /></div></td>
						</tr>
						<tr>
							<td>Distribusi</td>
							<td><div class="col-md-6"><input class="form-control" type="text"  name="ipk" required /></div></td>
						</tr>
						<tr>
							<td></td>
							<td>
							<div class="col-md-6">
								<input class="btn btn-primary" type="submit" value="Simpan" />
								<a class="btn btn-danger" href="data_barang.php">Kembali</a>
								</div>
							</td>
						</tr>
					</table>
				</form>

			</div>
		</div>
	</div>

<?php
	break;
}
?>

</div>

<?php include "footer.php"; ?>