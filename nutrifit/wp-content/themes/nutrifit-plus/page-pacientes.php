<?php 
get_header(); //** Página listado pacientes del Nutricionista **//
      
// Verificar si el usuario actual ha iniciado sesión y tiene el rol de nutricionista
if (is_user_logged_in() && current_user_can('nutricionista')) {

 // Asiganción del paciente al nutricionista
   $nutricionista_id = get_current_user_id(); // Obtener el ID del nutricionista actualmente logeado
   $current_url = esc_url($_SERVER['REQUEST_URI']); // Obtener la URL actual
   
   if (isset($_POST['submit'])) {  // Verificar si se ha enviado el formulario de asignación
     $paciente_id = $_POST['paciente_id'];  // Obtener el ID del paciente seleccionado desde el formulario
     $asignado_a = get_user_meta($paciente_id, 'nutricionista_id', true); // Verificar si el paciente ya está asignado a otro nutricionista
     
   if ($asignado_a) {
     ;
   } else {
     update_user_meta($paciente_id, 'nutricionista_id', $nutricionista_id); // Guardar la asignación del nutricionista en los metadatos del paciente
     echo "
     <script>
         Swal.fire({
           icon: 'success',
           title: 'Paciente asignado',
           text: 'El paciente se ha asignado correctamente.',  
           showConfirmButton: false,
           allowOutsideClick: false,
           timer: 1350
           })
       </script>
     ";
   }
   }
      
 // Desasignar paciente
    else if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['desasignar'])){ 
      $paciente_id = $_POST['paciente_id'];
      $asignado_a = get_user_meta($paciente_id, 'nutricionista_id', true); // Verificar si el paciente está asignado al nutricionista actual
     if ($asignado_a == $nutricionista_id) {
     delete_user_meta($paciente_id, 'nutricionista_id'); // Desasignar al paciente eliminando el valor del campo nutricionista_id
      echo "
      <script>
         Swal.fire({
           icon: 'success',
           title: 'Paciente desasignado',
           text: 'El paciente se ha desasignado correctamente.',  
           showConfirmButton: false,
           allowOutsideClick: false,
           timer: 1350
           })
      </script>";
    }
    }

 // Obtener pacientes no asignados (para poder asignarlos luego)
  $pacientes_no_asignados = get_users(array(
      'role' => 'paciente',
      'meta_query' => array(
          'relation' => 'OR',
          array(
              'key' => 'nutricionista_id',
              'compare' => 'NOT EXISTS',
          ),
          array(
              'key' => 'nutricionista_id',
              'value' => '',
              'compare' => '=',
          ),
      ),
  ));

  // Obtener pacientes asignados
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

 // Mostrar pacientes asignados
  $infopaciente = "";
  $busqueda = "";
 
  if (!empty($filtered_pacientes)) {
    foreach ($filtered_pacientes as $paciente) {
      $usuario_id = $paciente->ID; // Obtener el ID del usuario actualmente asignado
      $imagen_perfil = get_avatar_url($usuario_id); // Obtener la imagen de perfil del usuario
      $icono_usuario = '<img src="' . $imagen_perfil . '" alt="Icono de usuario">';
      $nombre = $paciente->display_name;
      $correo = $paciente->user_email;
      $busqueda = "
      <form method='POST' action=''>
        <div class='input-group mb-1'>
          <input type='text' class='form-control' placeholder='Buscar un paciente...' name='busqueda' value='" . esc_attr($search_query) . "'>
          <button type='submit' class='btn btn-outline-secondary'>
          <i class='bx bx-search'></i>
          </button>
        </div>
      </form>";
      $infopaciente .=  "<tr>
        <th scope='row'>" . $icono_usuario . "</th>
        <td><h5>".$nombre."</h5></td>
        <td>
          <form method='POST' action=''>
          <input type='hidden' name='paciente_id' value='".$paciente->ID."'>
          <button type='submit' name='desasignar' style='border: 0px solid !important; background-color: transparent;'>
          <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='#d0021b' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'><polyline points='3 6 5 6 21 6'></polyline><path d='M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2'></path><line x1='10' y1='11' x2='10' y2='17'></line><line x1='14' y1='11' x2='14' y2='17'></line></svg>
          </button>
          </form>
        </td>
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

                <h1>Pacientes</h1>
                
                <div class="row">
                <div class="col-sm d-flex justify-content-start">
                <button type="button" class="pabutton" onclick="window.location.href = '<?php echo admin_url('user-new.php'); ?>';"> <i class='bx bx-user-plus'></i> Crear</button>
                <button type="button" class="pabutton" data-bs-toggle="modal" data-bs-target="#modalasignar"><i class='bx bx-id-card' ></i> Asignar</button>
                </div>
                <div class="col-sm d-flex justify-content-end">
                <?php echo $busqueda ?>
                </div>
                </div>

                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col" class="col-3"></th>
                        <th scope="col" class="col-8"></th>
                        <th scope="col" class="col-1"></th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php echo $infopaciente ?>
                    </tbody>
                  </table>
        
                  <!-- Modal -->
                  <div class="modal fade" id="modalasignar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalasignarLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title fs-5" id="modalasignarLabel">Asignar paciente</h4>
                        </div>
                        <div class="modal-body">
             
                        <form method="POST" action="">
                         <label for="paciente">Paciente: </label>
                         <select name="paciente_id" id="paciente" cla>
                             <?php foreach ($pacientes_no_asignados as $paciente) : ?>
                                 <option value="<?php echo $paciente->ID; ?>"><?php echo $paciente->display_name; ?></option>
                             <?php endforeach; ?>
                         </select>
                         <input type="submit" name="submit" class="inputstyle" value="Asignar" >
                        </form>

                        </div>
                        <div class="modal-footer">
                          <button type="button" data-bs-dismiss="modal">Cerrar</button>
                        </div>
                      </div>
                    </div>
                  </div>

            </div>
        </div>
    </section>
  </main>
  </body>
  <?php wp_footer(); //Refresacar caché footer ?>
</html>