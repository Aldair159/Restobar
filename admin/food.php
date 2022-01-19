<script>
function showUser(str) {
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","getscat.php?q="+str,true);
    xmlhttp.send();
  }
}
</script>
<?php include "header.php"; ?>

<link rel="stylesheet" type="text/css" href="style.css">

<div class="content">
	<form action="" method="post" enctype="multipart/form-data">
	<table border=0 align="center" bgcolor="white" width="65%" style="box-shadow: 1px 3px 15px 2px;" cellpadding="10" cellspacing="15" >
	

	<tr align="center">
			<td class="title">Subir nuevo menu</td><td><a href="view_food.php" style="color: red; text-decoration: none;">Ver todos los menus</a></td>
    </tr>
    

   <tr align="center">   
   		<td>Eligica la cateogira de menus</td>
   	    <td> 
   	    	<select class="text" name="cat" onchange="showUser(this.value)">
   	    		<option value="kathiyawadi">Frituras</option>
   	    		<option value="rajsthani">Bebidas</option>
   	    		<option value="rise">Cocteles</option>
   	    		<option value="tava">Mixtas</option>
   	    	</select>
   	    </td>

   	    <tr align="center">
   	    	<td> Eliga subcategoría</td>
   	    	<td>
   	    		<div id="txtHint">Elija su categoría principal para mostrar la subcategoría</div>
   	    	</td>
   	   </tr> 

   	   <tr align="center">
   	   	    <td> Ingrese Nombre</td>
   	   	    <td><input type="text" name="title" value="" placeholder="" class="text" required></td>
   	   </tr> 
	<tr align="center"> 
            <td> Ingrese el detalle de la comida </td>
			<td><textarea rows="4" name="detail" cols="40" class="ar" style="background-color: black; color: white; padding: 10px;"></textarea></td>
	</tr>

	<tr align="center"> 
            <td> Ingrese el precio de la comida</td>
			<td> <input type="text" name="price" class="text"> </td>
	</tr>

    <tr align="center"> 
            <td> Ingrese la imagen de la comdia </td>
			<td><input type="File" name="img"  placeholder="" class="" required></td>
	</tr>

    <tr>    
    	<td colspan=2 align="center"> <input type="submit" name="s" value="Cargar menu" class="btn"> </td>
    </tr>

</table>
</form>
<?php
if(isset($_POST['s']))
{
		$cat = $_POST['cat'];
		$scat = $_POST['scat'];
		$title = $_POST['title'];
		$det = $_POST['detail'];
		$price = $_POST['price'];
		$i = "mimg/".$_FILES['img']['name'];
		move_uploaded_file($_FILES['img']['tmp_name'], $i);
		include "connect.php";
		mysqli_query($con,"insert into menu (category,sub_cat,title,description,price,image) values('$cat','$scat','$title','$det','$price','$i')");
		echo "<div style='text-align:center; font-size:1.3em; color:red;'>Cargado con éxito</div>";
		
}
?>	
</div>
<?php include "footer.php"; ?>