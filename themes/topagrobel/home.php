<?php
/* Template Name: MainPage */

get_header(); ?>
    <main class="main">
        <section class="carousel">
            <?php echo get_field('top_slider'); ?>
            <!--<div class="sliders">
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header1.jpg");'></div>
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header2.jpg");'></div>
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header3.jpg");'></div>
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header4.jpg");'></div>
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header5.jpg");'></div>
                <div class="img" style='background-image: url("<?php /*echo get_template_directory_uri(); */?>/assets/img/background-header6.jpg");'></div>
            </div>
            <div class="overlays">
                <div class="bar">
                    <h2>
                        0 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
                <div class="bar">
                    <h2>
                        1 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
                <div class="bar">
                    <h2>
                        2 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
                <div class="bar">
                    <h2>
                        3 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
                <div class="bar">
                    <h2>
                        4 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
                <div class="bar">
                    <h2>
                        5 Super cool and cheap building company headed by super cool person
                        <strong>Oleg</strong>
                        who is my friend and moreover my last coworker.
                    </h2>
                </div>
            </div>
            <div class="sublays">
                <div class="sub">
                    <p> 0 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
                <div class="sub">
                    <p> 1 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
                <div class="sub">
                    <p> 2 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
                <div class="sub">
                    <p> 3 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
                <div class="sub">
                    <p> 4 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
                <div class="sub">
                    <p> 5 Topagrobel specializes in so many product, you can't even imagine numbers of projects they done, in construction development design, maintaining and more.</p>
                </div>
            </div>
            <div class="carousel-buutons">
                <button class="carousel-button">0 Learn more about Button with some text</button>
                <button class="carousel-button">1 Learn more about Button with some text</button>
                <button class="carousel-button">2 Learn more about Button with some text</button>
                <button class="carousel-button">3 Learn more about Button with some text</button>
                <button class="carousel-button">4 Learn more about Button with some text</button>
                <button class="carousel-button">5 Learn more about Button with some text</button>
            </div>
            <div class="nav-links-container">

                <ul class="nav-links">
                    <li class="nav-link">Some#0</li>
                    <li class="nav-link">Some#1</li>
                    <li class="nav-link">Some#2</li>
                    <li class="nav-link">Some#3</li>
                    <li class="nav-link">Some#4</li>
                    <li class="nav-link">Some#5</li>
                </ul>
            </div>-->
        </section>
        <section class="main-section">
            <div class="white-blockx">
                <div class="row">
                    <div class="text">
                        <?php echo  get_field('second_block_main_page'); ?>
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
            <div class="dark-carousel active">
                <div>0 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>1 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>2 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>3 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>4 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>5 Here is image carousel</div>
            </div>
            <div class="dark-carousel">
                <div>6 Here is image carousel</div>
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