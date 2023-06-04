<?php
get_header(); //** Página menu categoria paciente del Nutricionista **//
global $wpdb;

if (is_user_logged_in() && current_user_can('nutricionista')) {
    // Obtén la categoría y id del paciente de la URL
    $categoria = isset($_GET['categoria']) ? $_GET['categoria'] : '';
    $paciente_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    // Asignar receta
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        $fecha = $_POST['fecha'];
        $dia_semana = date("l", strtotime($fecha));
        $semana = date("W", strtotime($fecha));

        //BBDD
        $tabla = $wpdb->prefix . 'menu';
        $campos = array(
            'week' => $semana,
            'day' => $dia_semana,
            'wp_user_id' => $paciente_id
        );

        $where = array();
        foreach ($campos as $campo => $valor) {
            $where[] = "$campo = %s";
        }

        $consulta = "SELECT COUNT(*) FROM $tabla WHERE " . implode(' AND ', $where);
        $existe_registro = $wpdb->get_var($wpdb->prepare($consulta, ...array_values($campos)));


        if ($existe_registro > 0) {
            echo "Borrado";
            $del = "DELETE FROM $tabla WHERE " . implode(' AND ', $where);
            $resultado = $wpdb->query($wpdb->prepare($del, ...array_values($campos)));
        }

        array_pop($_POST);
        foreach ($_POST as $elemento) {

            $datos = array(
                'wp_user_id' => $paciente_id,
                'day' => $dia_semana,
                'week' => $semana,
                'plato_id' => intval($elemento)
            );

            $resultado = $wpdb->insert($tabla, $datos);

            if ($resultado === false) {
                echo 'Error al insertar los datos: ' . $wpdb->last_error;
            } else {
                echo "<script>
                    Swal.fire({
                    icon: 'success',
                    title: 'Asignación realizada',
                    text: 'Se ha asignado las recetas correctamente al paciente',
                    showConfirmButton: false,
                    allowOutsideClick: false,
                    timer: 1350
                    }).then(function() {
                   window.location.href = '/menus/';
                   });
                    </script>";
            }
        }

    }

    $detalles_paciente = "";
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
        echo "<script>
       Swal.fire({
         icon: 'error',
         title: 'Paciente no encontrado',
         text: 'No se han encontrado pacientes con esas coincidencias',
         showConfirmButton: false,
         allowOutsideClick: false,
         timer: 1350
         }).then(function() {
          window.location.href = '$current_url';
         });
    </script>";
    }

    wp_reset_postdata();
}

?>

<!--=============== MAIN ===============-->
<main>
    <section class="container section section__height">
        <div id="contenedor">
            <div class="pacienteinfo">
                <div class="row">
                    <div class="col-sm d-flex justify-content-start align-items-center">
                        <?php echo $detalles_paciente ?>
                    </div>
                    <div class="col-sm d-flex justify-content-end align-items-center">
                        <input type="date" id="fecha" name="fecha" onchange="asignar_fecha(<?php echo $paciente_id ?>)">
                    </div>
                </div>
            </div>
            <br>
            <button type="button" class="btn btn-success btn-sm"
                    onclick="window.location.href = '<?php echo get_admin_url() . 'post-new.php?post_type=recetas_post_type'; ?>';">
                <i class='bx bx-folder-plus'></i></i> Crear nueva receta
            </button>
            <br><br>

            <select class="form-select" onchange="getRecetas('recetas_post_type', 'tipo_de_comida', this.value)">
                <option selected>Seleccione un tipo de comida/categoria</option>
                <option value="desayuno">Desayuno</option>
                <option value="almuerzo">Almuerzo</option>
                <option value="merienda">Merienda</option>
                <option value="cena">Cena</option>
            </select>

            <section id="draggable" class="draggable-elements">
                <!-- <div class="draggable all" id="desayuno" draggable="true">
                      <p>Desayuno</p>
                  </div>
                  <div class="draggable all" id="almuerzo" draggable="true">
                      <p>Almuerzo</p>
                  </div>
                  <div class="draggable all" id="merienda" draggable="true">
                      <p>Merienda</p>
                  </div>
                  <div class="draggable all" id="cena" draggable="true">
                      <p>Cena</p>
                  </div>-->
            </section>

            <section id="draggable" class="droppable-elements">
                <div class="droppable all" data-draggable-id="desayuno" id="dropdesayuno">Desayuno</div>
                <div class="droppable all" data-draggable-id="almuerzo" id="dropalmuerzo">Almuerzo</div>
                <div class="droppable all" data-draggable-id="merienda" id="dropmerienda">Merienda</div>
                <div class="droppable all" data-draggable-id="cena" id="dropcena">Cena</div>
            </section>
            <div class="row" id="botonsubmit">
            </div><br><br>
    </section>
</main>

</body>
<?php wp_footer(); //Refresacar caché footer ?>
</html>