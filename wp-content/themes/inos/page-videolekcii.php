<?php
//
// Видеолекции (вкладка)
//
//
get_header();
?>



    <img src="<?php echo get_template_directory_uri()?>/img/plenka.png" alt="" class="w250 m0auto d-block mtb-20">

    <h4 class="h4-page-header">ЭЛЕКТРОННЫЕ ОБРАЗОВАТЕЛЬНЫЕ РЕСУРСЫ</h4>
    <h2 class="h2-page-header mt-20">ВИДЕОЛЕКЦИИ</h2>



    <p class="w800 m0auto fs18 fb mt-20">
        <img src="<?php echo get_template_directory_uri()?>/img/spk.png" class="w100h100">
        UniverTV.ru
    </p>
    <ul class="w800 m0auto ul-2">
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Открытый образовательный видеопортал. Здесь Вы можете: </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>посмотреть образовательные фильмы на различные темы;  </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>побывать на лекциях в ведущих российских и зарубежных вузах; </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>посетить престижную научную конференцию или научно-популярную лекцию по интересующему вас вопросу; </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>в разделе «Школа» – увидеть лучшие образцы преподавания сложных школьных тем. </li>

    </ul>
    <p class="w800 m0auto fs18 mt-10">
        <span class="fs18 mr-10">&#128187;</span>
        Адрес ресурса: <a href="http://univertv.ru/" target="_blank">http://univertv.ru/</a>
    </p>


    <p class="w800 m0auto fs18 fb mt-20">
        <img src="<?php echo get_template_directory_uri()?>/img/spk.png" class="w100h100">
        VideoLectures.NET
    </p>
    <ul class="w800 m0auto ul-2">
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Репозиторий образовательных видеолекций в свободном доступе.</li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Лекции были прочитаны выдающимися исследователями
            на престижных мероприятиях (на конференциях, в ходе работы круглых столов и летних школ и т.д.).  </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Целью портала является популяризация науки, обмен идеями и знаниями. </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Материалы портала отличаются высоким качеством.  </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Все лекции систематизированы по предметам. </li>

    </ul>
    <p class="w800 m0auto fs18 mt-10">
        <span class="fs18 mr-10">&#128187;</span>
        Адрес ресурса: <a href="http://videolectures.net/" target="_blank">http://videolectures.net/</a>
    </p>



    <p class="w800 m0auto fs18 fb mt-20">
        <img src="<?php echo get_template_directory_uri()?>/img/spk.png" class="w100h100">
        Лекториум ТВ
    </p>
    <ul class="w800 m0auto ul-2">
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Федеральная интернет-библиотека видеолекций лучших лекторов ведущих ВУЗов России. </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Все материалы публикуются только по согласованию с лекторами и учебными заведениями.  </li>
        <li class="fb"><span class="fs18 mr-10 txt-red">&#10022;</span>Доступ к библиотеке – свободный и бесплатный. </li>
    </ul>
    <p class="w800 m0auto fs18 mt-10">
        <span class="fs18 mr-10">&#128187;</span>
        Адрес ресурса: <a href="http://www.lektorium.tv/" target="_blank">http://www.lektorium.tv/</a>
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