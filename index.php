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
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>
<main class="main">
    <section class="carousel">
        <div class="sliders">
            <div class="img"></div>
        </div>
        <div class="overlays">
            <div class="bar">
                <h2>
                    Super cool and cheap building company headed by super cool person
                    <strong>Oleg</strong>
                    who is my friend and moreover my last coworker.
                </h2>
            </div>
        </div>
        <div class="sublays">
            <div class="sub">
                <p>Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
            </div>
        </div>
        <div class="carousel-buutons">
            <button class="carousel-button">Learn more about Button with some text</button>
        </div>
        <div class="nav-links-container">
            <ul class="nav-links">
                <li><a href="#" class="nav-link">Some#1</a></li>
                <li><a href="#" class="nav-link">Some#2</a></li>
                <li><a href="#" class="nav-link">Some#3</a></li>
                <li><a href="#" class="nav-link">Some#4</a></li>
                <li><a href="#" class="nav-link">Some#5</a></li>
                <li><a href="#" class="nav-link">Some#6</a></li>
            </ul>
        </div>
    </section>
    <section class="main-section">
        <div class="white-blockx">
            <div class="row">
                <div class="text">
                    <p>Kiewit is one of North America’s largest and most respected engineering and construction organizations. Kiewit’s commitment to safety, quality and environmental stewardship are ingrained in everything we do. It’s visible in our core values, the work that we build and in our people.</p>
                    <p>Learn more about Kiewit</p>
                    <p class="quote-buttons.">
                        <button class="button" id="button-animation">Engineering</button>
                        <button class="button">Construction</button>
                    </p>
                </div>
            </div>
            <div class="quotes">
                <blockquote class="block-quote">
                    <div class="stat">
                        <span> 1-st curious fact</span>
                        <span> 2-nd curious fact</span>
                        <span> 3-rd curious fact</span>
                    </div>
                </blockquote>
            </div>
        </div>
    </section>
    <section class="billboard">
        <div class="billboard-container">
            <h3>Beautiful title for video section</h3>
            <div class="video">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/LVzrGSGAFHs" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
        <div class="billboard-content">
            <p>Are you ready to make an impact? We know you’re not just looking for a job. You want an adventure — to do something that makes a real impact on the world around you. You want more opportunity, cutting-edge training, meaningful responsibilities from Day One, and you never settle for second best. That’s what you’ll find here at Kiewit. So if you’re looking for more than a job, look no further.</p>
            <div class="video-buttons">
                <a>Button1</a>
                <a>Button2</a>
                <a>Button3</a>
            </div>
        </div>
    </section>
    <section class="projects">
        <div class="projects-container">
            <h3>Text for projects title</h3>
            <div class="projects-display">
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
                <div class="column">Image</div>
            </div>
            <p class="gallery-button">
                <a>Button for gallery</a>
            </p>
        </div>
    </section>
    <section class="dark-section">
        <div class="dark-container">
            <h3>Any story for example</h3>
            <p>Short description about section</p>
        </div>
        <div class="dark-carousel">
            <div> Here is image carousel</div>
        </div>
    </section>
    <section class="news">
        <div class="news-container">
            <h3>News</h3>
        </div>
        <div class="news-row">
            <div class="news-item">
                <div class="item-img">Here is image</div>
                <div class="item-body">
                    <div class="item-title">
                        <h4>Text</h4>
                    </div>
                    <div class="item-text">
                        <p>text</p>
                    </div>
                </div>
            </div>
            <div class="news-item">
                <div class="item-img">Here is image</div>
                <div class="item-body">
                    <div class="item-title">
                        <h4>Text</h4>
                    </div>
                    <div class="item-text">
                        <p>text</p>
                    </div>
                </div>
            </div>
            <div class="news-item">
                <div class="item-img">Here is image</div>
                <div class="item-body">
                    <div class="item-title">
                        <h4>Text</h4>
                    </div>
                    <div class="item-text">
                        <p>text</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="news-button">
            <a>News button</a>
        </div>
    </section>
</main>
<?php
get_footer();
?>