import 'package:flutter/material.dart';
import 'package:food_delivery/models/category.dart';
import 'package:food_delivery/models/most_popular.dart';
import 'package:food_delivery/models/offer.dart';

import 'most_pulolar.dart';

class BodyPage extends StatelessWidget {
  BodyPage({Key? key}) : super(key: key);
  final List<ListOffer> _list = ListOffer.listOfferView();
  final List<ListCategory> _category = ListCategory.listCategoryView();
  final List<ListPopular> _popular = ListPopular.listPopularView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: [
        Container(
          height: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                  color: Colors.grey.withOpacity(0.3))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What would you like to eat?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: Offset(0, 3))
                              ]),
                          child: TextField(
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.blue,
                              ),
                              hintText: 'Search Food',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                    color: Colors.grey.withOpacity(0.5))
                              ]),
                          child: IconButton(
                            icon: Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Offer',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  // color: Colors.red,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _list.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 150,
                          width: 100,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  '${_list[index].image}'),
                                              fit: BoxFit.cover),
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 1,
                                                blurRadius: 5,
                                                offset: Offset(0, 3),
                                                color: Colors.grey
                                                    .withOpacity(0.3))
                                          ]),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 230,
                                      width: 150,
                                      // color: Colors.white.withOpacity(0.5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.verified,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                          Text(
                                            '${_list[index].discount}% OFF',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${_list[index].title}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[900]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
              Container(
                height: 60,
                // color: Colors.red,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[100],
                                  border: Border.all(color: Colors.red)),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  '${_category[index].title}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green[800]),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -7,
                              bottom: 4,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            '${_category[index].image}'),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3),
                                          color: Colors.grey.withOpacity(0.5))
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              // Most populare Page
              // MostPolularPage(),
              // Container(

              //   child: ListView.builder(itemBuilder: (context,index){
              //     return Container(

              //     );
              //   }),
              // )
              Row(
                children: [
                  Text(
                    'Most Popular',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[900]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: _popular.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      height: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            // color: Colors.green,
                            child: Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              '${_popular[index].image}'),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3),
                                            color: Colors.grey.withOpacity(0.3))
                                      ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${_popular[index].title}',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text('${_popular[index].country}'),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text('${_popular[index].recomment}'),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 15,
                                              ),
                                              Icon(Icons.star, size: 15),
                                              Icon(Icons.star, size: 15),
                                              Icon(Icons.star, size: 15),
                                              Icon(Icons.star, size: 15),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Container(
                                            width: 80,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 5,
                                                      spreadRadius: 1,
                                                      offset: Offset(0, 3),
                                                      color: Colors.grey
                                                          .withOpacity(0.3))
                                                ]),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                '${_popular[index].price}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ],
    );
  }
}
