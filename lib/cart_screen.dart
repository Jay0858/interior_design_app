import 'package:flutter/material.dart';
import 'package:interior_design_app/commen_screen/commen_cart_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List CartList = [
    {
      "image": "assets/images/cartone.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/carttwo.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/cartthree.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
    {
      "image": "assets/images/cartfour.png",
      "name": "Minimal Stand",
      "nametwo": "\$ 25.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 90),
                    const Text(
                      "My cart",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 550,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: CartList.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 10,
                      color: Color(0xFFE0E0E0),
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    itemBuilder: (context, index) => CommenCartScreen(
                      image: CartList[index]['image'],
                      text: CartList[index]['name'],
                      texttwo: CartList[index]['nametwo'],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33000002),
                            offset: Offset(1, 1),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: const Text(
                        "Enter your promo code",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF909090),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x33000002),
                                blurRadius: 3,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF808080),
                          fontFamily: "Inter",
                        ),
                      ),
                      Text(
                        "\$ 95.00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 105),
                    child: const Text(
                      "Check out",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
