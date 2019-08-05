<?php

add_theme_support( 'post-thumbnails' );
add_theme_support( 'excerpt' );

wp_enqueue_script("jquery");

wp_register_script('bootstrap_modal', get_template_directory_uri() . '/bootstrap.min.js', array('jquery'));
wp_enqueue_script('bootstrap_modal');

wp_enqueue_style('bootstrap_modal', get_stylesheet_directory_uri(). '/bootstrap.css');
wp_enqueue_style('style', get_stylesheet_directory_uri(). '/style.css', ['wpos-slick-style', 'wpsisac-public-style']);

//регистрируем меню
register_nav_menus(
    array(
        'top-menu' => __( 'Top', 'rsht' ),
        'categories-menu' => __( 'home-categories', 'rsht' ),
        'footer-direction' => __( 'footer-direction', 'rsht' ),
        'footer-school' => __( 'footer-school', 'rsht' ),
        'footer-companies' => __( 'footer-companies', 'rsht' ),
        'footer-about' => __( 'footer-about', 'rsht' ),
    )
);

//images for categories menu
add_image_size( 'category-mini', 116, 117, true );

add_filter('category_link', function($a){
    return str_replace( 'category/', '', $a );
}, 99 );

class Walker_Top_Nav_Menu extends Walker_Nav_Menu {

    /**
     * Starts the list before the elements are added.
     *
     * @since 3.0.0
     *
     * @see Walker::start_lvl()
     *
     * @param string   $output Used to append additional content (passed by reference).
     * @param int      $depth  Depth of menu item. Used for padding.
     * @param stdClass $args   An object of wp_nav_menu() arguments.
     */
    public function start_lvl( &$output, $depth = 0, $args = array() ) {
        if ( isset( $args->item_spacing ) && 'discard' === $args->item_spacing ) {
            $t = '';
            $n = '';
        } else {
            $t = "\t";
            $n = "\n";
        }
        $indent = str_repeat( $t, $depth );

        // Default class.
        $classes = array( 'sub-menu' );

        /**
         * Filters the CSS class(es) applied to a menu list element.
         *
         * @since 4.8.0
         *
         * @param array    $classes The CSS classes that are applied to the menu `<ul>` element.
         * @param stdClass $args    An object of `wp_nav_menu()` arguments.
         * @param int      $depth   Depth of menu item. Used for padding.
         */
        $class_names = join( ' ', apply_filters( 'nav_menu_submenu_css_class', $classes, $args, $depth ) );
        $class_names = $class_names ? ' class="' . esc_attr( $class_names ) . '"' : '';

        $output .= "<div class='top-sub-menu'><div class='top-sub-menu-wrapper'>";
        $output .= "{$n}{$indent}<ul$class_names>{$n}";
    }

    /**
     * Ends the list of after the elements are added.
     *
     * @since 3.0.0
     *
     * @see Walker::end_lvl()
     *
     * @param string   $output Used to append additional content (passed by reference).
     * @param int      $depth  Depth of menu item. Used for padding.
     * @param stdClass $args   An object of wp_nav_menu() arguments.
     */
    public function end_lvl( &$output, $depth = 0, $args = array() ) {
        if ( isset( $args->item_spacing ) && 'discard' === $args->item_spacing ) {
            $t = '';
            $n = '';
        } else {
            $t = "\t";
            $n = "\n";
        }
        $indent = str_repeat( $t, $depth );
        $output .= "$indent</ul>{$n}";
        $output .= "<div class='top-sub-menu-info'>
            Nullam molestie nisi scelerisque orci sagittis consectetur. 
            Cras a tellus sit amet sem iaculis tempor vel vitae eros. 
            Duis lacinia massa tortor, id congue tortor pretium a. 
            
            Pellentesque mollis risus vitae eleifend sollicitudin.  
            Aenean auctor sit amet tortor vitae gravida. 
            
            Vestibulum convallis, purus ac imperdiet ultrices, 
            sem metus luctus purus, 
            vitae imperdiet mauris nisl in ex.
            </div>";
        $output .= "</div></div>";
    }

}