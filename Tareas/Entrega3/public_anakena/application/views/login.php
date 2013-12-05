<?php $this->load->view('header') ?>
<div class="container">
	<div class="row">
		<div class="span4 offset4 well">
			<legend>Login</legend>
			<?php if (isset($error) && $error==1): ?>
        <div class="alert alert-error">
          <a class="close" data-dismiss="alert" href="#">×</a>User o password incorrectos.
        </div>
      <?php elseif (isset($error) && $error==2): ?>
        <div class="alert alert-error">
          <a class="close" data-dismiss="alert" href="#">×</a>Problemas al registrar tu cuenta.
        </div>
			<?php endif; ?>
			<?php echo form_open('login/login_user') ?>
				<input type="text" id="nombre_usuario" class="span4" name="nombre_usuario" placeholder="Usuario">
				<input type="password" id="password" class="span4" name="password" placeholder="Contraseña">
				<button type="submit" name="submit" class="btn btn-info btn-block">Iniciar Sesión</button>
			</form>
			<a data-toggle="modal" href="#myModal"><button data-toggle="modal" onclick="location.href='#myModal';" class="btn btn-info btn-block">Registrar</button></a>
		</div>
	</div>
</div>

  <!-- ****************************************************************** -->
  <!--                        NEW USER Modal Window                       -->
  <!-- ****************************************************************** -->

  <div class="modal hide" id="myModal">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">x</button>
      <h3>New User Details</h3>
    </div>
    <div class="modal-body">
    	<?php echo form_open('login/registrarUsuario') ?>
        <p><input type="text" class="span4" name="nombre_usuario" id="nombre_usuario" placeholder="Usuario"></p>
        <p><input type="password" class="span4" name="password" id="password" placeholder="Contraseña"></p>
        <p><input type="text" class="span4" name="nombre" id="nombre" placeholder="Nombre"></p>
        <p><input type="text" class="span4" name="apellido" id="apellido" placeholder="Apellido"></p>
        <p><input type="text" class="span4" name="rut" id="rut" placeholder="RUT"></p>
        <p><input type="text" class="span4" name="direccion" id="direccion" placeholder="Dirección"></p>
        <p><input type="text" class="span4" name="telefono" id="telefono" placeholder="Teléfono"></p>
        <p><input type="text" class="span4" name="email" id="email" placeholder="Email"></p>
    </div>
    <div class="modal-footer">
      <a href="#" class="btn btn-warning" data-dismiss="modal">Cancel</a>
      <input type="submit" id="btnModalSubmit" class="btn btn-primary" value="Registrar">
    </div>
    </form>
  </div>
<?php $this->load->view('footer') ?>