class Menu {
  final String imageMenu;
  final String nameMenu;
  final String titleMenu;
  final String priceMenu;

  Menu(
    this.imageMenu,
    this.nameMenu,
    this.titleMenu,
    this.priceMenu,
  );

  static var menus = [
    Menu(
      'assets/images/greennoddle.png',
      'Green Noddle',
      'Noddle Home',
      '฿15',
    ),
    Menu(
      'assets/images/salad.png',
      'Fruit Salad',
      'Wijie Resto',
      '฿5',
    ),
    Menu(
      'assets/images/pancake.png',
      'Herbal Pancake',
      'Warung Herbal',
      '฿7',
    ),
  ];
}
