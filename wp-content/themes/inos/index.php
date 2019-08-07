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
    <img src="<?php echo get_template_directory_uri()?>/img/Layer14.png" alt="" class="header-top-img mtb-20">
<!--    <h1>ИНСТИТУТ</h1>-->
<!--    <h2 class="h2-page-header">НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ</h2>-->
<!--    <img src="--><?php //echo get_template_directory_uri() ?><!--/img/inos-book.png" alt="" width="600px" height="430px" class="page-center-img" >-->


    <div class="center-block">
        <div class="center-block-pic-1">

        </div>
        <p class="center-block-text-1">ИНCТИТУТ</p>
    </div>
    <div class="center-block">
        <div class="center-block-pic-2">

        </div>
        <p class="center-block-text-2">НОВЫХ<br>ОБРАЗОВАТЕЛЬНЫХ</p>
    </div>
    <div class="center-block">
        <div class="center-block-pic-3">

        </div>
        <p>СИСТЕМ</p>
        <ul class="center-block-text-3">
            <li>ИНОС</li>
            <li>Работает в сфере образования с 1998 года</li>
        </ul>
    </div>

    <p class="w600 m0auto fs35 fb tac txt-vi">
        <span class="mr-10 fs35">&#9872;</span>
        ГЛАВНАЯ
    </p>











    <img src="<?php echo get_template_directory_uri()?>/img/inos-book.png" alt="" class="w400 m0auto d-block mtb-20">


<!--    <h3>«ИНОС – ИНСТИТУТ НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ»</h3>-->
<!--    <h3>негосударственное образовательное учреждение</h3>-->



    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p>Работает в сфере образования с <span>1998</span> года.</p>
    </div>
    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p>Обладает эффективной системой повышения квалификации научно-педагогических кадров. </p>
    </div>
    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p><span>цель:</span> развитие профессиональной, информационно-познавательной,
            коммуникативной и социально-личностной компетенций слушателей
            в процессе изучения актуальных проблем преподавания, повышение
            профессионального уровня в рамках имеющейся квалификации.</p>
    </div>
    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p>Осуществляет свою деятельность в соответствии с лицензией на право
            образовательной деятельности, выданной Департаментом образования
            города Москвы.</p>
    </div>
    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p>Лекционно-семинарские занятия, проводятся на базе Института авторами
            УМК и Федеральных нормативных документов (ФГОС, ПООП, ГИА, ОГЭ, ЕГЭ).</p>
    </div>
    <div class="center-text-block clearfix">
        <div class="lamp"></div>
        <p>Слушателям, успешно освоившим дополнительную профессиональную
            программу и прошедшим итоговую аттестацию, выдаются Удостоверения
            о повышении квалификации.</p>
    </div>




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
    <!--        <div class="bottom-menu-block">-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-1">-->
    <!--                <p>ОСНОВНЫЕ СВЕДЕНИЯ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-2">-->
    <!--                <p>ОБРАЗОВАНИЕ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-3">-->
    <!--                <p>ИНСТИТУТ НА КАРТЕ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-4">-->
    <!--                <p>СТРУКТУРА И ОРГАНЫ УПРАВЛЕНИЯ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-5">-->
    <!--                <p>НАУЧНО-ПЕДАГОГИЧЕСКИЙ СОСТАВ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-6">-->
    <!--                <p>ТЕКУЩИЕ ЦИКЛЫ ЛЕКЦИЙ</p>-->
    <!--            </div>-->
    <!--            <div class="bottom-menu-block-item b-m-b-i-color-7">-->
    <!--                <p>ГАЛЕРЕЯ</p>-->
    <!--            </div>-->
    <!---->
    <!---->
    <!--        </div>-->



<?php
//if ( have_posts() ) {
//
//    // Load posts loop.
//    while ( have_posts() ) {
//        the_post();
//    }
//}
?>


<?php
get_footer();
