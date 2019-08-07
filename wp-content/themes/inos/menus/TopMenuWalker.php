<?php
/**
 * Created by PhpStorm.
 * User: Kazalin
 * Date: 05.08.2019
 * Time: 16:56
 */

class TopMenuWalker extends Walker_Nav_Menu
{
    public function start_lvl(&$output, $depth = 0, $args = array())
    {
        $output .= "<img src='" . get_template_directory_uri() . "/img/layer14.png' usemap='#top-menu'>";
        $output .= "<map id='top-menu' name='top-menu'>";
    }

    public function end_lvl(&$output, $depth = 0, $args = array()){
        $output .= "</map>";
    }


    /**
     * Starts the element output.
     *
     * @since 3.0.0
     * @since 4.4.0 The {@see 'nav_menu_item_args'} filter was added.
     *
     * @see Walker::start_el()
     *
     * @param string   $output Passed by reference. Used to append additional content.
     * @param WP_Post  $item   Menu item data object.
     * @param int      $depth  Depth of menu item. Used for padding.
     * @param array $args   An object of wp_nav_menu() arguments.
     * @param int      $id     Current item ID.
     */
    public function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {
        $atts = array();
        $atts['title']  = ! empty( $item->attr_title ) ? $item->attr_title : '';
        $atts['target'] = ! empty( $item->target )     ? $item->target     : '';
        $atts['rel']    = ! empty( $item->xfn )        ? $item->xfn        : '';
        $atts['href']   = ! empty( $item->url )        ? $item->url        : '';
        $atts['class']  = 'menu-btn ' . get_field('color_class', $item->ID);

        $atts = apply_filters( 'nav_menu_link_attributes', $atts, $item, $args, $depth );

        $title = apply_filters( 'the_title', $item->title, $item->ID );
        $title = apply_filters( 'nav_menu_item_title', $title, $item, $args, $depth );

        $output .= '<area shape="' . get_field('shape', $item->ID) . '" coords="' . get_field('coords', $item->ID) . '" href="' . $atts['href'] .'" alt="' . $title .'">';
    }
}