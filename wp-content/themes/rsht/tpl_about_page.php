<?php
/**
Template Name: Шаблон О нас
Template Post Type: page
 */

get_header();

?>

<?php
if ( have_posts() ) {

    // Load posts loop.
    while ( have_posts() ) {
        the_post();
    }
}

$pages = get_posts([
    'post_type' => 'page',
    'post_parent' => get_the_ID()
]);
?>

	<section id="primary" class="content-area">
		<main id="main" class="site-main contacts-page">
            <div class="container">
                <h2 class="block-header blue-font"><?php the_title();?></h2>
            </div>
            <div class="container wide">
                <?php foreach ($pages as $post) : ?>
                <?php setup_postdata($post);?>
                    <div class="about-item clearfix">
                        <div class="about-excerpt-img">
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="about-excerpt">
                            <div class="about-excerpt-text">
                                <header class="about-excerpt-header"><?php the_title() ?></header>
                                <div class="about-excerpt-content"><?php the_excerpt() ?></div>
                                <div class="about-more-link"><a href="#">Читать далее</a></div>
                                <?php  ?>
                            </div>
                        </div>
                        <div class="about-content">
                            <?php the_content(''); ?>
                        </div>
                        <div class="about-item-source">
                            <?php
                            $date = date_create(get_the_date());
                            $date = date_format($date, 'd.m.Yг.');

                            ?>
                            <span>Источник: «<?php the_field('source', get_the_ID())?>»</span>
                            <span><?php echo $date;?></span>
                        </div>
                    </div>
                <?php wp_reset_postdata();?>
                <?php endforeach; ?>
            </div>
		</main><!-- .site-main -->
	</section><!-- .content-area -->
<script>
    jQuery(document).ready(function () {
      jQuery(".about-more-link").on('click', function (e) {
        e.preventDefault();
        jQuery(e.target).closest('.about-item').find('.about-content').css({display: "block"});
      });
    });
</script>
<?php
get_footer();
