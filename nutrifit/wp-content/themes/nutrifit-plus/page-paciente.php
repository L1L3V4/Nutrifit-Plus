<?php
get_header(); //** Página home del paciente **//
$current_user = wp_get_current_user(); // Obtener usuario logueado
$name_parts = $current_user && !empty($current_user->ID) ? explode(' ', $current_user->display_name) : array(); // Obtener solo el nombre del usuario logueado
$display_name = !empty($name_parts) ? $name_parts[0] : 'Invitado';
?>
<!--=============== MAIN ===============-->
<main>
    <section class="container section section__height">
        <div id="contenedor">
            <p>¡ Hola, <?php echo $display_name ?> !</p>
            <h2>Este es tu menú para hoy</h2>
            <input type="date" id="fechamenu" name="fechamenu" disabled style="display: none;"
                   onchange="getMenu(this.value,<?php echo $current_user->ID ?>)">
            <hr>
            <div class="row">
                <div class='column' id="desayunomenu"></div>
                <div class='column' id="almuerzomenu"></div>
                <div class='column' id="meriendamenu"></div>
                <div class='column' id="cenamenu"></div>
            </div>
            <hr>
            <div>
            </div>
        </div>
    </section>
</main>

</body>
<?php wp_footer(); //Refresacar caché footer ?>
</html>