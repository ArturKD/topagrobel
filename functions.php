<?php
/**
 * Topagrobel
 *
 *
 * @package WordPress
 * @subpackage Topagrobel
 * @since Topagrobel 1.0
 */

function topagrobel_scripts()
{
    wp_enqueue_style('topagrobel-style', get_template_directory_uri().'/style.css');
    wp_enqueue_script('topagrobel-script', get_template_directory_uri().'/js/index.js');
}

add_action('wp_enqueue_scripts', 'topagrobel_scripts');