import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        height: 450,
                        "assets/images/productimage.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 13),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x33000002),
                                  blurRadius: 3,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 80),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x33000002),
                                  blurRadius: 3,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  height: 30,
                                  "assets/images/roundone.png",
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  height: 35,
                                  "assets/images/roundtwo.png",
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  height: 35,
                                  "assets/images/roundthree.png",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Minimal Stand",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "\$ 50",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE0E0E0),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "01",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Inter",
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFE0E0E0),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Color(0xFFF2C94C),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "(50 reviews)",
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE0E0E0),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                                color: Color(0xFF909090),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.black,
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                              decoration: const BoxDecoration(),
                              child: const Text(
                                "Add to cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
