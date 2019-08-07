<?php
//
// Основные сведения об институте
//
//
get_header();
?>

    <img src="<?php echo get_template_directory_uri()?>/img/layer14.png" alt="" class="header-top-img mtb-20">

    <h2 class="h2-page-header mt-20">ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>

    <h4 class="h4-page-header">Негосударственное образовательное учреждение</h4>
        <h4 class="h4-page-header">дополнительного образования</h4>


    <img src="<?php  echo get_template_directory_uri() ?>/img/img-btn-2.png " alt="logo" class="w400 m0auto d-block mtb-20">





    <h3 class="h3-page-header">«ИНОС - ИНСТИТУТ НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ»</h3>
    <h3 class="h3-page-header">(НОУ ДО «ИНОС»)</h3>

<p class="w800 m0auto fs25 txt-vi fi fb mt-20"><span class="txt-black">Институт новых образовательных систем</span> осуществляет свою деятельность в соответствии с Конституцией Российской
    Федерации, Федеральными конституционными законами, Федеральными законами, указами и распоряжениями Президента
    Российской Федерации, постановлениями и распоряжениями Правительства Российской Федерации, актами Министерства
    просвещения Российской Федерации, Федеральной службы по надзору в сфере образования и науки, Департамента образования
    города Москвы, иных федеральных органов исполнительной власти, а также Уставом.</p>


     <div class="sved-info-block">
        <div>
            <img src="<?php echo get_template_directory_uri()?>/img/couleurs.png" alt="" width="92px" height="30px"><span></span>
        </div>
            <p>ИНСТИТУТ, ОСУЩЕСТВЛЯЕТ СВОЮ ДЕЯТЕЛЬНОСТЬ В СООТВЕТСТВИИ</p>
            <p>С БЕССРОЧНОЙ ЛИЦЕНЗИЕЙ, ВЫДАННОЙ ДЕПАРТАМЕНТОМ ОБРАЗОВАНИЯ</p>
            <p>ГОРОДА МОСКВЫ</p>
            <p>регистрационный № 034416 от 10.12.2013.</p>
        </div>


    <div class="sved-info-block">
        <div>
            <img src="<?php echo get_template_directory_uri()?>/img/couleurs.png" alt="" width="92px" height="30px">
            <span>Организационно-правовая форма: </span>
        </div>
        <p>Некоммерческая организация</p>
        <p>Негосударственное образовательное учреждение дополнительного образования</p>
        <p></p>

    </div>

    <div class="sved-info-block mtb-20">
        <div>
            <img src="<?php echo get_template_directory_uri()?>/img/couleurs.png" alt="" width="92px" height="30px">
            <span>Приоритетное направление деятельности: </span>
        </div>
        <p>повышение квалификации педагогических работников</p>
        <p>образовательных учреждений</p>
        <p></p>

    </div>

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