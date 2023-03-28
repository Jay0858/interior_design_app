import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                      "Check out",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Shipping address",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF909090),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.border_color_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Bruno Fernandes",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Divider(
                          indent: 2,
                          endIndent: 2,
                          thickness: 1,
                          color: Color(0xFFE0E0E0),
                        ),
                        Text(
                          "25 rue Robert Latouche, Nice, 06200,\nCôte D’azur, France",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF909090),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Payment",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF909090),
                          fontFamily: "Inter",
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.border_color_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 335,
                      padding: const EdgeInsets.symmetric(vertical: 33),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 3,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 15,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              height: 25,
                              "assets/images/mastercard.png",
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "**** **** **** 3947",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF242424),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Delivery method",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF909090),
                          fontFamily: "Inter",
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.border_color_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 335,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          height: 20,
                          "assets/images/dhl.png",
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "Fast (2-3days)",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: 335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Order",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF909090),
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$ 95.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF242424),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF909090),
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$ 5.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF242424),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF909090),
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$ 100.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF242424),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 95),
                    child: const Text(
                      "Submit order",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
