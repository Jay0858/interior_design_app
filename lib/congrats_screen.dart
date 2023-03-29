import 'package:flutter/material.dart';
import 'package:interior_app/routes/routes_name.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.only(top: 70),
                child: const Text(
                  "SUCCESS!",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Image.asset(
                height: 255,
                "assets/images/congras.png",
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              textAlign: TextAlign.center,
              "Your order will be delivered soon.\nThank you for choosing our app!",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF909090),
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.ninetyscreen);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 75),
                child: const Text(
                  "Track your orders",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, RoutesName.twentyonescreen);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                child: const Text(
                  "Back to home",
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
      ),
    );
  }
}
