<?php
get_header(); //** Página menu semanal del paciente del Nutricionista **//

$paciente_id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$detalles_paciente = "";

if (is_user_logged_in() && current_user_can('nutricionista')) {

if (!empty($paciente_id)) {
  $imagen_perfil = get_avatar_url($paciente_id); // Obtener la imagen de perfil del usuario
  $paciente = get_userdata($paciente_id);
  $nombre_paciente = $paciente->display_name;
  $detalles_paciente .=
  '
  <img src="' . $imagen_perfil . '" alt="Icono de usuario">
  <h4> Nombre del Paciente: ' . $nombre_paciente . '</h4>
  ';
} else {
    echo 'No se encontró el paciente.';
}

}
?>
<!--=============== MAIN ===============-->
<main> 
    <section class="container section section__height" >
      <div id="contenedor">
        <div class="pacienteinfo">
                <div class="row">
                    <div class="col-sm d-flex justify-content-start align-items-center">
                        <?php echo $detalles_paciente ?>
                    </div>
                    <div class="col-sm d-flex justify-content-end align-items-center">
                        <input type="date" id="fechamenu" name="fechamenu" onchange="getMenu(this.value,<?php echo $paciente_id ?>)">
                    </div>
                </div>
            </div>
        
        <h3 id="diasemana">*</h3><button class="btn btn-success btn-sm" onclick="window.location.href = 'nutrifit/menucategoria?id=<?php echo $paciente_id ?>';"><i class="bx bx-edit"></i> Editar</button>
        <hr>
        <div class="row">
            <div class='column' id="desayunomenu"></div>
            <div class='column' id="almuerzomenu"></div>
            <div class='column' id="meriendamenu"></div>
            <div class='column' id="cenamenu"></div>
        </div>

        <div class="position-relative">
            <div class="position-absolute top-100 start-50 translate-middle">
            <?php get_template_part('template-parts/paginacion'); ?>
            </div>
        </div>
        </div>
    </section>
  </main>


</body>
  <?php wp_footer(); //Refresacar caché footer ?>
</html>