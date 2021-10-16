class ListPopular {
  final String title;
  final String country;
  final String recomment;
  final String rate;
  final bool foverite;
  final String image;
  final double price;

  ListPopular(
      {required this.title,
      required this.country,
      required this.recomment,
      required this.rate,
      required this.foverite,
      required this.image,
      required this.price});

  static List<ListPopular> listPopularView() {
    return [
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://images.medicinenet.com/images/article/main_image/type-1-diabetes-diet.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://www.pritikin.com/wp/wp-content/uploads/2014/06/weight-loss-meal-plan.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://www.inshape.com/media/post/cache/755/w800_h450_2021feb-the-pritikin-program.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://pritikinfoods.com/wp-content/uploads/2019/09/Bison-Chili-20003-Pritikin-0097p-1-scaled-960x720.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://pritikinfoods.com/wp-content/uploads/2019/09/Fusilli-basil-menu.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image:
            'https://pritikinfoods.com/wp-content/uploads/2019/09/Shepherds-Pie-20003-Pritikin-0161p-scaled-960x720.jpg',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
      ListPopular(
        title: 'Medicinenet',
        image: 'https://miro.medium.com/max/10368/0*yksaDrascqNpodjf',
        country: 'Cambodia',
        recomment: 'Yummy',
        rate: '5',
        price: 3,
        foverite: true,
      ),
    ];
  }
}
