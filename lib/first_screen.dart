import 'package:car_mall/secound_screen.dart';
import 'package:car_mall/modelClass.dart';
import 'package:flutter/material.dart';
import 'package:car_mall/styles.dart';

class First_Screen extends StatefulWidget {
  First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  List<ModelClass> modelClass = [
    ModelClass(
      id: '1', 
      title1: 'HURACÁN TECNICA', 
      title2: 'Lamborghini', 
      title3: 'TOP SPEED : 325 km/h', 
      price: '\$ 244,795',
      color: drink1Color,
    ),

    ModelClass(
      id: '2', 
      title1: 'Chiron W16', 
      title2: 'Bugatti', 
      title3: 'TOP SPEED : 420 km/h', 
      price: '\$ 1.9 Million',
      color: drink3Color,
    ),

    ModelClass(
      id: '3', 
      title1: '458 italia 2020', 
      title2: 'Ferrari', 
      title3: 'TOP SPEED : 325 km/h', 
      price: '\$ 239,340',
      color: drink2Color,
    ),
  ];

  List<ImageModel> imageModel = [
    ImageModel(
      image: 'assets/Lamborghini.png',
    ),
    ImageModel(
      image: 'assets/Bugatti.png',
    ),

    ImageModel(
      image: 'assets/Ferrari.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                      ),
                      const Text(
                        'Car Mall',
                        style: titleBlackStyle,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Row(
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          ),
                          color: buttonColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15, 
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                fixedSize: Size(0, 0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => Secound_Screen(),
                                  ),
                                );
                              }, 
                              child: Text(
                                'All',
                                style: cat1Style,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            color: drink4Color,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30, 
                                vertical: 10,
                              ),
                              child: Text(
                                'Lamborghini',
                                style: catStyle,
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            color: drink4Color,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30, 
                                vertical: 10,
                              ),
                              child: Text(
                                'Bugatti',
                                style: catStyle,
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            color: drink4Color,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30, 
                                vertical: 10,
                              ),
                              child: Text(
                                'Ferrari',
                                style: catStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: modelClass.length,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Card(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            color: modelClass[index].color,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            elevation: 10,
                            child: SizedBox(
                              height: 218,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        modelClass[index].title1,
                                        style: title1Style,
                                      ),
                                      Text(
                                        modelClass[index].title2,
                                        style: title2Style,
                                      ),
                                      Text(
                                        modelClass[index].title3,
                                        style: title1Style,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        modelClass[index].price,
                                        style: title2Style,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -60,
                          bottom: 20,
                          child: Image.asset(
                            imageModel[index].image,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
