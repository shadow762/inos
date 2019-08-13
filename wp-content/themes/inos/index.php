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

<!--    <p class="w600 m0auto fs35 fb tac txt-vi">-->
<!--        <span class="mr-10 fs35">&#9872;</span>-->
<!---->
<!--    </p>-->

    <h2 class="h2-page-header mt-20 tsd">ГЛАВНАЯ СТРАНИЦА</h2>











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
        <p><span fs20 fb>ЦЕЛЬ:</span> развитие профессиональной, информационно-познавательной,
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
