<?php 
$current_user = wp_get_current_user(); // Obtener usuario logueado
$name_parts = $current_user && !empty($current_user->ID) ? explode(' ', $current_user->display_name) : array(); // Obtener solo el nombre del usuario logueado 
$display_name = !empty($name_parts) ? $name_parts[0] : 'Invitado';
$profile_image_url = get_avatar_url($current_user->ID); // ICono de perfil del usuario logueado
?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script> <!-- Se necesita poner aquí en vez de en functions.php, porque si no, no lo coge correctamente-->
    <link rel="icon" type="image/x-icon" href="https://stoic-khorana.5-135-116-99.plesk.page/wp-content/themes/nutrifit-plus/img/favicon.png">
    <?php wp_head() //Refresacar caché head ?>
  </head>
  <body>

    <!--=============== HEADER ===============-->
    <header class="header" id="header">
    <nav class="nav container">
    <a href="<?php echo esc_url(home_url('/')); ?>" class="nav__logo"><img src="https://stoic-khorana.5-135-116-99.plesk.page/wp-content/themes/nutrifit-plus/img/logo.png"></a>

    <div class="nav__menu" id="nav-menu">
        <ul class="nav__list" style="margin-bottom: 0rem !important; padding-left: 0rem !important;">
            <?php if (current_user_can('nutricionista')) : ?> <!-- Menú nutricionista -->

                <li class="nav__item">
                    <a href="/pacientes/" class="nav__link">
                        <i class='bx bx-user-pin nav__icon'></i>
                        <span class="nav__name">Pacientes</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="/menus/" class="nav__link">
                        <i class='bx bx-food-menu nav__icon'></i>
                        <span class="nav__name">Menús</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="/chat/" class="nav__link">
                        <i class='bx bx-chat nav__icon'><?php echo do_shortcode("[better_messages_unread_counter hide_when_no_messages='1' preserve_space='1']"); ?></i>
                        <span class="nav__name">Chat</span>

                    </a>

                </li>
                
            <?php elseif (current_user_can('paciente')) : ?> <!-- Menú paciente -->
                
                <li class="nav__item">
                    <a href="/paciente/" class="nav__link">
                        <i class='bx bx-home-alt nav__icon'></i>
                        <span class="nav__name">Home</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="/recetas/" class="nav__link">
                        <i class='bx bx-food-menu nav__icon'></i>
                        <span class="nav__name">Menú</span>
                    </a>
                </li>

                <li class="nav__item">
                    <a href="/chat/" class="nav__link">
                        <i class='bx bx-chat nav__icon'><?php echo do_shortcode("[better_messages_unread_counter hide_when_no_messages='1' preserve_space='1']"); ?></i>
                        <span class="nav__name">Chat</span>
                    </a>
                </li>
            <?php endif; ?>
        </ul>
    </div>
    <div class="nav__img"> <!-- Perfil -->
    <div class="menuperfil">
        <div onclick="toggle()" class="menuperfil-btn">
          <div class="menuperfil-img" style="background-image: url('<?php echo $profile_image_url ?>');">
           <i class='bx bxs-circle'></i>
          </div>

          <span>
            <?php echo $display_name ?>
            <i class='bx bxs-chevron-down'></i>
          </span>
        </div>

        <ul class="menuperfil-list">
          <li class="menuperfil-list-item">
            <a href="<?php echo get_edit_profile_url(); ?>">
             <i class='bx bx-user' ></i>
              Editar perfil
            </a>
          </li>

          <?php if (current_user_can('nutricionista')) : ?>

          <li class="menuperfil-list-item">
            <a href="<?php echo admin_url(); ?>">
             <i class='bx bx-slider-alt'></i>
              Panel de control
            </a>
          </li>

          <?php endif; ?>

          <hr />

          <li class="menuperfil-list-item">
            <a href="<?php echo wp_logout_url( wp_login_url() ); ?>">
             <i class='bx bx-log-out bx-rotate-180' ></i>
              Cerrar sesión
            </a>
          </li>
        </ul>
      </div>
      </div>
</nav>

<script>

// Menú perfil toggle
let profileDropdownList = document.querySelector(".menuperfil-list");
let btn = document.querySelector(".menuperfil-btn");

let classList = profileDropdownList.classList;

const toggle = () => classList.toggle("active");

window.addEventListener("click", function (e) {
  if (!btn.contains(e.target)) classList.remove("active");
});

</script>
</header>
 