<?php
//
// Институт на карте
//
//
get_header();
?>



    <h4 class="h4-page-header mtb-20">ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h4>
    <h2 class="h2-page-header">ИНСТИТУТ НА КАРТЕ</h2>


    <h4 class="h4-page-header mt-20">КАРТА ПРОЕЗДА</h4>
    <h4 class="h4-page-header">GPS координаты (координаты на карте):</h4>
    <h4 class="h4-page-header">долгота — 37.612021, широта — 55.603283.</h4>

    <img src="<?php echo get_template_directory_uri()?>/img/map/map1.png" alt="" class="w600 m0auto d-block mt-20">

    <img src="<?php echo get_template_directory_uri()?>/img/map/map2.png" alt="" class="w600 m0auto d-block mt-20">

    <img src="<?php echo get_template_directory_uri()?>/img/map/map3.png" alt="" class="w600 m0auto d-block mtb-20">

    <!--Нижнее меню-->
    <div class="bottom-pic-block">
        <div class="pic-block-item ">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-14.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-7.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item ">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-4.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item ">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-30.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-3.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item ">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-9.png" alt="" class="w100phi">
        </div>
        <div class="pic-block-item ">
            <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-19.png" alt="" class="w100phi">
        </div>


    </div>
<?php wp_nav_menu([
    'theme_location' => 'bottom',
    'items_wrap' => '<div id="%1$s" class="bottom-menu-block %2$s">%3$s</div>',
    'walker' => new BottomMenuWalker()
]); ?>


<?php get_footer(); ?>