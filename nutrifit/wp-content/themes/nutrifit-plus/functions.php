<?php

//*** ESTILOS  ***//

function agregar_css_js()
{ // Agregar estilos y js
    wp_enqueue_style('style', get_stylesheet_uri());
    wp_enqueue_style('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css');
    wp_enqueue_style('mycss', get_template_directory_uri() . '/css/style.css');
    wp_enqueue_style('boxicons', 'https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css');

    wp_enqueue_style('jQuery', 'https://code.jquery.com/jquery-3.7.0.min.js');
    wp_enqueue_script('myjs', get_template_directory_uri() . '/js/app.js', array('jquery'), '1.14', true);
    wp_enqueue_script('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js', array('myjs'), '5.0', true);

}

add_action('wp_enqueue_scripts', 'agregar_css_js');

if (function_exists('add_theme_support')) { // Imagenes destacadas
    add_theme_support('post-thumbnails');
}

function admin_panel_nutrifit_admin_color_scheme()
{ // Admin panel CSS
    //Get the theme directory
    $theme_dir = get_template_directory_uri();

    //admin_panel_nutrifit
    wp_admin_css_color('admin_panel_nutrifit', __('admin_panel_nutrifit'),
        $theme_dir . '/css/admin_panel_nutrifit.css',
        array('#272626', '#f0dede', '#d54e21', '#68ba35')
    );
}

add_action('admin_init', 'admin_panel_nutrifit_admin_color_scheme');

function css_login()
{ // CSS Login
    wp_enqueue_style('logincss', get_template_directory_uri() . '/css/login.css');
}

add_action('login_head', 'css_login');


add_action('pre_get_posts', 'add_my_post_types_to_query'); //Añadir CPT a la consulta
function add_my_post_types_to_query($query)
{
    if ((is_single() || is_home() || is_category()) && $query->is_main_query())
        $query->set('post_type', array('post', 'recetas_post_type'));
    return $query;
}


//*** Nutricionista pueda crear usuarios  ***//

function nutricionista_pueda_crear_usuarios()
{
    $role = get_role('nutricionista');
    $role->add_cap('create_users'); // Crear usuarios
}

add_action('init', 'nutricionista_pueda_crear_usuarios');


//*** Cuando un nutricionista cree un usuario, este se le asigne automaticamente el rol paciente ***//

function asignar_rol_paciente_al_crear_usuarios_nutricionista($user_id)
{
    $user = get_user_by('id', $user_id);
    $current_user = wp_get_current_user();
    if (in_array('nutricionista', (array)$current_user->roles) && !in_array('paciente', (array)$user->roles)) {
        $user->remove_role('subscriber');
        $user->add_role('paciente');
    }
}

add_action('user_register', 'asignar_rol_paciente_al_crear_usuarios_nutricionista');


//*** Nutricionista cuando crea un paciente, se le asigne automáticamente ***//

function asignar_nutricionista_a_paciente($user_id)
{

    if (in_array('nutricionista', wp_get_current_user()->roles)) {// Verifica si el usuario actual es un nutricionista
        $nutricionista_id = get_current_user_id(); // Obtiene el ID del nutricionista actual

        update_user_meta($user_id, 'nutricionista_id', $nutricionista_id); // Asigna el nutricionista al paciente recién creado
    }
}

add_action('user_register', 'asignar_nutricionista_a_paciente');


//*** Filtrado de que todos los usuarios desde el panel de admin sea pacientes ***//

function filtrar_usuarios_por_rol_paciente($query)
{
    global $pagenow;
    $current_user = wp_get_current_user();
    if (is_admin() && $pagenow == 'users.php' && in_array('nutricionista', (array)$current_user->roles) && !isset($_GET['role'])) {
        $query->set('role__in', array('paciente'));
    }
}

add_action('pre_get_users', 'filtrar_usuarios_por_rol_paciente');


//*** MENÚS ***//

function registrar_menu_nutricionista()
{
    register_nav_menu('menu-nutricionista', __('Menú Nutricionista'));
}

add_action('init', 'registrar_menu_nutricionista');

function registrar_menu_paciente()
{
    register_nav_menu('menu-paciente', __('Menú Paciente'));
}

add_action('init', 'registrar_menu_paciente');


//*** REDIRECCIONES Y AJUSTES  ***//

