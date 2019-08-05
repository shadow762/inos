<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */
?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=1141">
	<link rel="profile" href="https://gmpg.org/xfn/11" />
    <title><?php echo wp_get_document_title();?></title>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
    <header class="top-header">
        <div class="container flexx">
            <div class="eye-container">
                <?php echo do_shortcode('[FTVI]');?>
            </div>

            <a class="logo" href="<?php echo home_url();?>"><img src="<?php echo get_template_directory_uri() . '/imgs/logo.png'?>" alt=""></a>

            <div class="menu-wrapper">
                <?php
                wp_nav_menu( [
                    'theme_location'  => 'top-menu',
                    'container'       => 'div',
                    'menu_class'      => 'menu',
                    'menu_id'         => 'top-menu',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu',
                    'walker'          => new Walker_Top_Nav_Menu()
                ] );

                ?>
            </div>
        </div>
    </header>

	<div id="content" class="site-content" style="background-image: url(<?php echo get_template_directory_uri() . '/imgs/footer-round.png'?>);">
