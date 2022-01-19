<?php include "header.php"; ?>
<div class="content">
	<br><br>
	<?php include  "connect.php"; ?>
	<table border=1 cellpadding="6" cellspacing="8">
		<tr>
			 <th colspan="8">ORDENES DE CLIENTES</th>
		</tr>
		<tr>
			<th>Producto ID</th>
			<th>Usuario ID</th>
			<th>Nombre del Cliente</th>
			<th>Telefono</th>
			<th>Correo</th>
			<th>Descripcion</th>
			<th>Ver Producto</th>
			<th>Eliminar</th>
		</tr>
		<?php
		$s = mysqli_query($con,"select * from checkout");
		while($r = mysqli_fetch_array($s))
		{
		?>
		<tr>
			<td><?php echo $r['p_id']; ?></td>
			<td><?php echo $r['u_id']; ?></td>
			<td><?php echo $r['name']; ?></td>
			<td><?php echo $r['mobile']; ?></td>
			<td><?php echo $r['email']; ?></td>
			<td><?php echo $r['location']; ?></td>
			<td><a href="viewcart.php?pid=<?php echo $r['p_id']; ?>&uid=<?php echo $r['u_id']; ?>">Ver Producto</a></td>
			<td><a href="eliminarcart.php?id=<?php echo $r['id']; ?>">Eliminar</a></td>
		<?php
		}
		?>
	</table>
	 

</div>
<?php include "footer.php"; ?>