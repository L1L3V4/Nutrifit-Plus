<?php 
if (is_user_logged_in() && current_user_can('nutricionista')) { // Page-pacientes.php como la home-page de los nutricionistas
    include("page-pacientes.php");
} elseif (is_user_logged_in() && current_user_can('paciente')) { // Page-paciente.php como la home-page de los pacientes
    include("page-paciente.php");
} else {
    wp_redirect(wp_login_url()); // Si no estas logueado, la home-page es wp-login.php.
    exit();
}
?>