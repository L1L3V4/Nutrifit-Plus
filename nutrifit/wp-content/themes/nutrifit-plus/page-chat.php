<?php 
    get_header(); //** Página home del paciente **//
    $current_user = wp_get_current_user(); // Obtener usuario logueado
    $name_parts = $current_user && !empty($current_user->ID) ? explode(' ', $current_user->display_name) : array(); // Obtener solo el nombre del usuario logueado
    $display_name = !empty($name_parts) ? $name_parts[0] : 'Invitado';
?>
  <!--=============== MAIN ===============-->
  <main> 
    <section class="container section section__height" >
        <?php echo do_shortcode("[better_messages]"); ?>
        <br><br><br>
    </section>
  </main>

  </body>
  <?php wp_footer(); //Refresacar caché footer ?>
</html>