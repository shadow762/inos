<?php
/**
 * Template Name: Шаблон контактов
 * Template Post Type: page
 */

get_header();
?>

    <section id="primary" class="content-area">
        <main id="main" class="site-main contacts-page">
            <div class="container">
                <h2 class="block-header blue-font"><?php the_title(); ?></h2>
            </div>
            <div class="container wide">
                <section class="main-contacts">
                    <div class="main-contacts-block">
                        <div class="main-contacts-desc">
                            <i><?php echo nl2br(get_field('main_org_info')); ?></i>
                        </div>
                        <div class="main-contacts-meta">
                            <div class="main-contacts-address contact-address">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/place_icon.png' ?>">
                                </div>
                                <?php the_field('main_address'); ?></div>
                            <div class="main-contacts-phone contact-phone">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/phone_icon.png' ?>">
                                </div>
                                <?php the_field('main_phone'); ?>
                            </div>
                            <div class="main-contacts-mail contact-mail">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/mail_icon.png' ?>">
                                </div>
                                <a href="mail:<?php the_field('main_mail'); ?>"><?php the_field('main_mail'); ?></a>
                            </div>
                        </div>
                        <div class="main-contacts-bank">
                            <?php echo nl2br(get_field('main_req')); ?>
                        </div>
                    </div>
                    <div class="main-contacts-img">
                        <img src="<?php the_field('main_image'); ?>">
                    </div>
                </section>
                <section class="branch-contacts">
                    <div class="branch-contact kvant">
                        <header class="branch-contact-header">«Кванториум»</header>
                        <div class="branch-contact-chief">
                            <div class="branch-contact-chief-photo">
                                <img src="<?php the_field('main_image'); ?>">
                            </div>
                            <div class="branch-contact-chief-desc">
                                <?php echo nl2br(get_field('kvant_chief')); ?>
                            </div>
                        </div>
                        <div class="branch-contact-desc">
                            <i><?php echo nl2br(get_field('kvant_org_info')); ?></i>
                        </div>
                        <div class="branch-contact-meta">
                            <div class="branch-contact-mail contact-mail">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/mail_icon.png' ?>">
                                </div>
                                <a href="mail:<?php the_field('kvant_mail'); ?>"><?php the_field('kvant_mail'); ?></a>
                            </div>
                            <div class="branch-contact-phone contact-phone">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/phone_icon.png' ?>">
                                </div>
                                <?php the_field('kvant_phone'); ?>
                            </div>
                            <div class="branch-contact-address contact-address">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/place_icon.png' ?>">
                                </div>
                                <?php the_field('kvant_address'); ?>
                            </div>
                        </div>
                        <div class="branch-contact-handle">
                            <a href="#">Показать на карте</a>
                        </div>
                    </div>
                    <div class="branch-contact rsht">
                        <header class="branch-contact-header">Региональный Школьный Технопарк</header>
                        <div class="branch-contact-chief">
                            <div class="branch-contact-chief-photo">
                                <img src="<?php the_field('rsht_image'); ?>">
                            </div>
                            <div class="branch-contact-chief-desc">
                                <?php echo nl2br(get_field('rsht_chief')); ?>
                            </div>
                        </div>
                        <div class="branch-contact-desc">
                            <i><?php echo nl2br(get_field('rsht_org_info')); ?></i>
                        </div>
                        <div class="branch-contact-meta">
                            <div class="branch-contact-mail contact-mail">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/mail_icon.png' ?>">
                                </div>
                                <a href="mail:<?php the_field('rsht_mail'); ?>"><?php the_field('rsht_mail'); ?></a>
                            </div>
                            <div class="branch-contact-phone contact-phone">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/phone_icon.png' ?>">
                                </div>
                                <?php the_field('rsht_phone'); ?>
                            </div>
                            <div class="branch-contact-address contact-address">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/place_icon.png' ?>">
                                </div>
                                <?php the_field('rsht_address'); ?>
                            </div>
                        </div>
                        <div class="branch-contact-handle">
                            <a href="#">Показать на карте</a>
                        </div>
                    </div>
                    <div class="branch-contact cdntt">
                        <header class="branch-contact-header">«Центр детского научно- технического творчества»</header>
                        <div class="branch-contact-chief">
                            <div class="branch-contact-chief-photo">
                                <img src="<?php the_field('cdntt_image'); ?>">
                            </div>
                            <div class="branch-contact-chief-desc">
                                <?php echo nl2br(get_field('cdntt_chief')); ?>
                            </div>
                        </div>
                        <div class="branch-contact-desc">
                            <i><?php echo nl2br(get_field('cdntt_org_info')); ?></i>
                        </div>
                        <div class="branch-contact-meta">
                            <div class="branch-contact-mail contact-mail">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/mail_icon.png' ?>">
                                </div>
                                <a href="mail:<?php the_field('cdntt_mail'); ?>"><?php the_field('cdntt_mail'); ?></a>
                            </div>
                            <div class="branch-contact-phone contact-phone">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/phone_icon.png' ?>">
                                </div>
                                <?php the_field('cdntt_phone'); ?>
                            </div>
                            <div class="branch-contact-address contact-address">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() . '/imgs/place_icon.png' ?>">
                                </div>
                                <?php the_field('cdntt_address'); ?>
                            </div>
                        </div>
                        <div class="branch-contact-handle">
                            <a href="#">Показать на карте</a>
                        </div>
                    </div>
                </section>
                <section class="contacts-map">
                    <div class="container wide">
                        <div class="map-container">
                            <a class="dg-widget-link"
                               href="http://2gis.ru/astrakhan/firm/1126429188202456/center/48.04070234298707,46.363159170985085/zoom/16?utm_medium=widget-source&utm_campaign=firmsonmap&utm_source=bigMap">Посмотреть
                                на карте Астрахани</a>
                            <div class="dg-widget-link"><a
                                        href="http://2gis.ru/astrakhan/center/48.04071,46.362978/zoom/16/routeTab/rsType/bus/to/48.04071,46.362978╎Региональный школьный технопарк, ГАОУ?utm_medium=widget-source&utm_campaign=firmsonmap&utm_source=route">Найти
                                    проезд до Региональный школьный технопарк, ГАОУ</a></div>
                            <script charset="utf-8" src="https://widgets.2gis.com/js/DGWidgetLoader.js"></script>
                            <script charset="utf-8">new DGWidgetLoader({
                                    "width": 1142,
                                    "height": 638,
                                    "borderColor": "#a3a3a3",
                                    "pos": {"lat": 46.363159170985085, "lon": 48.04070234298707, "zoom": 16},
                                    "opt": {"city": "astrakhan"},
                                    "org": [{"id": "1126429188202456"}]
                                });</script>
                            <noscript style="color:#c00;font-size:16px;font-weight:bold;">Виджет карты использует
                                JavaScript. Включите его в настройках вашего браузера.
                            </noscript>
                            <!--                            <img src="-->
                            <style>
                                iframe {
                                    border: none !important;
                                }
                            </style>
                        </div>
                    </div>
                </section>
            </div>
        </main><!-- .site-main -->
    </section><!-- .content-area -->

<?php
get_footer();
