<?php
//
// Организации (вкладка)
//
//
get_header();
?>

    <h4 class="h4-page-header mt-20 tsd">ЭЛЕКТРОННЫЕ ОБРАЗОВАТЕЛЬНЫЕ РЕСУРСЫ</h4>
    <h2 class="h2-page-header mtb-10 tsd"><span>&#10037;</span></h2>
    <h2 class="h2-page-header tsd">ОРГАНИЗАЦИИ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/shar4.png" alt="" class="w250 m0auto d-block mt-50">


    <p class="w600 m0auto fs18 fb mt-50 tal txt-vi tsd">МИНИСТЕРСТВО ПРОСВЕЩЕНИЯ РОССИЙСКОЙ ФЕДЕРАЦИИ</p>
    <p class="w800 m0auto fs18 fb  tal txt-vi2 tsd">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/computer.png" class="w30h30">
        Адрес ресурса: <a href="https://edu.gov.ru/  " target="_blank">https://edu.gov.ru/</a>
    </p>



    <p class="w600 m0auto fs18 fb mt-50 tal txt-vi tsd">ФЕДЕРАЛЬНАЯ СЛУЖБА ПО НАДЗОРУ В СФЕРЕ ОБРАЗОВАНИЯ И НАУКИ (РОСОБРНАДЗОР)</p>
    <p class="w800 m0auto fs18 fb tal txt-vi2 tsd">
        <img src="<?php echo get_template_directory_uri()?>/img/icons/computer.png" class="w30h30">
        Адрес ресурса: <a href=" http://obrnadzor.gov.ru/" target="_blank"> http://obrnadzor.gov.ru/</a>
    </p>

    <p class="w600 m0auto fs18 fb mt-50 tal txt-vi tsd">Академия повышения квалификации и профессиональной переподготовки работников образования</p>
    <p class="w800 m0auto fs18 fb tal txt-vi2 tsd">
         <img src="<?php echo get_template_directory_uri()?>/img/icons/computer.png" class="w30h30">
        Адрес ресурса: <a href="http://www.apkpro.ru/" target="_blank">http://www.apkpro.ru/</a>
    </p>

    <p class="w600 m0auto fs18 fb mt-50 tal txt-vi tsd">Координационный совет учебно-методических объединений и научно-методических советов высшей школы</p>
    <p class="w800 m0auto fs18 fb tal txt-vi2 tsd">
         <img src="<?php echo get_template_directory_uri()?>/img/icons/computer.png" class="w30h30">
        Адрес ресурса: <a href="http://fgosvo.ru/" target="_blank">http://fgosvo.ru/</a>
    </p>

    <p class="w600 m0auto fs18 fb mt-50 tal txt-vi tsd">Электронная библиотека Московского городского психолого-педагогического университета</p>
    <p class="w800 m0auto fs18 txt-vi2 tsd">Электронная библиотека, в которой представлена коллекция учебных, учебно-методических
        и научных материалов по психологии и педагогике.
    </p>

    <p class="w800 m0auto fs18 fb tal txt-vi2 tsd">
         <img src="<?php echo get_template_directory_uri()?>/img/icons/computer.png" class="w30h30">
        Адрес ресурса: <a href="http://www.apkpro.ru/" target="_blank">http://www.apkpro.ru/</a>
    </p>

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