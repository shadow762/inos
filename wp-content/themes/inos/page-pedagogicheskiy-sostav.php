<?php
//
// РУКОВОСТВО. СТРУКТУРА И ОРГАНЫ
// УПРАВЛЕНИЯ ИНСТИТУТА
//
get_header();
?>

    <img src="<?php echo get_template_directory_uri()?>/img/layer14.png" alt="" class="header-top-img mtb-20">

<h2 class="h2-page-header">РУКОВОДСТВО. НАУЧНО-ПЕДАГОГИЧЕСКИЙ СОСТАВ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/img-btn-10.png" alt="" class="w250 m0auto d-block mtb-20">


<div class="ruk-center-block clearfix">
    <div class="ruk-center-block-id">
        <span><b>Соколова</b></span>
        <span>Галина</span>
        <span>Константиновна</span>
    </div>
    <div class="ruk-center-block-pic">
        <img src="<?php echo get_template_directory_uri()?>/img/key2.png" alt="">
        <span><b>Директор института</b></span>
        <span>кандидат педагогических наук</span>

    </div>
    <div class="ruk-center-block-contacts">
        <p><img src="<?php echo get_template_directory_uri()?>/img/lan9.png" alt=""> <b>Тел./Факс 8 (495)382-07-37</b></p>
        <p><img src="<?php echo get_template_directory_uri()?>/img/HP-mobile-icon.png" alt=""> <b>Тел. 8 (903)726-27-54</b></p>
        <p><img src="<?php echo get_template_directory_uri()?>/img/butor.png" alt=""> <b>E-mail: <a href="mailto:inosss@bk.ru">inosss@bk.ru</a></b></p>
    </div>


</div>
<div class="ruk-center-block clearfix">
    <div class="ruk-center-block-id">
        <span><b>Утешинский</b></span>
        <span>Дмитрий</span>
        <span>Дмитриевич</span>
    </div>
    <div class="ruk-center-block-pic">
        <img src="<?php echo get_template_directory_uri()?>/img/book3.png" alt="">
        <span><b>Проректор</b></span>
        <span><b>по учебно-методической</b></span>
        <span><b>и научной работе</b></span>
        <span>кандидат педагогических наук</span>

    </div>
    <div class="ruk-center-block-contacts">
        <p><img src="<?php echo get_template_directory_uri()?>/img/lan9.png" alt=""> <b>Тел./Факс 8 (495)382-07-37</b></p>
        <!--            <p><img src="--><?php //echo get_template_directory_uri()?><!--/img/HP-mobile-icon.png" alt=""> <b>Тел. 8 (903)726-27-54</b></p>-->
        <p><img src="<?php echo get_template_directory_uri()?>/img/butor.png" alt=""> <b>E-mail: <a href="mailto:inosru@mail.ru">inosru@mail.ru</a></b></p>
    </div>
</div>

    <img src="<?php echo get_template_directory_uri()?>/img/shnur.png" alt="шнурки" class="w600 m0auto d-block mtb-20">


    <p class="w800 m0auto fb fi fs18 mtb-20"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-12.png" alt="" class="w100h100">

        К чтению лекций и проведению семинарских занятий Институт привлекает высококвалифицированных
        преподавателей: авторов образовательных программ, учебников и учебно-методических пособий, а также
        ученых, научных сотрудников Российской Академии образования и высшей школы, педагогов-практиков, среди которых:
    </p>

<!--    <ul class="w600 m0auto fs25 mt-20">-->
<!--        <li> - 16  - ДОКТОРОВ НАУК (30%),   </li>-->
<!--        <li> - 31 - КАНДИДАТ НАУК (60%),</li>-->
<!--        <li> -7 - ЗАСЛУЖЕННЫЕ УЧИТЕЛЯ ШКОЛЫ (10%).</li>-->
<!--    </ul>-->
<!---->
<!--    <h4 class="h4-page-header mt-20">ПЕДАГОГИЧЕСКИЙ-->
<!--        (НАУЧНО-ПЕДАГОГИЧЕСКИЙ) СОСТАВ-->
<!--    </h4>-->
<!---->
<!---->
<!--    <div class="img-container">-->
<!--        <img src="--><?php //echo get_template_directory_uri()?><!--/img/business.png" alt="лого раздела">-->
<!--    </div>-->
<!---->
<!---->
<!--    <img src="--><?php //echo get_template_directory_uri()?><!--/img/shnur.png" alt="шнурки" class="w600 m0auto d-block mtb-20">-->

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