<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */

?>

<p class="mtb-20"></p>
<div class="bottom-pic-block">
    <div class="pic-block-item ">
        <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-14.png" alt="" class="w65ph107">
    </div>
    <div class="pic-block-item">
        <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-7.png" alt="" class="w65ph107">
    </div>
    <div class="pic-block-item ">
        <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-8.png" alt="" class="w100phi">
    </div>
    <div class="pic-block-item ">
        <img src="<?php echo get_template_directory_uri() ?>/img/+inos+.png" alt="" class="w100phi">
    </div>
    <div class="pic-block-item">
        <img src="<?php echo get_template_directory_uri() ?>/img/img-btn-5.png" alt="" class="w100phi">
    </div>
    <div class="pic-block-item ">
        <img src="<?php echo get_template_directory_uri() ?>/img/abacus1.jpg" alt="" class="w100phi">
    </div>
    <div class="pic-block-item ">
        <img src="<?php echo get_template_directory_uri() ?>/img/kts-19.png" alt="" class="w65ph107">
    </div>


</div>
<?php wp_nav_menu([
    'theme_location' => 'bottom',
    'items_wrap' => '<div id="%1$s" class="bottom-menu-block %2$s">%3$s</div>',
    'walker' => new BottomMenuWalker()
]); ?>



</div>
</div>

<div class="container clearfix">
    <div class="footer-space-block"></div>
    <div class="footer-content-block">
        <div class="needle-block"></div>

        <div class="footer-split">
            <p class="fi fb">Обновление сайта – 1 сентября 2019</p>
        </div>

        <div class="footer-copyright">
            <p>© ИНСТИТУТ НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ.</p>
            <p>Все права защищены. Использование материалов возможно только с разрешения владельцев сайта.</p>
            <p>Обратная связь:<a href="mailto:inosru@mail.ru" class="txt-blue">inosru@mail.ru</a></p>
        </div>
    </div>
</div>


<script>
    document.querySelector('body').addEventListener('contextmenu', function (event) {
        if(event.button == 2) {
            event.preventDefault();
        }
    });
</script>
</body>
</html>
