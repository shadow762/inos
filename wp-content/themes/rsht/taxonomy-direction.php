<?php

get_header();

$taxonomy= get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) );
?>

	<section id="primary" class="content-area">
		<main id="main" class="site-main">
            <div class="container wide">
                <section class="category-info-section">
                    <div class="category-info-block">
                        <h2 class="category-info-header"><?php echo $taxonomy->name; ?></h2>
                        <div class="category-info-desc">
                            <?php echo nl2br($taxonomy->description);?>
                        </div>
                        <div class="category-info-meta">
                            <div class="meta-age">
                                <header class="meta-age-header">Возраст:</header>
                                <span>От <?php the_field('age_from', $taxonomy); ?>  до <?php the_field('age_to', $taxonomy); ?> лет</span>
                            </div>
                            <div class="meta-location">
                                <header class="meta-location-header">Локации:</header>
                                <span><?php the_field('location', $taxonomy); ?></span>
                            </div>
                            <div class="meta-count">
                                <header class="meta-count-header">Частота занятий:</header>
                                <span>от <?php the_field('count_from', $taxonomy); ?> до <?php the_field('count_to', $taxonomy); ?> раз в неделю</span>
                            </div>
                            <div class="meta-cost">
                                <header class="meta-cost-header">Стоимость:</header>
                                <span>от <?php the_field('cost_from', $taxonomy); ?>₽ до <?php the_field('cost_to', $taxonomy); ?>₽</span>
                            </div>
                        </div>
                    </div>
                    <div id="category-info-images">
                        <?php echo do_shortcode('[slick-slider category="' . get_field('slider_id', $taxonomy) . '" arrows="false"]')?>
                    </div>
                </section>
            </div>

            <div class="container wide">
                <h3 class="block-header blue-font mtop-50">УЧЕБНЫЕ  ПРОГРАММЫ</h3>

                <section class="category-courses-section">
                    <?php
                    $arg = array(
                        'numberposts' => 0,
                        'post_type' => 'post',
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'direction',
                                'field' => 'term_id',
                                'terms' => $taxonomy->term_id
                            )
                        ),
                        'post_status' => 'publish'
                    );
                    $posts = get_posts( $arg );
                    $count = 0;

                    foreach ($posts as $post) :
                    ?>
                        <div class="category-course">
                            <header class="category-course-header"><?php the_field('class');?> класс</header>
                            <div class="category-course-info">
                                <div class="category-course-title"><?php echo $post->post_title; ?></div>
                                <div class="category-course-location"><div class="image"><img src="<?php echo get_template_directory_uri() . '/imgs/course_location_icon.png' ?>"></div><?php the_field('unit');?></div>
                                <div class="category-course-time"><div class="image"><img src="<?php echo get_template_directory_uri() . '/imgs/course_time_icon.png' ?>"></div><?php the_field('duration_number');?> <?php the_field('duration_item');?></div>
                                <div class="category-course-location"><div class="image"><img src="<?php echo get_template_directory_uri() . '/imgs/course_money_icon.png' ?>"></div>от <?php the_field('cost');?> ₽/академ.час</div>
                            </div>
                            <div class="category-course-more">
                                <!-- Button trigger modal -->
                                <a href="#" data-toggle="modal" data-target="#myModal<?php echo $count;?>">Подробнее</a>
                            </div>
                        </div>
                    <?php $count++; endforeach; ?>
                </section>

            </div>
            <div class="container wide">
                <section class="quotes-section">
                    <div class="quote-item">
                        <div class="quote-img">
                            <img src="<?php echo get_template_directory_uri() . '/imgs/quote.png'?>">
                        </div>
                        <div class="quote-content">
                            <div class="quote-text">
                                <i>«Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
<br><br>
                                Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo consequat»</i>
                            </div>
                            <div class="quote-author">
                                <i>— Author</i>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="container">
                <section class="cat-bottom-img">
                    <img src="<?php echo get_template_directory_uri() . '/imgs/category-bottom-slide.png' ?>">
                </section>
            </div>
		</main><!-- .site-main -->
	</section><!-- .content-area -->

    <?php $count = 0; foreach ($posts as $post) : ?>
    <div class="modal fade" id="myModal<?php echo $count;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-category-course-age">
                    от <?php  the_field('age'); ?> лет
                </div>
                <div class="modal-category-course-content">
                    <h4 class="modal-category-course-header"><?php echo $post->post_title; ?></h4>
                    <div class="modal-category-course-info">
                        <div class="category-course-location"><?php the_field('unit');?></div>
                        <div class="category-course-time"><?php the_field('duration_number');?> <?php the_field('duration_item');?></div>
                        <div class="category-course-location">от <?php the_field('cost');?> ₽/академ.час</div>
                    </div>
                    <div class="modal-category-course-desc">
                        <?php echo $post->description; ?>
                    </div>
                    <div class="modal-category-course-show">
                        <button class="show-btn">Показать расписание</button>
                    </div>
                    <div class="modal-category-course-block">

                    </div>
                    <div class="modal-category-course-subscribe">
                        <button class="subscribe-btn">Записаться</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $count++; endforeach; ?>
<?php
get_footer();
