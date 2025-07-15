	<?php include 'header.php'; ?>
	
	<div class="section">
		<div class="container">
			<h3 class="text-center">Prestasi</h3>
			
			<?php
				$prestasi = mysqli_query($conn, "SELECT * FROM prestasi ORDER BY id DESC");
				if(mysqli_num_rows($prestasi) > 0){
					while($j = mysqli_fetch_array($prestasi)){
			?>

				<div class="col-4">
					<a href="detail-prestasi.php?id=<?= $j['id'] ?>" class="thumbnail-link">
					<div class="thumbnail-box">
						<div class="thumbail-img" style="background-image: url('uploads/prestasi/<?= $j['gambar'] ?>');">
						</div>

						<div class="thumbnail-text">
							<?= $j['nama'] ?>
						</div>

					</div>
					</a>
				</div>

			<?php }}else{ ?>

				Tidak ada data

			<?php } ?>
			
		</div>
	</div>

	<?php include 'footer.php'; ?>