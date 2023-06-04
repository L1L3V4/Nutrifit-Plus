<?php

/*
Plugin Name:  Eva Téllez
Plugin URI:    
Description:  Plugin creado por Eva Téllez para el control del CPT 
Version:      1.0
Author:       Eva Téllez
Author URI:   
License:      GPL2
License URI:  https://www.gnu.org/licenses/gpl-2.0.html
Text Domain:  
Domain Path:  
*/

//Custom Post Type Recetas

function recetas_post_type()
{

    $labels = array(
        'name' => _x('Recetas', 'Post Type General Name', 'recetas_domain'),
        'singular_name' => _x('Receta', 'Post Type Singular Name', 'recetas_domain'),
        'menu_name' => __('Recetas', 'recetas_domain'),
        'name_admin_bar' => __('Recetas', 'recetas_domain'),
        'archives' => __('Archivo recetas', 'recetas_domain'),
        'attributes' => __('Atributos recetas', 'recetas_domain'),
        'parent_item_colon' => __('Receta padre:', 'recetas_domain'),
        'all_items' => __('Todas', 'recetas_domain'),
        'add_new_item' => __('Añadir nueva', 'recetas_domain'),
        'add_new' => __('Añadir', 'recetas_domain'),
        'new_item' => __('Nueva', 'recetas_domain'),
        'edit_item' => __('Editar', 'recetas_domain'),
        'update_item' => __('Actualizar', 'recetas_domain'),
        'view_item' => __('Ver receta', 'recetas_domain'),
        'view_items' => __('Ver recetas', 'recetas_domain'),
        'search_items' => __('Buscar receta', 'recetas_domain'),
        'not_found' => __('Receta no encontrada', 'recetas_domain'),
        'not_found_in_trash' => __('Receta no encontrada en la papelera', 'recetas_domain'),
        'featured_image' => __('Imagen destacada', 'recetas_domain'),
        'set_featured_image' => __('Asignar imagen destacada', 'recetas_domain'),
        'remove_featured_image' => __('Eliminar imagen destacada', 'recetas_domain'),
        'use_featured_image' => __('Usar como imagen destacada', 'recetas_domain'),
        'insert_into_item' => __('Insertar en receta', 'recetas_domain'),
        'uploaded_to_this_item' => __('Subir a receta', 'recetas_domain'),
        'items_list' => __('Lista receta', 'recetas_domain'),
        'items_list_navigation' => __('Navegación recetas', 'recetas_domain'),
        'filter_items_list' => __('Filtro recetas', 'recetas_domain'),
    );
    $rewrite = array(
        'slug' => 'recetas',
        'with_front' => true,
        'pages' => true,
        'feeds' => true,
    );
    $capabilities = array(
        'edit_post' => 'edit_receta',
        'read_post' => 'read_recetas',
        'delete_post' => 'delete_recetas',
        'edit_posts' => 'edit_recetas',
        'edit_others_posts' => 'edit_others_recetas',
        'publish_posts' => 'publish_recetas',
        'read_private_posts' => 'read_private_recetas',
    );
    $args = array(
        'label' => __('Receta', 'recetas_domain'),
        'description' => __('Contenido de recetas', 'recetas_domain'),
        'labels' => $labels,
        'supports' => array('title'),
        'taxonomies' => array('category', 'post_tag'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-food',
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'show_in_rest' => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'rewrite'               => $rewrite,
		'capabilities'          => $capabilities,
	);
	register_post_type('recetas_post_type', $args);

}

add_action('init', 'recetas_post_type', 0);
?>