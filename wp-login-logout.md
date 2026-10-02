# Adds login and logout to main menu

```
add_filter('wp_nav_menu_items', function (string $items, $args): string {

    if (is_user_logged_in()) {
        $url   = wp_logout_url(home_url('/'));
        $label = 'Logout';
    } else {
        $url   = wp_login_url(home_url('/'));
        $label = 'Login';
    }

    $items .= sprintf(
        '<li class="menu-item menu-item-account-login-logout">
            <a href="%s">%s</a>
        </li>',
        esc_url($url),
        esc_html($label)
    );

    return $items;

}, 10, 2);
```
