<?php
//
// Документы
//
//
get_header();
?>


    <h4 class="h4-page-header mt-20 tsd">ОБРАЗОВАНИЕ</h4>
    <h2 class="h2-page-header mtb-10 tsd"><span>&#10037;</span></h2>
    <h2 class="h2-page-header tsd">ТЕКУЩИЕ ЦИКЛЫ ЛЕКЦИЙ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ РАБОТНИКОВ ОБРАЗОВАНИЯ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/image28.png" alt="лого раздела" class="w250 mt-20 m0auto d-block">

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="/kval-russ-lit-plan">Текущие циклы лекций повышения квалификации
                учителей
                русского языка и литературы</a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="/kval-ruk-obr-shkol-cikl">Текущие циклы лекций повышения квалификации руководителей
                общеобразовательных учреждений</a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="/kval-math-cikl">Текущие циклы лекций повышения квалификации учителей математики</a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="/kval-nach-school-cikl">Текущие циклы лекций повышения квалификации учителей начальной школы</a></i>
    </p>

<div style="height: 400px"></div>
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