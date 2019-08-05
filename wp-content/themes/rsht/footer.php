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
	</div><!-- #content -->

<footer class="main-footer">
   <div class="container">

        <div class="footer-main">
            <div class="menu-col">
                <h3>Направления</h3>
                <?php
                wp_nav_menu( [
                    'theme_location'  => 'footer-direction',
                    'container'       => 'div',
                    'menu_class'      => 'menu',
                    'menu_id'         => 'footer-direction',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu'
                ] );

                ?>
            </div>
            <div class="menu-col">
                <h3>Школам</h3>
                <?php
                wp_nav_menu( [
                    'theme_location'  => 'footer-school',
                    'container'       => 'div',
                    'menu_class'      => 'menu',
                    'menu_id'         => 'footer-school',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu'
                ] );

                ?>
                <h3>Предприятиям</h3>
                <?php
                wp_nav_menu( [
                    'theme_location'  => 'footer-companies',
                    'container'       => 'div',
                    'menu_class'      => 'menu',
                    'menu_id'         => 'footer-companies',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu'
                ] );

                ?>
            </div>
            <div class="menu-col">
                <h3>О нас</h3>
                <?php
                wp_nav_menu( [
                    'theme_location'  => 'footer-about',
                    'container'       => 'div',
                    'menu_class'      => 'menu',
                    'menu_id'         => 'footer-about',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu'
                ] );

                ?>
            </div>
            <div class="menu-col">
                <h3><a href="#">Новости</a></h3>
                <h3><a href="#">Газета "Мы можем"</a></h3>
                <h3><a href="<?php echo get_site_url() . '/contacts';?>">Контакты</a></h3>

                <ul>
                    <li><a href="#">г. Астрахань</a></li>
                    <li><a href="#">ул. Анри Барбюса 7</a></li>
                    <li><a href="#">+7 905 060 05 66</a></li>
                    <li><a href="#">+7 8512 622 711</a></li>
                    <li><a href="#">rstp30@gmail.com</a></li>
                </ul>
                <div class="footer-socials">
                    <a href="<?php the_field('ok', 251)?>" class="socials-ok" target="_blank"></a>
                    <a href="<?php the_field('inst', 251)?>" class="socials-insta" target="_blank"></a>
                    <a href="<?php the_field('vk', 251)?>" class="socials-vk" target="_blank"></a>
                </div>
            </div>
        </div>

    </div>
    <div class="copywrite-wrapper">
        <div class="footer-bottom">
            <br>
            <span>&copy; xxx - yyy Copyright, Inc</span>

        </div>
    </div>
</footer>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
