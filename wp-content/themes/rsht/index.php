<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */

get_header();
?>
<?php
//if ( have_posts() ) {
//
//    // Load posts loop.
//    while ( have_posts() ) {
//        the_post();
//    }
//}
?>

	<section id="primary" class="content-area">
		<main id="main" class="site-main">
            <div class="slider">
                <?php echo do_shortcode('[slick-carousel-slider category="5" autoplay="false" dots="false" sliderheight="450" slidestoshow="1" design="design-6" centermode="true" variablewidth="true"]');?>
            </div>

            <div class="main-categories">
                <div class="container wide">
                    <h3 class="block-header blue-font">Развиваем и учим детей</h3>
                    <?php
                    $theme_locations = get_nav_menu_locations();
                    $menu_obj = get_term($theme_locations['categories-menu'], 'nav_menu');
                    $menu_items = wp_get_nav_menu_items($menu_obj, []);
                    ?>

                    <div class="block-content main-categories-list">
                        <?php foreach ($menu_items as $menu_item) { ?>
                            <div class="main-categories-item">
                                <a href="<?php echo $menu_item->url;?>">
                                    <div class="main-categories-img">
                                        <img src="<?php the_field('картинка_категории', $menu_item->ID) ?>">
                                    </div>
                                    <div class="main-categories-name">
                                        <?php echo $menu_item->title; ?>
                                    </div>
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>

            <div class="common-carousel-block">
                <div class="container wide">
                    <h3 class="block-header green-font">Помогаем школам</h3>
                    <div class="block-content school-help-list">
                        <div class="school-help-item carousel-item">
                            <img src="<?php the_field('help1', 251);?>">
                        </div>
                        <div class="school-help-item carousel-item">
                            <img src="<?php the_field('help2', 251);?>">
                        </div>
                        <div class="school-help-item carousel-item">
                            <img src="<?php the_field('help3', 251);?>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="common-carousel-block" style="margin-bottom: 50px;">
                <div class="container wide">
                    <h3 class="block-header red-font">Работаем с предприятиями</h3>
                    <div class="block-content partners-list">
                        <div class="partners-item carousel-item">
                            <img src="<?php the_field('job1', 251);?>">
                        </div>
                        <div class="partners-item carousel-item">
                            <img src="<?php the_field('job2', 251);?>">
                        </div>
                        <div class="partners-item carousel-item">
                            <img src="<?php the_field('job3', 251);?>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="regard-carousel-block">
                <div class="container slim">
                    <header class="regard-header">Выражаем благодарность</header>
                    <div class="regard-carousel-container">
                        <?php echo do_shortcode('[slick-slider sliderheight="109" category="7" dots="false"]');?>
                    </div>
                    <div class="regard-more">
                        за предоставление детям возможности реализовать что-то
                    </div>
                </div>
            </div>
		</main><!-- .site-main -->
	</section><!-- .content-area -->

<?php
get_footer();
