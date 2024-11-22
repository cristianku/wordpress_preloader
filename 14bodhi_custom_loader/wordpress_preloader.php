<?php
/*
Plugin Name: 14bodhi Loader Plugin
Description: Adds a preloader to your WordPress site.
Version: 1.0
Author: Cristian Zantedeschi
*/

// Enqueue CSS and JavaScript
function custom_loader_enqueue_scripts() {
    // Enqueue the preloader CSS
    wp_enqueue_style('custom-loader-style', plugin_dir_url(__FILE__) . 'wordpress_preloader.css');

    // Enqueue the preloader JavaScript
    wp_enqueue_script('custom-loader-script', plugin_dir_url(__FILE__) . 'wordpress_preloader.js', array(), null, true);
}
add_action('wp_enqueue_scripts', 'custom_loader_enqueue_scripts');

// Output Preloader HTML
function custom_loader_output_html() {
    ?>
    <div id="preloader">
        <div id="logo-container">
            <img src="https://14bodhi.com/wp-content/uploads/2024/11/14BODHI-SOLO-FENICE.png" alt="Logo" class="logo-animation">
        </div>
    </div>
    <?php
}
add_action('wp_body_open', 'custom_loader_output_html');
