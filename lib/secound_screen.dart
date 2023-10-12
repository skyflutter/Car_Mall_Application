import 'package:flutter/material.dart';
import 'package:car_mall/styles.dart';

class Secound_Screen extends StatelessWidget {
  const Secound_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: drink1Color,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: drink1Color,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, 
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white38,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 8,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Car Mall',
                  style: title2Style,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height-200,
                    child: Image.asset(
                      'assets/Lamborghini1.png',
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HURACÁN TECNICA',
                          style: title1Style,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lamborghini',
                          style: title2Style,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'TOP SPEED : 325 km/h',
                          style: title1Style,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '\$ 244,795',
                          style: title2Style1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 322,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Information',
                            style: title2Style3,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'The Huracán\'s name (huracán being the Spanish word for hurricane) is inspired by a Spanish fighting bull. Historic Spanish fighting bulls have traditionally provided the names of most Lamborghini car models. Huracán was a bull known for its courage that fought in 1879.',
                            style: descStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 90,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Color :',
                              style: title2Style2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Green',
                              style: cat1Style,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Power',
                              style: title2Style2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '640 hp',
                              style: cat1Style,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Drive',
                              style: title2Style2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'AWD',
                              style: cat1Style,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 18,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        backgroundColor: buttonColor,
                      ),
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ), 
                      label: Text(
                        'Add To Bag',
                        style: cat1Style,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
