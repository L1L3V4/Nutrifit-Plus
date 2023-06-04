<?php 
    get_header(); //** Página detalles de la receta **//
?>

  <!--=============== MAIN ===============-->
  <main> 
    <section class="container section section__height" >
    <div id="contenedor" style="padding: 0vh;">
            <div class="rowplato">

            <?php while ( have_posts() ) : the_post(); ?>

                <div class="columnplato">
                    <img src="<?php the_field('imagen_del_plato'); ?>">
                </div>
                <div class="columnplato">
                    <h2><?php the_title();?></h2>
                    <hr>
                    <p><i class='bx bx-timer'></i>  Tiempo de ejecución: <?php the_field('tiempo_de_ejecucion'); ?> minutos
                    </p>
                    <p><i class='bx bx-bar-chart-alt-2' ></i></i>  Complejidad: <?php the_field('complejidad'); ?></p>
                    <p><i class='bx bx-food-tag'></i>  Tipo de comida: <?php the_field('tipo_de_comida'); ?></p>
                    <hr>

                    <h4>Contenido nutricional por ración</h4>
                    <div class="valornutricionallist">
                        <ul>
                            <li class="valor">
                                <div>
                                    <div><span><?php the_field('calorias'); ?></span></div>
                                    <p>Calorias</p>      
                                </div>
                            </li>
                            <li class="valor">
                                <div>
                                    <div><span><?php the_field('fibra'); ?></span></div>
                                    <p>Fibra</p>  
                                </div>
                            </li>
                            <li class="valor">
                                <div>
                                <div><span><?php the_field('proteinas'); ?></span></div>
                                <p>Proteinas</p>      
                                </div>
                            </li>
                            <li class="valor">
                                <div>
                                    <div><span><?php the_field('carbohidratos'); ?></span></div> 
                                    <p>Carbohidratos</p>     
                                </div>
                            </li>
                            <li class="valor">
                                <div>
                                    <div><span><?php the_field('grasas'); ?></span></div>
                                    <p>Grasas</p>      
                                </div>
                            </li>
                            <li class="valor">
                                <div>
                                    <div><span><?php the_field('azucares'); ?></span></div>     
                                    <p>Azúcares</p> 
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="columnplato">
                    <h3>Ingredientes</h3><hr style="color: green; height: 4px;">
                    <ol>
                    <?php 
                    $ingredientes =  explode("\n", get_field('ingredientes'));
                    foreach($ingredientes as $ingrediente){ 
                        echo "<li>".$ingrediente."</li>";
                    }
                    ?>
                    </ol>
                </div>
                <div class="columnplato">
                    <h3>Instrucciones de preparación</h3><hr style="color: green; height: 4px;">
                    <ol>
                    <?php
                    $instrucciones =  explode("\n", get_field('instrucciones'));
                    foreach($instrucciones as $instruccion){
                        echo "<li>".$instruccion."</li>";
                    }
                    ?>
                    </ol>
                    <br><br>
                </div>

            <?php endwhile; // final del loop ?>

            </div>
        </div>
    </section>
  </main>
  
  </body>
  <?php wp_footer(); //Refresacar caché footer ?>
</html>