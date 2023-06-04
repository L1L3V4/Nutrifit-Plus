<?php
get_header(); //** Página menu paciente, donde ve sus recetas asignadas **//
$current_user = wp_get_current_user(); // Obtener usuario logueado
?>

<!--=============== MAIN ===============-->
<main>
    <section class="container section section__height">
        <div id="contenedor">
            <h3 id="diasemana">*</h3> <input type="date" id="fechamenu" name="fechamenu"
                                             onchange="getMenu(this.value,<?php echo $current_user->ID ?>)">
            <hr>

            <div class="row">
                <div class='column' id="desayunomenu"></div>
                <div class='column' id="almuerzomenu"></div>
                <div class='column' id="meriendamenu"></div>
                <div class='column' id="cenamenu"></div>

            </div>
    </section>
</main>

</body>
<?php wp_footer(); //Refresacar caché footer ?>
</html>