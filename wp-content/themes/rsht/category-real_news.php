<?php
/**
Template Name: Cateogory О нас

 */

get_header();

?>

<?php
//if ( have_posts() ) {

    // Load posts loop.
    //while ( have_posts() ) {
  //      the_post();
 //   }
//}

//$pages = get_posts([
  //  'post_type' => 'page',
   // 'post_parent' => get_the_ID()
//]);
?>



    <section id="primary" class="content-area">
        <main id="main" class="site-main contacts-page">
            <div class="container">
                <h2 class="block-header blue-font">НОВОСТИ</h2>
            </div>
            <div class="container wide">
                <?php $the_query = new WP_Query('cat=42'); ?>
<?php while ($the_query -> have_posts()) : $the_query -> the_post(); ?>
                    <?php setup_postdata($post);?>
                    <div class="about-item clearfix">
                        <div class="about-excerpt-img">
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="about-excerpt">
                            <div class="about-excerpt-text">
                                <header class="about-excerpt-header"><?php the_title() ?></header>
                                <div class="about-excerpt-content"><?php the_excerpt() ?></div>
                                <div class="about-excerpt-content"><?php the_content() ?></div>
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
<?php endwhile; ?>

            </div>
        </main><!-- .site-main -->
    </section><!-- .content-area -->
<?php
get_footer();