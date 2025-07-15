	<?php include 'header.php'; ?>
	
	<div class="section">
		<div class="container">

			<?php
				$prestasi 	= mysqli_query($conn, "SELECT * FROM prestasi WHERE id = '".$_GET['id']."' ");

				if(mysqli_num_rows($prestasi) == 0){
					echo "<script>window.location='index.php'</script>";
				}

				$p 			= mysqli_fetch_object($prestasi);
			?>

			<h3 class="text-center"><?= $p->nama ?></h3>
			<img src="uploads/prestasi/<?= $p->gambar ?>" width="100%" class="image">
			<?= $p->keterangan ?>
		</div>
	</div>

	<?php include 'footer.php'; ?>