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

<body>
<div class="container clearfix">
    <div class="left-block">
        <?php wp_nav_menu([
            'theme_location' => 'left',
            'walker' => new LeftMenuWalker()
        ]); ?>
    </div>
    <div class="right-block clearfix">

