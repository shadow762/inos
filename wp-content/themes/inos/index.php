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

<!--    <h1>ИНСТИТУТ</h1>-->
<!--    <h2 class="h2-page-header">НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ</h2>-->
<!--    <img src="--><?php //echo get_template_directory_uri() ?><!--/img/inos-book.png" alt="" width="600px" height="430px" class="page-center-img" >-->


    <div class="center-block">

        <div class="center-block-pic-1">
        </div>

        <p class="center-block-text-1"><br>ИНCТИТУТ</p>
    </div>
    <div class="center-block">
        <div class="center-block-pic-2">

        </div>
        <p class="center-block-text-2">НОВЫХ<br>ОБРАЗОВАТЕЛЬНЫХ</p>
    </div>
    <div class="center-block">
        <div class="center-block-pic-3">

        </div>
        <p class="center-block-text-2">СИСТЕМ</p>
        <ul class="center-block-text-3">
            <li>ИНОС</li>
            <li>Работает в сфере образования с 1998 года</li>
        </ul>
    </div>

<!--    <p class="w600 m0auto fs35 fb tac txt-vi">-->
<!--        <span class="mr-10 fs35">&#9872;</span>-->
<!---->
<!--    </p>-->

    <h2 class="h2-page-header mt-20 tsd">ГЛАВНАЯ СТРАНИЦА</h2>











    <img src="<?php echo get_template_directory_uri()?>/img/inos-book.png" alt="" class="w400 m0auto d-block mtb-20">


<!--    <h3>«ИНОС – ИНСТИТУТ НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ»</h3>-->
<!--    <h3>негосударственное образовательное учреждение</h3>-->



    <p class="w800 m0auto fb fs18 txt-vi2 tsd s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        работает в сфере образования с <span class="txt-vi">1998</span> года.
    </p>

    <p class="w800 m0auto fb fs18 txt-vi2 tsd mt-20 s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        обладает эффективной системой повышения квалификации научно-педагогических кадров.
    </p>

    <p class="w800 m0auto fb fs18 txt-vi2 tsd mt-20 s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        <span class="txt-vi mr-30">цель:</span>осуществляет свою деятельность в соответствии с лицензией на право
        образовательной деятельности, выданной департаментом образования
        города москвы.
    </p>

    <p class="w800 m0auto fb fs18 txt-vi2 tsd mt-20 s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        развитие профессиональной,
        информационно-познавательной, коммуникативной и
        социально-личностной компетенций слушателей в
        процессе изучения актуальных проблем преподавания,
        повышение профессионального уровня в рамках
        имеющейся квалификациквалификации.
    </p>

    <p class="w800 m0auto fb fs18 txt-vi2 tsd mt-20 s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        лекционно-семинарские занятия, проводятся на базе института авторами умк и федеральных нормативных документов (фгос, пооп, гиа, огэ, егэ).
    </p>

    <p class="w800 m0auto fb fs18 txt-vi2 tsd mt-20 s-c p-rel">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/romb.png" class="w30h30 p-abs-romb">
        <img src="<?php echo get_template_directory_uri()?>/img/hand.png" class="w30h30">
        <img src="<?php echo get_template_directory_uri()?>/img/img-btn-3.png" class="w50h80">
        слушателям, успешно освоившим дополнительную профессиональную программу и прошедшим итоговую аттестацию, выдаются удостоверения
        о повышении квалификации.
    </p>


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