function custom_login_redirect($redirect_to, $request, $user)
{ // Redirección al iniciar sesión

    if (is_array($user->roles) && in_array('administrator', $user->roles)) {
        return admin_url();
    } elseif (is_array($user->roles) && in_array('nutricionista', $user->roles)) {
        return home_url('pacientes');
    } elseif (is_array($user->roles) && in_array('paciente', $user->roles)) {
        return home_url('paciente');
    }
}

add_filter('login_redirect', 'custom_login_redirect', 10, 3);

function redirigir_despues_de_crear_usuario($user_id)
{ // Redireccionar a pacientes cuando un nutricionista cree un paciente
    $url_redireccion = 'https://stoic-khorana.5-135-116-99.plesk.page/pacientes/';
    wp_redirect($url_redireccion);
    exit;
}

add_action('user_register', 'redirigir_despues_de_crear_usuario');

add_action('after_setup_theme', 'bld_ocultar_admin_bar'); // Quitar barra de administración a Nutricionistas y pacientes
function bld_ocultar_admin_bar()
{
    if (current_user_can('nutricionista')) {
        add_filter('show_admin_bar', '__return_false');
    } else if (current_user_can('paciente')) {
        add_filter('show_admin_bar', '__return_false');
    }
}


//APIS
add_action('rest_api_init',
    function () {
        register_rest_route(
            'api',
            'getRecetas',
            array(
                'methods' => 'POST',
                'callback' => 'getRecetas'
            )
        );
        register_rest_route(
            'api',
            'getRecetaMeta',
            array(
                'methods' => 'POST',
                'callback' => 'getRecetaMeta'
            )
        );
        register_rest_route(
            'api',
            'getMenu',
            array(
                'methods' => 'POST',
                'callback' => 'getMenu'
            )
        );
    }
);

// https://stoic-khorana.5-135-116-99.plesk.page/wp/wp-json/api/getRecetas
function getRecetas(WP_REST_Request $request)
{
    $arr_request = json_decode($request->get_body());
    if (!empty($arr_request->post_type) && !empty($arr_request->meta_key) && !empty($arr_request->meta_value)) {
        $args = array(
            'posts_per_page' => -1,
            'post_type' => $arr_request->post_type,
            'offset' => 1,
            'meta_key' => $arr_request->meta_key,
            'meta_value' => $arr_request->meta_value,
        );
        $the_query = new WP_Query($args);
        return [
            'status' => 'success',
            'data' => $the_query
        ];
    }
    else{
        return [
            'status' => 'error',
            'data'=> $arr_request
        ];
    }


}

function getRecetaMeta(WP_REST_Request $request)
{
    $arr_request = json_decode($request->get_body());
    if (!empty($arr_request->id)) {
        $meta_data = get_post_meta($arr_request->id);
        $images = get_attached_media('image', $arr_request->id);
        return [
            'status' => 'success',
            'data' => $meta_data ,
            'image' => $images
        ];
    }
    else{
        return [
            'status' => 'error',
            'data'=> $arr_request
        ];
    }


}

function getMenu(WP_REST_Request $request)
{
    $arr_request = json_decode($request->get_body());
    if (!empty($arr_request->fecha) && !empty($arr_request->user_id)){
        $dia_semana = date("l", strtotime($arr_request->fecha));
        $semana = date("W", strtotime($arr_request->fecha));

        global $wpdb;

        $tabla = $wpdb->prefix . 'menu';
        $campos = array(
            'week' => $semana,
            'day' => $dia_semana,
            'wp_user_id'=>$arr_request->user_id
        );
        $where = array();
        foreach ($campos as $campo => $valor) {
            $where[] = "$campo = %s";
        }
        $consulta = "SELECT * FROM $tabla WHERE " . implode(' AND ', $where);
        $data = $wpdb->get_results($wpdb->prepare($consulta, ...array_values($campos)));

        $posts = [];

        foreach ($data as $post){
            array_push($posts, get_post($post->plato_id));
        }

        //Code
        return [
            'status' => 'success',
            'data' => $data,
            'posts'=>$posts
        ];
    }
    else{
        return [
            'status' => 'error',
            'data'=> $arr_request
        ];
    }


}

// Nuevo correo de registro
add_filter( 'wp_new_user_notification_email', 'dcms_new_user_email', 10, 3 );

function dcms_new_user_email( $wp_new_user_email, $user, $blogname ) {
    $headers = array('From: Nutrifit+ <nutrifitplus2023@gmail.com>');
    $subject = sprintf( 'Te has registrado en [%s].', $blogname );

    $wp_new_user_email['headers'] = $headers;
    $wp_new_user_email['subject'] = $subject;

    return $wp_new_user_email;
}