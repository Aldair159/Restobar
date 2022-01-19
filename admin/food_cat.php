<?php include "header.php"; ?>
<link rel="stylesheet" type="text/css" href="style.css">
<div class="content">
	<form action="" method="post">
	<table border=0 align="center" bgcolor="white" width="40%" style="box-shadow: 1px 3px 15px 2px;" cellpadding="10" cellspacing="15" >
	<tr align="center">
			<td class="title">Subir subcategorias de menu</td>
    </tr>

   <tr align="center">   
   	    <td> 
   	    	<select class="text" name="cat">
   	    		<option value="kathiyawadi">Frituras</option>
   	    		<option value="rajsthani">Bebidas</option>
   	    		<option value="rise">Cocteles</option>
   	    		<option value="tava">Mixtos</option>
   	    	</select>
   	    </td>
   	</tr>  
	<tr align="center">
			<td><input type="text" name="scat" value="" placeholder="" class="text" required></td>
	</tr>
	<tr align="center">
			<td><input type="submit" name="s" value="   Cargar menu   " class="btn"></td>
	</tr>
</table>
</form>
<?php
if(isset($_POST['s']))
{
	include "connect.php";
	$cat = $_POST['cat'];
	$scat = $_POST['scat'];
	mysqli_query($con, "insert into food_cat(catnm,sub_cat) values('$cat','$scat')") or die(mysqli_error($con));
	echo "<script>alert('Cargado correctamente');</script>";
	echo "<div style='color:red; font-size:1.5em; font-family:arial; text-align:center;'>Categoria cargada</div>";
}


?>
</div>
<?php include "footer.php"; ?>