<?php 
get_header(); //** Página menus pacientes del Nutricionista **//

// Verificar si el usuario actual ha iniciado sesión y tiene el rol de nutricionista
if (is_user_logged_in() && current_user_can('nutricionista')) {

  $nutricionista_id = get_current_user_id(); // Obtener el ID del nutricionista actualmente logeado
  $current_url = esc_url($_SERVER['REQUEST_URI']); // Obtener la URL actual

  $pacientes_asignados = get_users(array(
    'meta_key' => 'nutricionista_id',
    'meta_value' => $nutricionista_id,
    'meta_compare' => '=',
    'role' => 'paciente',
  ));

  // Filtrar pacientes según la búsqueda
  $search_query = isset($_POST['busqueda']) ? sanitize_text_field($_POST['busqueda']) : '';

  $filtered_pacientes = array_filter($pacientes_asignados, function ($paciente) use ($search_query) {
      $nombre = $paciente->display_name;
      return stristr($nombre, $search_query);
  });

  // Obtén los pacientes asignados al nutricionista
  $paciente_link = "";
  $busqueda = "";

  if (!empty($filtered_pacientes)) {
    
    foreach ($filtered_pacientes as $paciente) {
        $usuario_id = $paciente->ID; // Obtener el ID del usuario actualmente asignado
        $imagen_perfil = get_avatar_url($usuario_id); // Obtener la imagen de perfil del usuario
        $icono_usuario = '<img src="' . $imagen_perfil . '" alt="Icono de usuario">';
        $nombre = $paciente->display_name;
        $url_detalle = get_permalink(86) . '?id=' . $paciente->id;
        $busqueda = "
        <form method='POST' action=''>
          <div class='input-group mb-1'>
            <input type='text' class='form-control' placeholder='Buscar un paciente..' name='busqueda' value='" . esc_attr($search_query) . "'>
            <button type='submit' class='btn btn-outline-secondary'>
            <i class='bx bx-search'></i>
            </button>
            </div>
        </form>";
        $paciente_link .= "<tr>
        <th scope='row'>" . $icono_usuario . "</th>
        <td><a href=" . esc_url($url_detalle) . "><h5>".$nombre."</h5></a></td>
        <td></td>
        </tr>";
      }
    } else {
        echo "
        <script>
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
}

?>
<!--=============== MAIN ===============-->
<main> 
    <section class="containerX section section__height" >
        <div id="contenedor">
            <div class="pacientes">
                <h1>Menús</h1>
                <div class="row">
                  <div class="col-sm d-flex justify-content-end">
                      <?php echo $busqueda?>
                  </div>
                </div>
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col" class="col-3"></th>
                        <th scope="col" class="col-7"></th>
                        <th scope="col" class="col-2"></th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php echo $paciente_link ?>
                    </tbody>
                  </table>
            </div>
        </div>
    </section>
  </main>
  </body>
  <?php wp_footer(); //Refresacar caché footer ?>
</html>