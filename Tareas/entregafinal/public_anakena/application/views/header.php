<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">

  <link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">
  <style>
    body {
      padding-top: 60px;
      padding-bottom: 40px;
    }
  </style>
  <!--<link rel="stylesheet" href="<?php /*echo base_url();*/?>/assets/css/bootstrap-responsive.min.css">-->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/css/main.css">

  <script src="<?php echo base_url();?>assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="<?php echo base_url();?>/js/vendor/jquery-1.9.0.min.js"><\/script>')</script>

  <script src="<?php echo base_url();?>/assets/js/vendor/bootstrap.min.js"></script>
  <script src="<?php echo base_url();?>/nodejs/node_modules/socket.io/node_modules/socket.io-client/dist/socket.io.min.js"></script>

  <script src="<?php echo base_url();?>/assets/js/socket.js"></script>
  <script src="<?php echo base_url();?>/assets/js/main.js"></script>
  <script type="text/javascript">
    function disable(){
      var inputs = document.getElementsByTagName("INPUT");
      for (var i = 0; i < inputs.length; i++) {
          if (inputs[i].type === 'text') {
              var name = inputs[i].name;
              var cant = inputs[i].value;
              //var elem = document.getElementById(name);
              //elem.value = 2;
              //inputs[i].disabled = true;
          }
          if (inputs[i].type === 'hidden' & inputs[i].name === 'botonSubmit') {
              inputs[i].type = "submit";
          }
          if (inputs[i].type === 'button') {
              inputs[i].type = "hidden";
          }
      }
}
  </script>
</head>
<body>
<div class="navbar">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a class="brand" href="#" name="top">Bienvenido </a>
          <ul class="nav">
            <li><a href="<?=$this->config->base_url();?>index.php/index/loadPeliculas"> Peliculas</a></li><li class="divider-vertical"></li>
            <li><a href="<?=$this->config->base_url();?>index.php/index/loadSocial"> Red Social</a></li><li class="divider-vertical"></li>
            <li><a href="<?=$this->config->base_url();?>index.php/index/loadServicios"> Productos y Servicios</a></li><li class="divider-vertical"></li>
          </ul>
          
          <div class="btn-group pull-right">
            <?php if (true) : ?>
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="icon-wrench"></i> proveedor	<span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a data-toggle="modal" href="#myModal"><i class="icon-product"></i> Publicar Producto</a></li>
              <li class="divider"></li>
              <li><a href="<?php echo base_url() ?>index.php/login/logout_user"><i class="icon-share"></i> Logout</a></li>
            </ul>
            <?php else : ?>
              <a class="btn" href="<?php echo base_url() ?>index.php/login/logout_user"><i class="icon-share"></i> Logout</a>
            <?php endif; ?>
          </div>
      </div>
      <!--/.container-fluid -->
    </div>
    <!--/.navbar-inner -->
  </div>
  <!--/.navbar -->
