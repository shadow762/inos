<?php

//add_theme_support( 'post-thumbnails' );
//add_theme_support( 'excerpt' );

//wp_enqueue_script("jquery");

//wp_register_script('bootstrap_modal', get_template_directory_uri() . '/bootstrap.min.js', array('jquery'));
//wp_enqueue_script('bootstrap_modal');


//register styles

wp_register_style('style',get_stylesheet_directory_uri().'/style.css');
wp_enqueue_style('style');

//wp_enqueue_style('style', get_stylesheet_directory_uri().'style.css');




//регистрируем меню
register_nav_menus(array(
    'left'    => 'Боковое меню меню',
    'bottom'    => 'Нижнее меню'
));

require_once "menus/LeftMenuWalker.php";
require_once "menus/BottomMenuWalker.php";
