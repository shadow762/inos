<?php

//add_theme_support( 'post-thumbnails' );
//add_theme_support( 'excerpt' );

//wp_enqueue_script("jquery");

wp_register_script('lightbox', plugins_url('/wp-jquery-lightbox/jquery.lightbox.min.js'),['jquery']);
wp_enqueue_script('lightbox');


//register styles

wp_register_style('style',get_stylesheet_directory_uri().'/style.css');
wp_enqueue_style('style');

//wp_enqueue_style('style', get_stylesheet_directory_uri().'style.css');




//регистрируем меню
register_nav_menus(array(
    'top'       => 'Верхнее меню',
    'left'      => 'Боковое меню',
    'bottom'    => 'Нижнее меню'
));

require_once "menus/LeftMenuWalker.php";
require_once "menus/BottomMenuWalker.php";
require_once "menus/TopMenuWalker.php";
