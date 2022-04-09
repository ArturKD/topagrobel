<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo wp_title(); ?></title>
    <?php wp_head(); ?>
</head>
<body>
<header class="header">
    <div class="container">
        <div class="header-logo">
            <a href="#" title="#">
                <?php echo get_logo_img(); ?>
            </a>
        </div>
        <nav class="navigation">
            <div class="navigation-row">
                <?php wp_nav_menu([
                    'theme_location' => 'primary',
                    'container' => 'div',
                    'container_class' => 'navigation-columns',
                    'menu_class' => 'navigation-menu',
                    'walker'         => new Topagrobel_walker()
                ]); ?>
                <?php wp_nav_menu([
                    'theme_location' => 'sub_menu-1',
                    'container' => 'div',
                    'container_class' => 'navigation-columns',
                    'menu_class' => 'navigation-menu',
                    'walker'         => new Topagrobel_walker()
                ]); ?>
            </div>
        </nav>
    </div>
    <div class="navigation-button">
        <button class="menu-button">
            <span>Menu</span>
        </button>
    </div>
</header>
