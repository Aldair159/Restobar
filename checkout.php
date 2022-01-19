<?php session_start();
include "header.php";
?>

<div style="height: 150px;"></div>
<div style="width: 80%; margin: 0 auto;">
		<div style="width: 50%; margin: 0 auto;">
		
<?php include  "connect.php"; ?>

	<form action="order.php" method="post">

		<table align="center" border="1" cellspacing="14" cellpadding="12" style="width: 100%">
          <tr>
			<th> <h3 align="center" style="font-size: 1.3em;">Complete los detalles para entregar</h3> </th>
		<br>
            </tr>
			    <tr align="center">

			    	<td style="color: red">  Ingrese su nombre:  <br>
			        <input type="text" name="nm" placeholder="Nombre" style="width: 100%; padding: 10px; color: orange; background-color: black" required="" pattern="[a-z,A-Z]*"></td>
			    		
			    </tr>

			    <tr align="center">
			    	<td style="color: red">   Ingrese su número de telefono: <br>
			        <input type="no" name="mo" placeholder="Telefono" style="width: 100%; padding: 10px; color: orange; background-color: black" required="" pattern="\d{9}"></td>
			    </tr>

			    <tr align="center">
			    	<td style="color: red">   Ingrese Correo <br>
			        <input type="Email" name="em" placeholder="Correo" style="width: 100%; padding: 10px; color: orange; background-color: black"></td>
			    </tr>

                <tr align="center">
                	<td style="color: red"> Ingrese Mensaje <br>
                 <input type="text" name="ad" placeholder="Mensaje" style="width: 100%; padding: 50px; color: orange; background-color: black">
                </tr>	

                <tr align="center">
                	<td colspan="4" > <input type="submit" name="s" value="Confirmar Orden" style="height: 50px; background-color:lightgreen; color: black; padding: 10px; width: 30%;"> </td>
                	
                </tr>

                		    </table>	
			</form>
		           <br> <br>



	</div>
</div>


<?php include "footer.php"; ?>