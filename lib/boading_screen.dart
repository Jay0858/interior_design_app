import 'package:flutter/material.dart';

class BoadingScreen extends StatefulWidget {
  const BoadingScreen({Key? key}) : super(key: key);

  @override
  State<BoadingScreen> createState() => _BoadingScreenState();
}

class _BoadingScreenState extends State<BoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              width: double.infinity,
              "assets/images/boarding.png",
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "MAKE YOUR\nHOME BEAUTIFUL",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: Colors.black,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF909090),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
