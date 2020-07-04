class BottomMenu {
    const BottomMenu(this.id, this.title, this.normalImage, this.activeImage);
    final int     id;
    final String title;
    final String normalImage;
    final String activeImage;
}

const List<BottomMenu> BottomMenus = <BottomMenu>[
    BottomMenu(0, 'Explorar', 'assets/images/explorar_icon.png', 'assets/images/explorar_red_icon.png'),
    BottomMenu(1, 'Zonas', 'assets/images/zonas_icon.png', 'assets/images/zonas_red_icon.png'),
    BottomMenu(2, 'Expo', 'assets/images/expo_icon.png', 'assets/images/expo_red_icon.png'),
    BottomMenu(3, 'Rutas', 'assets/images/rutas_icon.png', 'assets/images/rutas_red_icon.png'),
    BottomMenu(4, 'Cuenta', 'assets/images/cuenta_icon.png', 'assets/images/cuenta_red_icon.png'),
];