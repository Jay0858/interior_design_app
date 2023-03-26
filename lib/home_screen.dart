import 'package:flutter/material.dart';
import 'package:interior_design_app/commen_screen/commen_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List popularList = [
    {
      "image": "assets/images/star.png",
      "name": "Popular",
      "isColor": true,
    },
    {
      "image": "assets/images/chair.png",
      "name": "Chair",
      "isColor": false,
    },
    {
      "image": "assets/images/table.png",
      "name": "Table",
      "isColor": false,
    },
    {
      "image": "assets/images/armchair.png",
      "name": "Armchair",
      "isColor": false,
    },
    {
      "image": "assets/images/bed.png",
      "name": "Bed",
      "isColor": false,
    },
    {
      "image": "assets/images/lamp.png",
      "name": "Lamp",
      "isColor": false,
    },
  ];
  List beatifulList = [
    {
      "image": "assets/images/beaone.png",
      "name": "Black Simple Lamp",
      "nametwo": "\$ 12.00",
    },
    {
      "image": "assets/images/beatwo.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/beathree.png",
      "name": "Coffee Chair",
      "nametwo": "\$ 12.00",
    },
    {
      "image": "assets/images/beafour.png",
      "name": "Simple Desk",
      "nametwo": "\$ 12.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/images/search.png",
                    ),
                  ),
                  const Spacer(),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "MAKE HOME",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF909090),
                      ),
                      children: [
                        TextSpan(
                          text: "\nBEAUTIFUL",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF909090),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/cart.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 106,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularList.length,
                  padding: const EdgeInsets.all(15),
                  separatorBuilder: (context, index) => const SizedBox(width: 15),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      for (int i = 0; i < popularList.length; i++) {
                        if (i == index) {
                          popularList[i]['isColor'] = true;
                        } else {
                          popularList[i]['isColor'] = false;
                        }
                      }

                      setState(() {});
                    },
                    child: CommonHomeScreen(
                      image: popularList[index]['image'],
                      text: popularList[index]['name'],
                      isColor: popularList[index]['isColor'],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.vertical,
                  itemCount: beatifulList.length,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            child: Image.asset(
                              beatifulList[index]['image'],
                            ),
                            onTap: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 155, left: 110),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE0E0E0),
                              ),
                              child: Image.asset(
                                height: 15,
                                "assets/images/favbag.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        beatifulList[index]['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF909090),
                        ),
                      ),
                      Text(
                        beatifulList[index]['nametwo'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 260,
                    crossAxisSpacing: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
