<?php
/**
 * Topagrobel
 *
 *
 * @package WordPress
 * @subpackage Topagrobel
 * @since Topagrobel 1.0
 */

add_action( 'after_setup_theme', 'topagrobel_theme_setup' );

function topagrobel_theme_setup(){
    add_theme_support( 'post-thumbnails' );
    add_filter('show_admin_bar', '__return_false');
    add_action('wp_enqueue_scripts', 'topagrobel_scripts');
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo');
    add_theme_support( 'wp-block-styles' );
    add_theme_support( 'block-templates' );
    register_nav_menus([
        'primary' => __('Primary Menu', 'topagrobel'),
        'sub_menu-1' => __('Sub Menu Col 1', 'topagrobel'),
        'sub_menu-2' => __('Sub Menu Col 2', 'topagrobel'),
        'sub_menu-3' => __('Sub Menu Col 3', 'topagrobel'),
        'sub_menu-4' => __('Sub Menu Col 4', 'topagrobel'),
        ]);
    require_once get_template_directory().'/custom_functional/requried_custom_scripts.php';
}

function topagrobel_scripts()
{
    wp_enqueue_style('style', get_template_directory_uri().'/style.css');
    wp_enqueue_script('topagrobel-script', get_template_directory_uri().'/js/index.js', '', 1 , true);
}

function get_logo_img(){
    $logo_img = '';
    if( $custom_logo_id = get_theme_mod('custom_logo') ){
        $logo_img = wp_get_attachment_image( $custom_logo_id, 'full', false, array(
            'class'    => 'custom-logo',
            'itemprop' => 'logo',
        ) );
    }

    return $logo_img;
}