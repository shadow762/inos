<?php
//
// Стипендии (подраздел)
//
//
get_header();
?>




    <h2 class="h2-page-header tsd mt-20">СТИПЕНДИИ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/img-btn-20.png" alt="" class="w250 m0auto d-block mt-50">

    <p class="w800 m0auto fs18 mt-10 tal txt-vi2 tsd">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/star.png" alt="" class="w20h20 mr-10">
        Слушатели курсов повышения квалификации <span class="fi fb">получают ежемесячную стипендию</span>, которая выплачивается из
        средств, перечисляемых родителями в виде добровольных целевых взносов на уставную деятельность Института
    </p>
    <p class="w800 m0auto fs18 mt-10 tal txt-vi2 tsd">
        В Институте установлены следующие критерии выплаты стипендии слушателям курсов повышения квалификации:
    </p>

    <p class="w800 m0auto fs18 mt-10 tal txt-vi2 tsd">

        размер стипендии каждого слушателя курсов повышения квалификации Института новых образовательных систем
        определяется в соответствии с объемом добровольной целевой финансовой помощи родителей учащихся
        образовательного учреждения, сотрудничающего с Институтом, зависит от выполнения им учебно-тематического
        плана повышения квалификации, а также с учетом предложений образовательного учреждения.
    </p>

    <img src="<?php echo get_template_directory_uri()?>/img/shnur.png" alt="шнурки" class="w600 m0auto d-block mtb-20">

  <div style="height: 800px"></div>
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