import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/body_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0, 3)),
            ],
          ),
          child: Icon(
            Icons.menu,
            color: Colors.blue[900],
          ),
        ),
        title: Text(
          'Mummy\'s Food',
          style: TextStyle(color: Colors.blue[800]),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.all(9),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-MPERJogHDwk/XOtBSslix6I/AAAAAAAAALc/R-p7KNm9lOUCCTEQSalvD5k-im03CnZvQCLcBGAs/s1600/61376338_2367029796688087_349062360196972544_n.jpg'),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 3))
                ]),
          ),
        ],
      ),
      body: BodyPage(),
    );
  }
}
