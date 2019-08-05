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

	<section id="primary" class="content-area">
		<main id="main" class="site-main">
            <div class="container wide">
                <section class="category-info-section">
                    <div class="category-info-block">
                        <h2 class="category-info-header">Робототехника</h2>
                        <div class="category-info-desc">
                            Знакомьтесь, это текст-рыба, текст-текст-текст,
                            очень полезный текст о пользе сабжа.
                            Выделять можно так или вот так.
                        </div>
                        <div class="category-info-meta">
                            <div class="meta-age">
                                <header class="meta-age-header">Возраст:</header>
                                <span>От 11 до 18 лет</span>
                            </div>
                            <div class="meta-location">
                                <header class="meta-location-header">Локации:</header>
                                <span>Технопарк, ул. Улица, 22 РШТ, ул. Улица2, 33</span>
                            </div>
                            <div class="meta-count">
                                <header class="meta-count-header">Частота занятий:</header>
                                <span>от 2 до 4 раз в неделю</span>
                            </div>
                            <div class="meta-cost">
                                <header class="meta-cost-header">Стоимость:</header>
                                <span>от 0о до 2400о</span>
                            </div>
                        </div>
                    </div>
                    <div id="category-info-images">
                        <?php echo do_shortcode('[slick-slider category="6" arrows="false"]')?>
                    </div>
                </section>
            </div>

            <div class="container wide">
                <h3 class="block-header blue-font mtop-50">УЧЕБНЫЕ  ПРОГРАММЫ</h3>

                <section class="category-courses-section">
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <!-- Button trigger modal -->
                            <a href="#" data-toggle="modal" data-target="#myModal">Подробнее</a>
                        </div>
                    </div>
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <a href="#">Подробнее</a>
                        </div>
                    </div>
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <a href="#">Подробнее</a>
                        </div>
                    </div>
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <a href="#">Подробнее</a>
                        </div>
                    </div>
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <a href="#">Подробнее</a>
                        </div>
                    </div>
                    <div class="category-course">
                        <header class="category-course-header">5-10 класс</header>
                        <div class="category-course-info">
                            <div class="category-course-title">Название курса</div>
                            <div class="category-course-location">Отдел «ЦДНТТ»</div>
                            <div class="category-course-time">2 месяца</div>
                            <div class="category-course-location">от 200 у/академ.час</div>
                        </div>
                        <div class="category-course-more">
                            <a href="#">Подробнее</a>
                        </div>
                    </div>
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

		<?php
		if ( have_posts() ) {

			// Load posts loop.
			while ( have_posts() ) {
				the_post();
			}
		}
		?>

		</main><!-- .site-main -->
	</section><!-- .content-area -->

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-category-course-age">
                    от 13 лет
                </div>
                <div class="modal-category-course-content">
                    <h4 class="modal-category-course-header">Название курса</h4>
                    <div class="modal-category-course-info">
                        <div class="category-course-location">Отдел «ЦДНТТ»</div>
                        <div class="category-course-time">2 месяца</div>
                        <div class="category-course-location">от 200 у/академ.час</div>
                    </div>
                    <div class="modal-category-course-desc">
                        Краткое описание курса, занимающее около четырёх строк.
                        Текст, текст, текст, текст, текст.
                        Текст, текст, текст, текст, текст, текст, текст.
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
<?php
get_footer();
