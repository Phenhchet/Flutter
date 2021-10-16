import 'package:flutter/material.dart';

class MostPolularPage extends StatelessWidget {
  const MostPolularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Most Polular',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              // color: Colors.red,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  Positioned(
                    left: 1,
                    bottom: 0,
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.insider.com/5d4203fb36e03c28a1020308?width=700'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
