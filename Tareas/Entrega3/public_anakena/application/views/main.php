<?php $this->load->view('header') ?>
  <div class="navbar">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a class="brand" href="#" name="top">Bienvenido <?= $nombre?></a>
          <ul class="nav">
            <li><a href="show_main"><i class="icon-home"></i> Home</a></li>
            <li class="divider-vertical"></li>
          </ul>
          <div class="btn-group pull-right">
            <?php if ($tipo_usuario_idtipo_usuario==2) : ?>
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

<div class="container">

<?php if ($tipo_usuario_idtipo_usuario==1) : ?>
<style>#leftcolumn dl{display:block;margin-left:20px;}#leftcolumn dt{font-size:120%;color:#999;margin:10px 0 0;padding:0;}#leftcolumn dt.imp strong{font-weight:normal;color:red;}#leftcolumn dd{margin:0;padding:0;}#hor-minimalist-a{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;background:#fff;width:480px;border-collapse:collapse;text-align:left;margin:20px;}#hor-minimalist-a th{font-size:14px;font-weight:normal;color:#039;border-bottom:2px solid #6678b1;padding:10px 8px;}#hor-minimalist-a td{color:#669;padding:9px 8px 0;}#hor-minimalist-a tbody tr:hover td{color:#009;}#hor-minimalist-b{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;background:#fff;width:480px;border-collapse:collapse;text-align:left;margin:20px;}#hor-minimalist-b th{font-size:14px;font-weight:normal;color:#039;border-bottom:2px solid #6678b1;padding:10px 8px;}#hor-minimalist-b td{border-bottom:1px solid #ccc;color:#669;padding:6px 8px;}#hor-minimalist-b tbody tr:hover td{color:#009;}#ver-minimalist{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:30px 30px 30px 15px;}#ver-minimalist th{font-weight:normal;font-size:14px;border-bottom:2px solid #6678b1;border-right:30px solid #fff;border-left:30px solid #fff;color:#039;padding:8px 2px;}#ver-minimalist td{border-right:30px solid #fff;border-left:30px solid #fff;color:#669;padding:12px 2px 0;}#box-table-a{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:20px;}#box-table-a th{font-size:13px;font-weight:normal;background:#b9c9fe;border-top:4px solid #aabcfe;border-bottom:1px solid #fff;color:#039;padding:8px;}#box-table-a td{background:#e8edff;border-bottom:1px solid #fff;color:#669;border-top:1px solid transparent;padding:8px;}#box-table-a tr:hover td{background:#d0dafd;color:#339;}#box-table-b{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:center;border-collapse:collapse;border-top:7px solid #9baff1;border-bottom:7px solid #9baff1;margin:20px;}#box-table-b th{font-size:13px;font-weight:normal;background:#e8edff;border-right:1px solid #9baff1;border-left:1px solid #9baff1;color:#039;padding:8px;}#box-table-b td{background:#e8edff;border-right:1px solid #aabcfe;border-left:1px solid #aabcfe;color:#669;padding:8px;}#hor-zebra{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:20px;}#hor-zebra th{font-size:14px;font-weight:normal;color:#039;padding:10px 8px;}#hor-zebra td{color:#669;padding:8px;}#hor-zebra .odd{background:#e8edff;}#ver-zebra{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:0 20px 20px 20px;}#ver-zebra th{font-size:14px;font-weight:normal;border-right:1px solid #fff;border-left:1px solid #fff;color:#039;padding:12px 15px;}#ver-zebra td{border-right:1px solid #fff;border-left:1px solid #fff;color:#669;padding:8px 15px;}.vzebra-odd{background:#eff2ff;}.vzebra-even{background:#e8edff;}#ver-zebra #vzebra-adventure,#ver-zebra #vzebra-children{background:#d0dafd;border-bottom:1px solid #c8d4fd;}#ver-zebra #vzebra-comedy,#ver-zebra #vzebra-action{background:#dce4ff;border-bottom:1px solid #d6dfff;}#one-column-emphasis{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:20px;}#one-column-emphasis th{font-size:14px;font-weight:normal;color:#039;padding:12px 15px;}#one-column-emphasis td{color:#669;border-top:1px solid #e8edff;padding:10px 15px;}.oce-first{background:#d0dafd;border-right:10px solid transparent;border-left:10px solid transparent;}#one-column-emphasis tr:hover td{color:#339;background:#eff2ff;}#newspaper-a{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;border:1px solid #69c;margin:20px;}#newspaper-a th{font-weight:normal;font-size:14px;color:#039;border-bottom:1px dashed #69c;padding:12px 17px;}#newspaper-a td{color:#669;padding:7px 17px;}#newspaper-a tbody tr:hover td{color:#339;background:#d0dafd;}#newspaper-b{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;border:1px solid #69c;margin:20px;}#newspaper-b th{font-weight:normal;font-size:14px;color:#039;padding:15px 10px 10px;}#newspaper-b tbody{background:#e8edff;}#newspaper-b td{color:#669;border-top:1px dashed #fff;padding:10px;}#newspaper-b tbody tr:hover td{color:#339;background:#d0dafd;}#newspaper-c{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;border:1px solid #6cf;margin:20px;}#newspaper-c th{font-weight:normal;font-size:13px;color:#039;text-transform:uppercase;border-right:1px solid #0865c2;border-top:1px solid #0865c2;border-left:1px solid #0865c2;border-bottom:1px solid #fff;padding:20px;}#newspaper-c td{color:#669;border-right:1px dashed #6cf;padding:10px 20px;}#rounded-corner{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:20px;}#rounded-corner thead th.rounded-company{background:#b9c9fe url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/left.png") left -1px no-repeat;}#rounded-corner thead th.rounded-q4{background:#b9c9fe url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/right.png") right -1px no-repeat;}#rounded-corner th{font-weight:normal;font-size:13px;color:#039;background:#b9c9fe;padding:8px;}#rounded-corner td{background:#e8edff;border-top:1px solid #fff;color:#669;padding:8px;}#rounded-corner tfoot td.rounded-foot-left{background:#e8edff url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/botleft.png") left bottom no-repeat;}#rounded-corner tfoot td.rounded-foot-right{background:#e8edff url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/botright.png") right bottom no-repeat;}#rounded-corner tbody tr:hover td{background:#d0dafd;}#background-image{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/blurry.jpg") 330px 59px no-repeat;margin:20px;}#background-image th{font-weight:normal;font-size:14px;color:#339;padding:12px;}#background-image td{color:#669;border-top:1px solid #fff;padding:9px 12px;}#background-image tfoot td{font-size:11px;}#background-image tbody td{background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/back.png");}* html #background-image tbody td{filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='table-images/back.png',sizingMethod='crop');background:none;}#background-image tbody tr:hover td{color:#339;background:none;}#gradient-style{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;margin:20px;}#gradient-style th{font-size:13px;font-weight:normal;background:#b9c9fe url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/gradhead.png") repeat-x;border-top:2px solid #d3ddff;border-bottom:1px solid #fff;color:#039;padding:8px;}#gradient-style td{border-bottom:1px solid #fff;color:#669;border-top:1px solid #fff;background:#e8edff url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/gradback.png") repeat-x;padding:8px;}#gradient-style tfoot tr td{background:#e8edff;font-size:12px;color:#99c;}#gradient-style tbody tr:hover td{background:#d0dafd url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/gradhover.png") repeat-x;color:#339;}#pattern-style-a{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/pattern.png");margin:20px;}#pattern-style-a thead tr{background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/pattern-head.png");}#pattern-style-a th{font-size:13px;font-weight:normal;border-bottom:1px solid #fff;color:#039;padding:8px;}#pattern-style-a td{border-bottom:1px solid #fff;color:#669;border-top:1px solid transparent;padding:8px;}#pattern-style-a tbody tr:hover td{color:#339;background:#fff;}#pattern-style-b{font-family:"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;font-size:12px;width:480px;text-align:left;border-collapse:collapse;background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/patternb.png");margin:20px;}#pattern-style-b thead tr{background:url("http://media.smashingmagazine.com/images/express-css-table-design/table-images/patternb-head.png");}#pattern-style-b th{font-size:13px;font-weight:normal;border-bottom:1px solid #fff;color:#039;padding:8px;}#pattern-style-b td{border-bottom:1px solid #fff;color:#669;border-top:1px solid transparent;padding:8px;}#pattern-style-b tbody tr:hover td{color:#339;background:#cdcdee;}.dp-highlighter{font-family:"Consolas", "Courier New", Courier, mono, serif;font-size:12px;background-color:#E7E5DC;width:99%;overflow:auto;padding-top:1px;margin:18px 0!important;}.dp-highlighter ol,.dp-highlighter ol li,.dp-highlighter ol li span{border:none;margin:0;padding:0;}.dp-highlighter a,.dp-highlighter a:hover{background:none;border:none;margin:0;padding:0;}.dp-highlighter .bar{padding-left:45px;}.dp-highlighter.collapsed .bar,.dp-highlighter.nogutter .bar{padding-left:0;}.dp-highlighter ol{list-style:decimal;background-color:#fff;color:#5C5C5C;margin:0 0 1px 45px !important;padding:0;}.dp-highlighter.nogutter ol,.dp-highlighter.nogutter ol li{list-style:none!important;margin-left:0!important;}.dp-highlighter ol li,.dp-highlighter .columns div{list-style:decimal-leading-zero;list-style-position:outside!important;border-left:3px solid #6CE26C;background-color:#F8F8F8;color:#5C5C5C;line-height:14px;margin:0!important;padding:0 3px 0 10px !important;}.dp-highlighter.nogutter ol li,.dp-highlighter.nogutter .columns div{border:0;}.dp-highlighter .columns{background-color:#F8F8F8;color:gray;overflow:hidden;width:100%;}.dp-highlighter .columns div{padding-bottom:5px;}.dp-highlighter ol li.alt{background-color:#FFF;color:inherit;}.dp-highlighter ol li span{color:black;background-color:inherit;}.dp-highlighter.collapsed ol{margin:0;}.dp-highlighter.collapsed ol li{display:none;}.dp-highlighter.printing{border:none;}.dp-highlighter.printing .tools{display:none!important;}.dp-highlighter.printing li{display:list-item!important;}.dp-highlighter .tools{font:9px Verdana, Geneva, Arial, Helvetica, sans-serif;color:silver;background-color:#f8f8f8;border-left:3px solid #6CE26C;padding:3px 8px 10px 10px;}.dp-highlighter.nogutter .tools{border-left:0;}.dp-highlighter.collapsed .tools{border-bottom:0;}.dp-highlighter .tools a{font-size:9px;color:#a0a0a0;background-color:inherit;text-decoration:none;margin-right:10px;}.dp-highlighter .tools a:hover{color:red;background-color:inherit;text-decoration:underline;}.dp-about{background-color:#fff;color:#333;margin:0;padding:0;}.dp-about table{width:100%;height:100%;font-size:11px;font-family:Tahoma, Verdana, Arial, sans-serif!important;}.dp-about td{vertical-align:top;padding:10px;}.dp-about .copy{border-bottom:1px solid #ACA899;height:95%;}.dp-about .title{color:red;background-color:inherit;font-weight:bold;}.dp-about .para{margin:0 0 4px;}.dp-about .footer{background-color:#ECEADB;color:#333;border-top:1px solid #fff;text-align:right;}.dp-about .close{font-size:11px;font-family:Tahoma, Verdana, Arial, sans-serif!important;background-color:#ECEADB;color:#333;width:60px;height:22px;}.dp-highlighter .comment,.dp-highlighter .comments{color:#008200;background-color:inherit;}.dp-highlighter .string{color:blue;background-color:inherit;}.dp-highlighter .keyword{color:#069;font-weight:bold;background-color:inherit;}.dp-highlighter .preprocessor{color:gray;background-color:inherit;}
</style>

