<?php
//
// Наши партнеры
//
//
get_header();
?>


    <h4 class="h4-page-header">РУКОВОДСТВО.НАУЧНО-ПЕДАГОГИЧЕСКИЙ СОСТАВ.</h4>
    <h2 class="h2-page-header">НАШИ ПАРТНЕРЫ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/img-btn-17.png" alt="" class="w250 m0auto d-block mtb-20">

    <p class="w800 fs18 m0auto fb">В процессе организации повышение квалификации педагогических работников, при проведении
        научных исследований и разработок, в ходе совершенствования содержания образования ИНОС сотрудничает
        с крупнейшими научными и образовательными центрами страны.</p>
    <p class="w800 fs18 m0auto fb mt-20">Нашими постоянными партнерами являются:</p>
    <ul class="w600 fs18 fb m0auto ul-1">
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>РОССИЙСКАЯ АКАДЕМИЯ ОБРАЗОВАНИЯ</li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>МОСКОВСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ
            им. М. В. ЛОМОНОСОВА</li>
        <li class="mt-20">

            <span class="mr-10">&#127891;</span>ИНСТИТУТ СТРАТЕГИИ РАЗВИТИЯ ОБРАЗОВАНИЯ РАО </li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>МОСКОВСКИЙ ПЕДАГОГИЧЕСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ</li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>ИНСТИТУТ ВОЗРАСТНОЙ ФИЗИОЛОГИИ РАО</li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>МОСКОВСКИЙ ГОРОДСКОЙ ПЕДАГОГИЧЕСКИЙ
            УНИВЕРСИТЕТ
        </li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>АКАДЕМИЯ ПОВЫШЕНИЕ КВАЛИФИКАЦИИ И ПРОФЕССИОНАЛЬНОЙ ПЕРЕПОДГОТОВКИ РАБОТНИКОВ ОБРАЗОВАНИЯ</li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>ФЕДЕРАЛЬНЫЙ ИНСТИТУТ ПЕДАГОГИЧЕСКИХ ИЗМЕРЕНИЙ</li>
        <li class="mt-10"><span class="mr-10 fs25">&#127891;</span>НАЦИОНАЛЬНЫЙ ИССЛЕДОВАТЕЛЬСКИЙ УНИВЕРСИТЕТ «ВЫСШАЯ ШКОЛА ЭКОНОМИКИ»</li>
    </ul>

<p class="mtb-20"></p>
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