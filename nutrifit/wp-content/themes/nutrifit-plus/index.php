<?php 
    get_header();
?>

  <!--=============== MAIN ===============-->
  <main> 
    <section class="container section section__height" >
        <div id="contenedor">
            <h3>Soy Index.php</h3>
            <hr>
            
            <div class="row"> 
                <?php while ( have_posts() ) : the_post(); ?>

                <div class="column">

                  <div><a href="<?php the_permalink(); ?>"><img src="<?php the_field('imagen_del_plato'); ?>"></a></div>
                  <h4 class="link"><a href="<?php the_permalink(); ?>" style="color: black;"><span class="subrayado"><?php the_title();?></span></a></h4>
                  <p><i class='bx bx-timer'></i> Tiempo (min): <?php the_field('tiempo_de_ejecucion'); ?>    <i class='bx bx-food-tag'></i> Tipo de comida: <?php the_field('tipo_de_comida'); ?></p>

                </div> 

                <?php endwhile; // final del loop ?>
            </div> <br><br>
           
            
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