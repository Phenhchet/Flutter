class ListCategory {
  final String title;
  final String image;

  ListCategory({required this.title, required this.image});

  static List<ListCategory> listCategoryView() {
    return [
      ListCategory(
          title: 'Foods',
          image:
              'https://icons-for-free.com/iconfiles/png/512/food+icon-1320184414775447246.png'),
      ListCategory(
          title: 'Snacks',
          image:
              'https://cdn4.iconfinder.com/data/icons/food-and-sweets/512/Food_Sweets_cracker-512.png'),
      ListCategory(
          title: 'Drinks',
          image: 'https://www.pngrepo.com/png/237737/512/drinks.png'),
      ListCategory(
          title: 'Bakery',
          image:
              'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-bakery-icon-for-your-project-png-image_1541423.jpg'),
    ];
  }
}
