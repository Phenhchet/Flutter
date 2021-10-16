class ListOffer {
  final String title;
  final String image;
  final String discount;

  ListOffer({required this.title, required this.image, required this.discount});

  static List<ListOffer> listOfferView() {
    return [
      ListOffer(
        title: 'Dotproperty',
        image:
            'https://wanderfost.com/wp-content/uploads/2019/07/well-foods-microbiome-superJumbo.jpg',
        discount: '20',
      ),
      ListOffer(
        title: 'Tripadvisor',
        image:
            'https://s3.eu-west-1.amazonaws.com/images.prod.phoode.com/photos/project/5e7d18cc509cd.jpeg',
        discount: '50',
      ),
      ListOffer(
        title: 'Junk Food',
        image: 'https://scx2.b-cdn.net/gfx/news/hires/2016/howcuttingdo.jpg',
        discount: '30',
      ),
      ListOffer(
        title: 'Financialexpress',
        image: 'https://images.financialexpress.com/2020/09/healthy-eating.jpg',
        discount: '10',
      ),
      ListOffer(
        title: 'Nativefoods',
        image:
            'https://nativefoods.com/wp-content/uploads/2021/06/home-slider-1-1200x800.jpg',
        discount: '50',
      ),
      ListOffer(
        title: 'Fish',
        image:
            'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        discount: '50',
      ),
    ];
  }
}
