<!DOCTYPE html>

<style>
body, div, h1, form, fieldset, input, textarea {
	margin: 0; padding: 0; border: 0; outline: none;
}

html {
	height: 100%;
}

body {
	font-family: sans-serif; 
}

#contact {
	width: 430px; margin: 60px auto; padding: 60px 30px;
	background: #c9d0de; border: 1px solid #e1e1e1;
	-moz-box-shadow: 0px 0px 8px #444;
	-webkit-box-shadow: 0px 0px 8px #444;
}

h1 {
	font-size: 35px; color: #445668; text-transform: uppercase;
	text-align: center; margin: 0 0 35px 0; text-shadow: 0px 1px 0px #f2f2f2;
}

label {
	float: left; clear: left; margin: 11px 20px 0 0; width: 95px;
	text-align: right; font-size: 16px; color: #445668; 
	text-transform: uppercase; text-shadow: 0px 1px 0px #f2f2f2;
}

input {
	width: 260px; height: 35px; padding: 5px 20px 0px 20px; margin: 0 0 20px 0; 
	background: #5E768D;
	background: -moz-linear-gradient(top, #546A7F 0%, #5E768D 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#546A7F), color-stop(20%,#5E768D)); /* webkit */
	border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;
	-moz-box-shadow: 0px 1px 0px #f2f2f2;-webkit-box-shadow: 0px 1px 0px #f2f2f2;
	font-family: sans-serif; font-size: 16px; color: #f2f2f2; text-transform: uppercase; text-shadow: 0px -1px 0px #334f71; 
}
	input::-webkit-input-placeholder  {
    	color: #a1b2c3; text-shadow: 0px -1px 0px #38506b;  
	}
	input:-moz-placeholder {
	    color: #a1b2c3; text-shadow: 0px -1px 0px #38506b; 
	}

textarea {
	width: 260px; height: 170px; padding: 12px 20px 0px 20px; margin: 0 0 20px 0; 
	background: #5E768D;
	background: -moz-linear-gradient(top, #546A7F 0%, #5E768D 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#546A7F), color-stop(20%,#5E768D)); /* webkit */
	border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;
	-moz-box-shadow: 0px 1px 0px #f2f2f2;-webkit-box-shadow: 0px 1px 0px #f2f2f2;
	font-family: sans-serif; font-size: 16px; color: #f2f2f2; text-transform: uppercase; text-shadow: 0px -1px 0px #334f71; 
}
	textarea::-webkit-input-placeholder  {
    	color: #a1b2c3; text-shadow: 0px -1px 0px #38506b;  
	}
	textarea:-moz-placeholder {
	    color: #a1b2c3; text-shadow: 0px -1px 0px #38506b; 
	}
	
input:focus, textarea:focus {
	background: #728eaa;
	background: -moz-linear-gradient(top, #668099 0%, #728eaa 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#668099), color-stop(20%,#728eaa)); /* webkit */
}

input[type=submit] {
	width: 185px; height: 52px; float: right; padding: 10px 15px; margin: 0 15px 0 0;
	-moz-box-shadow: 0px 0px 5px #999;-webkit-box-shadow: 0px 0px 5px #999;
	border: 1px solid #556f8c;
	background: -moz-linear-gradient(top, #718DA9 0%, #415D79 100%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#718DA9), color-stop(100%,#415D79)); /* webkit */
	cursor: pointer;
}
</style>



<div id="contact">
<center>	<h3>Buscar servicios</h3></center>
	<form action="<?=$this->config->base_url();?>index.php/index/searchServicios" method="post">
		<fieldset>
			<label for="name">Servicio:</label>
			<input type="text" id="name" name="servicio" placeholder="Introduce el nombre del servicio" />
			
			
			<input type="submit" value="Buscar" />
			
		</fieldset>
	</form>
	<br>

<tr><td colspan="1"><div align="center">
	<a href="<?=$this->config->base_url();?>index.php/index/specialSearchServicios">  <input type="button" id="btnModalSubmit" class="btn btn-primary" value="Las peores y mas caras películas" align="left"></a>
</div></td></tr>

</div>