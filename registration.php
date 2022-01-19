<?php include "header.php"; ?> 
<body>
	
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1> REGISTO </h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
      <table cellpadding="10" cellspacing="12" align="left	">
     <form action="" method="POST"> 

  <tr>
  <td> Ingrese nombre: </td>
  	<td>
  <input type="text" name="uid" value="" placeholder="Usuario" required=""style="padding: 10px; width: 300%"> <br>  </td>
    </tr>
   
   <tr>	
   <td> Ingrese Contraseña: </td>
 <td> <input type="password" name="pass" value="" placeholder=" Contraseña" required="" style="padding: 10px; width: 300%"> <br> </td>
   </tr>

  <tr>  
  <td> Ingrese Correo: </td>
 <td> <input type="email" name="email" value="" placeholder="Email" required="" style="padding: 10px; width: 300%">  <br> </td>
</tr>
         
      <tr>   
<td align="center"> <input type="submit" name="sb" value="Registrar" style="color:red; background: lightgreen; font-size: 1.3em; font-family: times new roman">  <br> </td>
   </tr>
    	
    </form>
 </table>

					<?php
					if(isset($_POST['sb']))
					{
						
						$uid = $_POST['uid'];
						$pass = $_POST['pass'];
						$email = $_POST['email'];
						include "connect.php";
						mysqli_query($con,"insert into registration(userid, password,email) values('$uid','$pass','$email')");
						echo "<script>alert('Registrado correctamente');</script>";
						;
					}	

					?>





				</div>
			</div>
		
		</div>
	</div>
	<!-- End Contact -->
<?php include "footer.php"; ?>