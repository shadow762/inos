<?php
//
// Документы
//
//
get_header();
?>


    <h4 class="h4-page-header mtb-20">ОБРАЗОВАНИЕ</h4>
    <h2 class="h2-page-header">ПРОГРАММЫ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ РАБОТНИКОВ ОБРАЗОВАНИЯ</h2>

    <img src="<?php echo get_template_directory_uri()?>/img/image28.png" alt="лого раздела" class="w250 mt-20 m0auto d-block">


    <p class="w800 m0auto fs18 fb fi mt-20">С целью проведения в Институте новых образовательных систем курсов повышения квалификации педагогических
        работников образовательных учреждений разработаны, с учетом новых нормативных документов, и утверждены
        Ученым советом Института следующие учебные программы повышения квалификации работников
        образования (дополнительные профессиональные образовательная программы повышения квалификации):
    </p>

    <img src="<?php echo get_template_directory_uri()?>/img/shnur.png" alt="шнурки" class="w600 m0auto d-block mtb-20">

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
        <a href="#">«Содержание, методика и технологии преподавания в современной
            начальной школе в контексте Федерального государственного образовательного стандарта».  </a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="#">«Содержание, методика и технологии работы руководителя общеобразовательной школы в
                контексте Федерального государственного образовательного стандарта».   </a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="#">«Содержание, методика и технологии преподавания математики в контексте Федерального
                государственного образовательного стандарта». </a></i>
    </p>

    <p class="w800 m0auto fs18 mt-10 fb"><img src="<?php echo get_template_directory_uri()?>/img/img-btn-9.png" alt="" class="w50h50">
        <i>
            <a href="#">«Содержание, методика и технологии преподавания в современной начальной школе в контексте
                Федерального государственного образовательного стандарта». </a></i>
    </p>



    <p class="w800 m0auto fs18 fb fi mt-10"><img src="<?php echo get_template_directory_uri()?>/img/pero.png" alt="" class="w50h50">
        
        <a href="#">Лекционно-семинарские занятия, проводятся на базе Института авторами УМК и Федеральных нормативных
            документов (ФГОС, ГИА, ОГЭ, ЕГЭ). </a>
    </p>

    <ul class="w600 m0auto fi fb mt-20">
        <li><a href="#">«Пед.состав»</a></li>
        <li><a href="#">«Текущие циклы лекций»</a></li>
    </ul>

    <p class="w800 m0auto fs18 fb fi mt-10"><img src="<?php echo get_template_directory_uri()?>/img/pero.png" alt="" class="w50h50">

        <a href="#">Консультации для слушателей проводятся в дни лекционных занятий, семинаров, совещаний, а также
            в соответствии с заявками образовательных учреждений.</a>
    </p>

    <p class="w800 m0auto fs18 fb fi mt-10"><img src="<?php echo get_template_directory_uri()?>/img/pero.png" alt="" class="w50h50">

        <a href="#">Слушателям, успешно освоившим дополнительную профессиональную программу и прошедшим итоговую
            аттестацию, выдаются Удостоверения о повышении квалификации.</a>
    </p>

    <p class="w800 m0auto fs18 fb fi mt-10"><img src="<?php echo get_template_directory_uri()?>/img/pero.png" alt="" class="w50h50">

        <a href="#">Удостоверение о повышении квалификации выдается учителям, а также руководителям
            ОУ (очно-заочная форма) по программе: «Содержание, методика и технологии преподавания (…указание предмета…)
            в контексте Федерального государственного образовательного стандарта»
            в объеме 72 учебных часов.
        </a>
    </p>

    <ul class="w600 m0auto fi fb mtb-20">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
    </ul>

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