<table id="newspaper-b" summary="2007 Major IT Companies' Profit">
<thead>
<tr>
<th scope="col">Producto</th>
<th scope="col">Descripción</th>
<th scope="col">Precio</th>
<th scope="col">Stock</th>
<th scope="col"></th>
</tr>
</thead>
<tbody>
  <form action='comprar' method='post'>
<?php
$i = 0;
foreach ($productos as $value) {
  echo '<tr>';
  $i+=1;
  foreach ($value as $key=>$item) {
    if ($key=="stock")
      $stock = $item;
    if ($key!='idproducto_servicio'){?>
    <td><?= $item?></td>
  <?php
  } else {$idproducto_servicio=$item;}}
  echo '<td>
  <input name="cantidad'.$i.'" type="text" placeholder="Cantidad a Comprar">
  <input type="hidden" name="stock'.$i.'" value='.$stock.'>
  <input type="hidden" name="idproducto_servicio'.$i.'" value='.$idproducto_servicio.'>
  </td></tr>';
} ?>
<tfoot>
<tr><td colspan="5"><div align="right">
  <input type="button" id="btnModalSubmit" class="btn btn-primary" value="Comprar" align="right" onclick="disable()">
  <input type="hidden" id="btnModalSubmit" class="btn btn-primary" value="Confirmar Compra" name="botonSubmit" align="right">
</div></td></tr>
</tfoot>
</form>
</tbody>
</table>
  </div>
  </div>
</div>
<?php endif; ?>



  <div class="modal hide" id="myModal">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">x</button>
      <h3>Publicar producto</h3>
    </div>
    <div class="modal-body">
      <?= form_open("main/nuevoProducto")?>
      <form action="nuevoProducto" method="post">
        <p><input type="text" class="span4" name="nombre" id="nombre" placeholder="nombre"></p>
        <p><input type="text" class="span4" name="descripcion" id="descripcion" placeholder="descripcion"></p>
        <p><input type="text" class="span4" name="precio" id="precio" placeholder="precio"></p>
        <p><input type="text" class="span4" name="stock" id="stock" placeholder="stock"></p>
    </div>
    <div class="modal-footer">
      <a href="#" class="btn btn-warning" data-dismiss="modal">Cancel</a>
      <input type="submit" id="btnModalSubmit" class="btn btn-primary" value="Registrar">
    </div>
    </form>
  </div>
<?php $this->load->view('footer') ?>