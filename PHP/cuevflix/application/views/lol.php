<?php
$connection = ssh2_connect('anakena.dcc.uchile.cl', 22);
ssh2_auth_password($connection, 'cc320125', 'WqqXrH3n-@');
$tunnel = ssh2_tunnel($connection, 'anakena.dcc.uchile.cl', 3307);
$db = mysqli_connect('127.0.0.1', 'DB_USERNAME', 'DB_PASSWORD', 
                         'dbname', 3307, $tunnel)
    or die ('Fail: '.mysql_error());
echo "hola";

?>