<?php
//
// Институт на карте
//
//
get_header();
?>

    <h2 class="h2-page-header">ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>
    <h2 class="h2-page-header">ИНСТИТУТ НА КАРТЕ</h2>


    <h4 class="h4-page-header">КАРТА ПРОЕЗДА</h4>
    <h4 class="h4-page-header">GPS координаты (координаты на карте):</h4>
    <h4 class="h4-page-header">долгота — 37.612021, широта — 55.603283.</h4>

    <div class="img-container">
        <img src="<?php  echo get_template_directory_uri() ?>/img/map/map1.png " alt="">
    </div>

    <div class="img-container">
        <img src="<?php  echo get_template_directory_uri() ?>/img/map/map2.png " alt="">
    </div>

    <div class="img-container">
        <img src="<?php  echo get_template_directory_uri() ?>/img/map/map3.png " alt="">
    </div>

<?php get_footer(); ?>