<?php
//
// Финансово-хозяйственная деятельность (подраздел)
//
//
get_header();
?>

    <h2 class="h2-page-header mt-20 tsd">ФИНАНСОВО-ХОЗЯЙСТВЕННАЯ ДЕЯТЕЛЬНОСТЬ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/keys.png" alt="" class="w250 m0auto d-block mtb-20">



    <p class="w800 m0auto fs18 mt-20 txt-vi tsd">
        <span class="mr-30"></span>
        Институт осуществляет дополнительную профессиональную образовательную деятельность
        на основе добровольной целевой финансовой помощи родителей учащихся образовательных учреждений,
        сотрудничающих с Институтом.
    </p>



    <p class="w800 m0auto fs18 mt-20 txt-vi tsd">
        <span class="fs25 mr-10 txt-red">&#10022;</span>
        <b>НОУ ДО «ИНОС»</b> не ведет образовательной деятельности, финансовое обеспечение которой осуществляется
        за счет бюджетных ассигнований Федерального бюджета, бюджетов субъектов Российской Федерации, местных бюджетов.
    </p>

    <img src="<?php echo get_template_directory_uri()?>/img/shnur.png" alt="шнурки" class="w600 m0auto d-block mtb-20">

    <p class="w800 m0auto fs18 mt-20 fb tal tsd txt-vi "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">ДОГОВОР О СОТРУДНИЧЕСТВЕ С ИНОС</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>


    <p class="w800 m0auto fs18 mt-20 fb tal "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">СОГЛАШЕНИЕ О СОТРУДНИЧЕСТВЕ С ИНОС</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>

    <p class="w800 m0auto fs18 mt-20 fb tal "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">ДОГОВОР С РОДИТЕЛЯМИ О  НАУЧНО-МЕТОДИЧЕСКОМ ОБЕСПЕЧЕНИИ</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>

    <p class="w800 m0auto fs18 mt-20 fb tal "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">ПРОТОКОЛ СОБРАНИЯ РОДИТЕЛЕЙ</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>

    <p class="w800 m0auto fs18 mt-20 fb tal "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">ОБЯЗАТЕЛЬСТВА ИНСТИТУТА</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>

    <p class="w800 m0auto fs18 mt-20 fb tal "><span class="mr-30 fs35">&#128394;</span><span class="txt-und">УЧЕТНАЯ КАРТОЧКА СЛУШАТЕЛЯ ИНОС</span></p>
    <p class="w800 m0auto fs18"><span class="mr-30 fs25">&#10022;</span><a href="#" class="w800 m0auto">Скачать .pdf</a></p>

    <!--Нижнее меню-->
<p class="mtb-20"></p>
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